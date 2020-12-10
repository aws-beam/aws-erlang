%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudFront
%%
%% This is the Amazon CloudFront API Reference.
%%
%% This guide is for developers who need detailed information about
%% CloudFront API actions, data types, and errors. For detailed information
%% about CloudFront features, see the Amazon CloudFront Developer Guide.
-module(aws_cloudfront).

-export([create_cache_policy/2,
         create_cache_policy/3,
         create_cloud_front_origin_access_identity/2,
         create_cloud_front_origin_access_identity/3,
         create_distribution/2,
         create_distribution/3,
         create_distribution_with_tags/2,
         create_distribution_with_tags/3,
         create_field_level_encryption_config/2,
         create_field_level_encryption_config/3,
         create_field_level_encryption_profile/2,
         create_field_level_encryption_profile/3,
         create_invalidation/3,
         create_invalidation/4,
         create_key_group/2,
         create_key_group/3,
         create_monitoring_subscription/3,
         create_monitoring_subscription/4,
         create_origin_request_policy/2,
         create_origin_request_policy/3,
         create_public_key/2,
         create_public_key/3,
         create_realtime_log_config/2,
         create_realtime_log_config/3,
         create_streaming_distribution/2,
         create_streaming_distribution/3,
         create_streaming_distribution_with_tags/2,
         create_streaming_distribution_with_tags/3,
         delete_cache_policy/3,
         delete_cache_policy/4,
         delete_cloud_front_origin_access_identity/3,
         delete_cloud_front_origin_access_identity/4,
         delete_distribution/3,
         delete_distribution/4,
         delete_field_level_encryption_config/3,
         delete_field_level_encryption_config/4,
         delete_field_level_encryption_profile/3,
         delete_field_level_encryption_profile/4,
         delete_key_group/3,
         delete_key_group/4,
         delete_monitoring_subscription/3,
         delete_monitoring_subscription/4,
         delete_origin_request_policy/3,
         delete_origin_request_policy/4,
         delete_public_key/3,
         delete_public_key/4,
         delete_realtime_log_config/2,
         delete_realtime_log_config/3,
         delete_streaming_distribution/3,
         delete_streaming_distribution/4,
         get_cache_policy/2,
         get_cache_policy/3,
         get_cache_policy_config/2,
         get_cache_policy_config/3,
         get_cloud_front_origin_access_identity/2,
         get_cloud_front_origin_access_identity/3,
         get_cloud_front_origin_access_identity_config/2,
         get_cloud_front_origin_access_identity_config/3,
         get_distribution/2,
         get_distribution/3,
         get_distribution_config/2,
         get_distribution_config/3,
         get_field_level_encryption/2,
         get_field_level_encryption/3,
         get_field_level_encryption_config/2,
         get_field_level_encryption_config/3,
         get_field_level_encryption_profile/2,
         get_field_level_encryption_profile/3,
         get_field_level_encryption_profile_config/2,
         get_field_level_encryption_profile_config/3,
         get_invalidation/3,
         get_invalidation/4,
         get_key_group/2,
         get_key_group/3,
         get_key_group_config/2,
         get_key_group_config/3,
         get_monitoring_subscription/2,
         get_monitoring_subscription/3,
         get_origin_request_policy/2,
         get_origin_request_policy/3,
         get_origin_request_policy_config/2,
         get_origin_request_policy_config/3,
         get_public_key/2,
         get_public_key/3,
         get_public_key_config/2,
         get_public_key_config/3,
         get_realtime_log_config/2,
         get_realtime_log_config/3,
         get_streaming_distribution/2,
         get_streaming_distribution/3,
         get_streaming_distribution_config/2,
         get_streaming_distribution_config/3,
         list_cache_policies/4,
         list_cache_policies/5,
         list_cloud_front_origin_access_identities/3,
         list_cloud_front_origin_access_identities/4,
         list_distributions/3,
         list_distributions/4,
         list_distributions_by_cache_policy_id/4,
         list_distributions_by_cache_policy_id/5,
         list_distributions_by_key_group/4,
         list_distributions_by_key_group/5,
         list_distributions_by_origin_request_policy_id/4,
         list_distributions_by_origin_request_policy_id/5,
         list_distributions_by_realtime_log_config/2,
         list_distributions_by_realtime_log_config/3,
         list_distributions_by_web_acl_id/4,
         list_distributions_by_web_acl_id/5,
         list_field_level_encryption_configs/3,
         list_field_level_encryption_configs/4,
         list_field_level_encryption_profiles/3,
         list_field_level_encryption_profiles/4,
         list_invalidations/4,
         list_invalidations/5,
         list_key_groups/3,
         list_key_groups/4,
         list_origin_request_policies/4,
         list_origin_request_policies/5,
         list_public_keys/3,
         list_public_keys/4,
         list_realtime_log_configs/3,
         list_realtime_log_configs/4,
         list_streaming_distributions/3,
         list_streaming_distributions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_cache_policy/3,
         update_cache_policy/4,
         update_cloud_front_origin_access_identity/3,
         update_cloud_front_origin_access_identity/4,
         update_distribution/3,
         update_distribution/4,
         update_field_level_encryption_config/3,
         update_field_level_encryption_config/4,
         update_field_level_encryption_profile/3,
         update_field_level_encryption_profile/4,
         update_key_group/3,
         update_key_group/4,
         update_origin_request_policy/3,
         update_origin_request_policy/4,
         update_public_key/3,
         update_public_key/4,
         update_realtime_log_config/2,
         update_realtime_log_config/3,
         update_streaming_distribution/3,
         update_streaming_distribution/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a cache policy.
%%
%% After you create a cache policy, you can attach it to one or more cache
%% behaviors. When it’s attached to a cache behavior, the cache policy
%% determines the following:
%%
%% <ul> <li> The values that CloudFront includes in the cache key. These
%% values can include HTTP headers, cookies, and URL query strings.
%% CloudFront uses the cache key to find an object in its cache that it can
%% return to the viewer.
%%
%% </li> <li> The default, minimum, and maximum time to live (TTL) values
%% that you want objects to stay in the CloudFront cache.
%%
%% </li> </ul> The headers, cookies, and query strings that are included in
%% the cache key are automatically included in requests that CloudFront sends
%% to the origin. CloudFront sends a request when it can’t find an object in
%% its cache that matches the request’s cache key. If you want to send values
%% to the origin but not include them in the cache key, use
%% `OriginRequestPolicy'.
%%
%% For more information about cache policies, see Controlling the cache key
%% in the Amazon CloudFront Developer Guide.
create_cache_policy(Client, Input) ->
    create_cache_policy(Client, Input, []).
create_cache_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Creates a new origin access identity.
%%
%% If you're using Amazon S3 for your origin, you can use an origin access
%% identity to require users to access your content using a CloudFront URL
%% instead of the Amazon S3 URL. For more information about how to use origin
%% access identities, see Serving Private Content through CloudFront in the
%% Amazon CloudFront Developer Guide.
create_cloud_front_origin_access_identity(Client, Input) ->
    create_cloud_front_origin_access_identity(Client, Input, []).
create_cloud_front_origin_access_identity(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Creates a new web distribution.
%%
%% You create a CloudFront distribution to tell CloudFront where you want
%% content to be delivered from, and the details about how to track and
%% manage content delivery. Send a `POST' request to the `/CloudFront API
%% version/distribution'/`distribution ID' resource.
%%
%% When you update a distribution, there are more required fields than when
%% you create a distribution. When you update your distribution by using
%% UpdateDistribution, follow the steps included in the documentation to get
%% the current configuration and then make your updates. This helps to make
%% sure that you include all of the required fields. To view a summary, see
%% Required Fields for Create Distribution and Update Distribution in the
%% Amazon CloudFront Developer Guide.
create_distribution(Client, Input) ->
    create_distribution(Client, Input, []).
create_distribution(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Create a new distribution with tags.
create_distribution_with_tags(Client, Input) ->
    create_distribution_with_tags(Client, Input, []).
create_distribution_with_tags(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distribution?WithTags"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Create a new field-level encryption configuration.
create_field_level_encryption_config(Client, Input) ->
    create_field_level_encryption_config(Client, Input, []).
create_field_level_encryption_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Create a field-level encryption profile.
create_field_level_encryption_profile(Client, Input) ->
    create_field_level_encryption_profile(Client, Input, []).
create_field_level_encryption_profile(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption-profile"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Create a new invalidation.
create_invalidation(Client, DistributionId, Input) ->
    create_invalidation(Client, DistributionId, Input, []).
create_invalidation(Client, DistributionId, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
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

%% @doc Creates a key group that you can use with CloudFront signed URLs and
%% signed cookies.
%%
%% To create a key group, you must specify at least one public key for the
%% key group. After you create a key group, you can reference it from one or
%% more cache behaviors. When you reference a key group in a cache behavior,
%% CloudFront requires signed URLs or signed cookies for all requests that
%% match the cache behavior. The URLs or cookies must be signed with a
%% private key whose corresponding public key is in the key group. The signed
%% URL or cookie contains information about which public key CloudFront
%% should use to verify the signature. For more information, see Serving
%% private content in the Amazon CloudFront Developer Guide.
create_key_group(Client, Input) ->
    create_key_group(Client, Input, []).
create_key_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/key-group"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Enables additional CloudWatch metrics for the specified CloudFront
%% distribution.
%%
%% The additional metrics incur an additional cost.
%%
%% For more information, see Viewing additional CloudFront distribution
%% metrics in the Amazon CloudFront Developer Guide.
create_monitoring_subscription(Client, DistributionId, Input) ->
    create_monitoring_subscription(Client, DistributionId, Input, []).
create_monitoring_subscription(Client, DistributionId, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an origin request policy.
%%
%% After you create an origin request policy, you can attach it to one or
%% more cache behaviors. When it’s attached to a cache behavior, the origin
%% request policy determines the values that CloudFront includes in requests
%% that it sends to the origin. Each request that CloudFront sends to the
%% origin includes the following:
%%
%% <ul> <li> The request body and the URL path (without the domain name) from
%% the viewer request.
%%
%% </li> <li> The headers that CloudFront automatically includes in every
%% origin request, including `Host', `User-Agent', and `X-Amz-Cf-Id'.
%%
%% </li> <li> All HTTP headers, cookies, and URL query strings that are
%% specified in the cache policy or the origin request policy. These can
%% include items from the viewer request and, in the case of headers,
%% additional ones that are added by CloudFront.
%%
%% </li> </ul> CloudFront sends a request when it can’t find a valid object
%% in its cache that matches the request. If you want to send values to the
%% origin and also include them in the cache key, use `CachePolicy'.
%%
%% For more information about origin request policies, see Controlling origin
%% requests in the Amazon CloudFront Developer Guide.
create_origin_request_policy(Client, Input) ->
    create_origin_request_policy(Client, Input, []).
create_origin_request_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Uploads a public key to CloudFront that you can use with signed URLs
%% and signed cookies, or with field-level encryption.
create_public_key(Client, Input) ->
    create_public_key(Client, Input, []).
create_public_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Creates a real-time log configuration.
%%
%% After you create a real-time log configuration, you can attach it to one
%% or more cache behaviors to send real-time log data to the specified Amazon
%% Kinesis data stream.
%%
%% For more information about real-time log configurations, see Real-time
%% logs in the Amazon CloudFront Developer Guide.
create_realtime_log_config(Client, Input) ->
    create_realtime_log_config(Client, Input, []).
create_realtime_log_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/realtime-log-config"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new RTMP distribution.
%%
%% An RTMP distribution is similar to a web distribution, but an RTMP
%% distribution streams media files using the Adobe Real-Time Messaging
%% Protocol (RTMP) instead of serving files using HTTP.
%%
%% To create a new distribution, submit a `POST' request to the CloudFront
%% API version/distribution resource. The request body must include a
%% document with a StreamingDistributionConfig element. The response echoes
%% the `StreamingDistributionConfig' element and returns other information
%% about the RTMP distribution.
%%
%% To get the status of your request, use the GET StreamingDistribution API
%% action. When the value of `Enabled' is `true' and the value of `Status' is
%% `Deployed', your distribution is ready. A distribution usually deploys in
%% less than 15 minutes.
%%
%% For more information about web distributions, see Working with RTMP
%% Distributions in the Amazon CloudFront Developer Guide.
%%
%% Beginning with the 2012-05-05 version of the CloudFront API, we made
%% substantial changes to the format of the XML document that you include in
%% the request body when you create or update a web distribution or an RTMP
%% distribution, and when you invalidate objects. With previous versions of
%% the API, we discovered that it was too easy to accidentally delete one or
%% more values for an element that accepts multiple values, for example,
%% CNAMEs and trusted signers. Our changes for the 2012-05-05 release are
%% intended to prevent these accidental deletions and to notify you when
%% there's a mismatch between the number of values you say you're specifying
%% in the `Quantity' element and the number of values specified.
create_streaming_distribution(Client, Input) ->
    create_streaming_distribution(Client, Input, []).
create_streaming_distribution(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Create a new streaming distribution with tags.
create_streaming_distribution_with_tags(Client, Input) ->
    create_streaming_distribution_with_tags(Client, Input, []).
create_streaming_distribution_with_tags(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution?WithTags"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>},
            {<<"Location">>, <<"Location">>}
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

%% @doc Deletes a cache policy.
%%
%% You cannot delete a cache policy if it’s attached to a cache behavior.
%% First update your distributions to remove the cache policy from all cache
%% behaviors, then delete the cache policy.
%%
%% To delete a cache policy, you must provide the policy’s identifier and
%% version. To get these values, you can use `ListCachePolicies' or
%% `GetCachePolicy'.
delete_cache_policy(Client, Id, Input) ->
    delete_cache_policy(Client, Id, Input, []).
delete_cache_policy(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an origin access identity.
delete_cloud_front_origin_access_identity(Client, Id, Input) ->
    delete_cloud_front_origin_access_identity(Client, Id, Input, []).
delete_cloud_front_origin_access_identity(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a distribution.
delete_distribution(Client, Id, Input) ->
    delete_distribution(Client, Id, Input, []).
delete_distribution(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption configuration.
delete_field_level_encryption_config(Client, Id, Input) ->
    delete_field_level_encryption_config(Client, Id, Input, []).
delete_field_level_encryption_config(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption profile.
delete_field_level_encryption_profile(Client, Id, Input) ->
    delete_field_level_encryption_profile(Client, Id, Input, []).
delete_field_level_encryption_profile(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a key group.
%%
%% You cannot delete a key group that is referenced in a cache behavior.
%% First update your distributions to remove the key group from all cache
%% behaviors, then delete the key group.
%%
%% To delete a key group, you must provide the key group’s identifier and
%% version. To get these values, use `ListKeyGroups' followed by
%% `GetKeyGroup' or `GetKeyGroupConfig'.
delete_key_group(Client, Id, Input) ->
    delete_key_group(Client, Id, Input, []).
delete_key_group(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables additional CloudWatch metrics for the specified CloudFront
%% distribution.
delete_monitoring_subscription(Client, DistributionId, Input) ->
    delete_monitoring_subscription(Client, DistributionId, Input, []).
delete_monitoring_subscription(Client, DistributionId, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an origin request policy.
%%
%% You cannot delete an origin request policy if it’s attached to any cache
%% behaviors. First update your distributions to remove the origin request
%% policy from all cache behaviors, then delete the origin request policy.
%%
%% To delete an origin request policy, you must provide the policy’s
%% identifier and version. To get the identifier, you can use
%% `ListOriginRequestPolicies' or `GetOriginRequestPolicy'.
delete_origin_request_policy(Client, Id, Input) ->
    delete_origin_request_policy(Client, Id, Input, []).
delete_origin_request_policy(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a public key you previously added to CloudFront.
delete_public_key(Client, Id, Input) ->
    delete_public_key(Client, Id, Input, []).
delete_public_key(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a real-time log configuration.
%%
%% You cannot delete a real-time log configuration if it’s attached to a
%% cache behavior. First update your distributions to remove the real-time
%% log configuration from all cache behaviors, then delete the real-time log
%% configuration.
%%
%% To delete a real-time log configuration, you can provide the
%% configuration’s name or its Amazon Resource Name (ARN). You must provide
%% at least one. If you provide both, CloudFront uses the name to identify
%% the real-time log configuration to delete.
delete_realtime_log_config(Client, Input) ->
    delete_realtime_log_config(Client, Input, []).
delete_realtime_log_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/delete-realtime-log-config/"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a streaming distribution.
%%
%% To delete an RTMP distribution using the CloudFront API, perform the
%% following steps.
%%
%% To delete an RTMP distribution using the CloudFront API:
%%
%% <ol> <li> Disable the RTMP distribution.
%%
%% </li> <li> Submit a `GET Streaming Distribution Config' request to get the
%% current configuration and the `Etag' header for the distribution.
%%
%% </li> <li> Update the XML document that was returned in the response to
%% your `GET Streaming Distribution Config' request to change the value of
%% `Enabled' to `false'.
%%
%% </li> <li> Submit a `PUT Streaming Distribution Config' request to update
%% the configuration for your distribution. In the request body, include the
%% XML document that you updated in Step 3. Then set the value of the HTTP
%% `If-Match' header to the value of the `ETag' header that CloudFront
%% returned when you submitted the `GET Streaming Distribution Config'
%% request in Step 2.
%%
%% </li> <li> Review the response to the `PUT Streaming Distribution Config'
%% request to confirm that the distribution was successfully disabled.
%%
%% </li> <li> Submit a `GET Streaming Distribution Config' request to confirm
%% that your changes have propagated. When propagation is complete, the value
%% of `Status' is `Deployed'.
%%
%% </li> <li> Submit a `DELETE Streaming Distribution' request. Set the value
%% of the HTTP `If-Match' header to the value of the `ETag' header that
%% CloudFront returned when you submitted the `GET Streaming Distribution
%% Config' request in Step 2.
%%
%% </li> <li> Review the response to your `DELETE Streaming Distribution'
%% request to confirm that the distribution was successfully deleted.
%%
%% </li> </ol> For information about deleting a distribution using the
%% CloudFront console, see Deleting a Distribution in the Amazon CloudFront
%% Developer Guide.
delete_streaming_distribution(Client, Id, Input) ->
    delete_streaming_distribution(Client, Id, Input, []).
delete_streaming_distribution(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a cache policy, including the following metadata:
%%
%% <ul> <li> The policy’s identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get a cache policy, you must provide the policy’s
%% identifier. If the cache policy is attached to a distribution’s cache
%% behavior, you can get the policy’s identifier using `ListDistributions' or
%% `GetDistribution'. If the cache policy is not attached to a cache
%% behavior, you can get the identifier using `ListCachePolicies'.
get_cache_policy(Client, Id)
  when is_map(Client) ->
    get_cache_policy(Client, Id, []).
get_cache_policy(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a cache policy configuration.
%%
%% To get a cache policy configuration, you must provide the policy’s
%% identifier. If the cache policy is attached to a distribution’s cache
%% behavior, you can get the policy’s identifier using `ListDistributions' or
%% `GetDistribution'. If the cache policy is not attached to a cache
%% behavior, you can get the identifier using `ListCachePolicies'.
get_cache_policy_config(Client, Id)
  when is_map(Client) ->
    get_cache_policy_config(Client, Id, []).
get_cache_policy_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the information about an origin access identity.
get_cloud_front_origin_access_identity(Client, Id)
  when is_map(Client) ->
    get_cloud_front_origin_access_identity(Client, Id, []).
get_cloud_front_origin_access_identity(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the configuration information about an origin access identity.
get_cloud_front_origin_access_identity_config(Client, Id)
  when is_map(Client) ->
    get_cloud_front_origin_access_identity_config(Client, Id, []).
get_cloud_front_origin_access_identity_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the information about a distribution.
get_distribution(Client, Id)
  when is_map(Client) ->
    get_distribution(Client, Id, []).
get_distribution(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the configuration information about a distribution.
get_distribution_config(Client, Id)
  when is_map(Client) ->
    get_distribution_config(Client, Id, []).
get_distribution_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the field-level encryption configuration information.
get_field_level_encryption(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption(Client, Id, []).
get_field_level_encryption(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the field-level encryption configuration information.
get_field_level_encryption_config(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_config(Client, Id, []).
get_field_level_encryption_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the field-level encryption profile information.
get_field_level_encryption_profile(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_profile(Client, Id, []).
get_field_level_encryption_profile(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the field-level encryption profile configuration information.
get_field_level_encryption_profile_config(Client, Id)
  when is_map(Client) ->
    get_field_level_encryption_profile_config(Client, Id, []).
get_field_level_encryption_profile_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the information about an invalidation.
get_invalidation(Client, DistributionId, Id)
  when is_map(Client) ->
    get_invalidation(Client, DistributionId, Id, []).
get_invalidation(Client, DistributionId, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a key group, including the date and time when the key group was
%% last modified.
%%
%% To get a key group, you must provide the key group’s identifier. If the
%% key group is referenced in a distribution’s cache behavior, you can get
%% the key group’s identifier using `ListDistributions' or `GetDistribution'.
%% If the key group is not referenced in a cache behavior, you can get the
%% identifier using `ListKeyGroups'.
get_key_group(Client, Id)
  when is_map(Client) ->
    get_key_group(Client, Id, []).
get_key_group(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a key group configuration.
%%
%% To get a key group configuration, you must provide the key group’s
%% identifier. If the key group is referenced in a distribution’s cache
%% behavior, you can get the key group’s identifier using `ListDistributions'
%% or `GetDistribution'. If the key group is not referenced in a cache
%% behavior, you can get the identifier using `ListKeyGroups'.
get_key_group_config(Client, Id)
  when is_map(Client) ->
    get_key_group_config(Client, Id, []).
get_key_group_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets information about whether additional CloudWatch metrics are
%% enabled for the specified CloudFront distribution.
get_monitoring_subscription(Client, DistributionId)
  when is_map(Client) ->
    get_monitoring_subscription(Client, DistributionId, []).
get_monitoring_subscription(Client, DistributionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an origin request policy, including the following metadata:
%%
%% <ul> <li> The policy’s identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get an origin request policy, you must provide the policy’s
%% identifier. If the origin request policy is attached to a distribution’s
%% cache behavior, you can get the policy’s identifier using
%% `ListDistributions' or `GetDistribution'. If the origin request policy is
%% not attached to a cache behavior, you can get the identifier using
%% `ListOriginRequestPolicies'.
get_origin_request_policy(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy(Client, Id, []).
get_origin_request_policy(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets an origin request policy configuration.
%%
%% To get an origin request policy configuration, you must provide the
%% policy’s identifier. If the origin request policy is attached to a
%% distribution’s cache behavior, you can get the policy’s identifier using
%% `ListDistributions' or `GetDistribution'. If the origin request policy is
%% not attached to a cache behavior, you can get the identifier using
%% `ListOriginRequestPolicies'.
get_origin_request_policy_config(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy_config(Client, Id, []).
get_origin_request_policy_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a public key.
get_public_key(Client, Id)
  when is_map(Client) ->
    get_public_key(Client, Id, []).
get_public_key(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a public key configuration.
get_public_key_config(Client, Id)
  when is_map(Client) ->
    get_public_key_config(Client, Id, []).
get_public_key_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a real-time log configuration.
%%
%% To get a real-time log configuration, you can provide the configuration’s
%% name or its Amazon Resource Name (ARN). You must provide at least one. If
%% you provide both, CloudFront uses the name to identify the real-time log
%% configuration to get.
get_realtime_log_config(Client, Input) ->
    get_realtime_log_config(Client, Input, []).
get_realtime_log_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/get-realtime-log-config/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about a specified RTMP distribution, including the
%% distribution configuration.
get_streaming_distribution(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution(Client, Id, []).
get_streaming_distribution(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Get the configuration information about a streaming distribution.
get_streaming_distribution_config(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution_config(Client, Id, []).
get_streaming_distribution_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Gets a list of cache policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by AWS, or only the custom policies created in your AWS account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_cache_policies(Client, Marker, MaxItems, Type)
  when is_map(Client) ->
    list_cache_policies(Client, Marker, MaxItems, Type, []).
list_cache_policies(Client, Marker, MaxItems, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems},
        {<<"Type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists origin access identities.
list_cloud_front_origin_access_identities(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_cloud_front_origin_access_identities(Client, Marker, MaxItems, []).
list_cloud_front_origin_access_identities(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List CloudFront distributions.
list_distributions(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_distributions(Client, Marker, MaxItems, []).
list_distributions(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that’s associated with the specified cache policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_distributions_by_cache_policy_id(Client, CachePolicyId, Marker, MaxItems)
  when is_map(Client) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, Marker, MaxItems, []).
list_distributions_by_cache_policy_id(Client, CachePolicyId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByCachePolicyId/", aws_util:encode_uri(CachePolicyId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that references the specified key group.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_distributions_by_key_group(Client, KeyGroupId, Marker, MaxItems)
  when is_map(Client) ->
    list_distributions_by_key_group(Client, KeyGroupId, Marker, MaxItems, []).
list_distributions_by_key_group(Client, KeyGroupId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByKeyGroupId/", aws_util:encode_uri(KeyGroupId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that’s associated with the specified origin request policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, Marker, MaxItems)
  when is_map(Client) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, Marker, MaxItems, []).
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByOriginRequestPolicyId/", aws_util:encode_uri(OriginRequestPolicyId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distributions that have a cache behavior that’s
%% associated with the specified real-time log configuration.
%%
%% You can specify the real-time log configuration by its name or its Amazon
%% Resource Name (ARN). You must provide at least one. If you provide both,
%% CloudFront uses the name to identify the real-time log configuration to
%% list distributions for.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_distributions_by_realtime_log_config(Client, Input) ->
    list_distributions_by_realtime_log_config(Client, Input, []).
list_distributions_by_realtime_log_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distributionsByRealtimeLogConfig/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc List the distributions that are associated with a specified AWS WAF
%% web ACL.
list_distributions_by_web_acl_id(Client, WebACLId, Marker, MaxItems)
  when is_map(Client) ->
    list_distributions_by_web_acl_id(Client, WebACLId, Marker, MaxItems, []).
list_distributions_by_web_acl_id(Client, WebACLId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByWebACLId/", aws_util:encode_uri(WebACLId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all field-level encryption configurations that have been created
%% in CloudFront for this account.
list_field_level_encryption_configs(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_field_level_encryption_configs(Client, Marker, MaxItems, []).
list_field_level_encryption_configs(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request a list of field-level encryption profiles that have been
%% created in CloudFront for this account.
list_field_level_encryption_profiles(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_field_level_encryption_profiles(Client, Marker, MaxItems, []).
list_field_level_encryption_profiles(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption-profile"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists invalidation batches.
list_invalidations(Client, DistributionId, Marker, MaxItems)
  when is_map(Client) ->
    list_invalidations(Client, DistributionId, Marker, MaxItems, []).
list_invalidations(Client, DistributionId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of key groups.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_key_groups(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_key_groups(Client, Marker, MaxItems, []).
list_key_groups(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/key-group"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of origin request policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by AWS, or only the custom policies created in your AWS account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_origin_request_policies(Client, Marker, MaxItems, Type)
  when is_map(Client) ->
    list_origin_request_policies(Client, Marker, MaxItems, Type, []).
list_origin_request_policies(Client, Marker, MaxItems, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems},
        {<<"Type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all public keys that have been added to CloudFront for this
%% account.
list_public_keys(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_public_keys(Client, Marker, MaxItems, []).
list_public_keys(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of real-time log configurations.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value in the
%% subsequent request.
list_realtime_log_configs(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_realtime_log_configs(Client, Marker, MaxItems, []).
list_realtime_log_configs(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/realtime-log-config"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List streaming distributions.
list_streaming_distributions(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_streaming_distributions(Client, Marker, MaxItems, []).
list_streaming_distributions(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tags for a CloudFront resource.
list_tags_for_resource(Client, Resource)
  when is_map(Client) ->
    list_tags_for_resource(Client, Resource, []).
list_tags_for_resource(Client, Resource, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/tagging"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"Resource">>, Resource}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add tags to a CloudFront resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Tag"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove tags from a CloudFront resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Untag"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a cache policy configuration.
%%
%% When you update a cache policy configuration, all the fields are updated
%% with the values provided in the request. You cannot update some fields
%% independent of others. To update a cache policy configuration:
%%
%% <ol> <li> Use `GetCachePolicyConfig' to get the current configuration.
%%
%% </li> <li> Locally modify the fields in the cache policy configuration
%% that you want to update.
%%
%% </li> <li> Call `UpdateCachePolicy' by providing the entire cache policy
%% configuration, including the fields that you modified and those that you
%% didn’t.
%%
%% </li> </ol>
update_cache_policy(Client, Id, Input) ->
    update_cache_policy(Client, Id, Input, []).
update_cache_policy(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Update an origin access identity.
update_cloud_front_origin_access_identity(Client, Id, Input) ->
    update_cloud_front_origin_access_identity(Client, Id, Input, []).
update_cloud_front_origin_access_identity(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Updates the configuration for a web distribution.
%%
%% When you update a distribution, there are more required fields than when
%% you create a distribution. When you update your distribution by using this
%% API action, follow the steps here to get the current configuration and
%% then make your updates, to make sure that you include all of the required
%% fields. To view a summary, see Required Fields for Create Distribution and
%% Update Distribution in the Amazon CloudFront Developer Guide.
%%
%% The update process includes getting the current distribution
%% configuration, updating the XML document that is returned to make your
%% changes, and then submitting an `UpdateDistribution' request to make the
%% updates.
%%
%% For information about updating a distribution using the CloudFront console
%% instead, see Creating a Distribution in the Amazon CloudFront Developer
%% Guide.
%%
%% To update a web distribution using the CloudFront API
%%
%% <ol> <li> Submit a GetDistributionConfig request to get the current
%% configuration and an `Etag' header for the distribution.
%%
%% If you update the distribution again, you must get a new `Etag' header.
%%
%% </li> <li> Update the XML document that was returned in the response to
%% your `GetDistributionConfig' request to include your changes.
%%
%% When you edit the XML file, be aware of the following:
%%
%% You must strip out the ETag parameter that is returned.
%%
%% Additional fields are required when you update a distribution. There may
%% be fields included in the XML file for features that you haven't
%% configured for your distribution. This is expected and required to
%% successfully update the distribution.
%%
%% You can't change the value of `CallerReference'. If you try to change this
%% value, CloudFront returns an `IllegalUpdate' error.
%%
%% The new configuration replaces the existing configuration; the values that
%% you specify in an `UpdateDistribution' request are not merged into your
%% existing configuration. When you add, delete, or replace values in an
%% element that allows multiple values (for example, `CNAME'), you must
%% specify all of the values that you want to appear in the updated
%% distribution. In addition, you must update the corresponding `Quantity'
%% element.
%%
%% </li> <li> Submit an `UpdateDistribution' request to update the
%% configuration for your distribution:
%%
%% <ul> <li> In the request body, include the XML document that you updated
%% in Step 2. The request body must include an XML document with a
%% `DistributionConfig' element.
%%
%% </li> <li> Set the value of the HTTP `If-Match' header to the value of the
%% `ETag' header that CloudFront returned when you submitted the
%% `GetDistributionConfig' request in Step 1.
%%
%% </li> </ul> </li> <li> Review the response to the `UpdateDistribution'
%% request to confirm that the configuration was successfully updated.
%%
%% </li> <li> Optional: Submit a GetDistribution request to confirm that your
%% changes have propagated. When propagation is complete, the value of
%% `Status' is `Deployed'.
%%
%% </li> </ol>
update_distribution(Client, Id, Input) ->
    update_distribution(Client, Id, Input, []).
update_distribution(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Update a field-level encryption configuration.
update_field_level_encryption_config(Client, Id, Input) ->
    update_field_level_encryption_config(Client, Id, Input, []).
update_field_level_encryption_config(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Update a field-level encryption profile.
update_field_level_encryption_profile(Client, Id, Input) ->
    update_field_level_encryption_profile(Client, Id, Input, []).
update_field_level_encryption_profile(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Updates a key group.
%%
%% When you update a key group, all the fields are updated with the values
%% provided in the request. You cannot update some fields independent of
%% others. To update a key group:
%%
%% <ol> <li> Get the current key group with `GetKeyGroup' or
%% `GetKeyGroupConfig'.
%%
%% </li> <li> Locally modify the fields in the key group that you want to
%% update. For example, add or remove public key IDs.
%%
%% </li> <li> Call `UpdateKeyGroup' with the entire key group object,
%% including the fields that you modified and those that you didn’t.
%%
%% </li> </ol>
update_key_group(Client, Id, Input) ->
    update_key_group(Client, Id, Input, []).
update_key_group(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Updates an origin request policy configuration.
%%
%% When you update an origin request policy configuration, all the fields are
%% updated with the values provided in the request. You cannot update some
%% fields independent of others. To update an origin request policy
%% configuration:
%%
%% <ol> <li> Use `GetOriginRequestPolicyConfig' to get the current
%% configuration.
%%
%% </li> <li> Locally modify the fields in the origin request policy
%% configuration that you want to update.
%%
%% </li> <li> Call `UpdateOriginRequestPolicy' by providing the entire origin
%% request policy configuration, including the fields that you modified and
%% those that you didn’t.
%%
%% </li> </ol>
update_origin_request_policy(Client, Id, Input) ->
    update_origin_request_policy(Client, Id, Input, []).
update_origin_request_policy(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Update public key information.
%%
%% Note that the only value you can change is the comment.
update_public_key(Client, Id, Input) ->
    update_public_key(Client, Id, Input, []).
update_public_key(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

%% @doc Updates a real-time log configuration.
%%
%% When you update a real-time log configuration, all the parameters are
%% updated with the values provided in the request. You cannot update some
%% parameters independent of others. To update a real-time log configuration:
%%
%% <ol> <li> Call `GetRealtimeLogConfig' to get the current real-time log
%% configuration.
%%
%% </li> <li> Locally modify the parameters in the real-time log
%% configuration that you want to update.
%%
%% </li> <li> Call this API (`UpdateRealtimeLogConfig') by providing the
%% entire real-time log configuration, including the parameters that you
%% modified and those that you didn’t.
%%
%% </li> </ol> You cannot update a real-time log configuration’s `Name' or
%% `ARN'.
update_realtime_log_config(Client, Input) ->
    update_realtime_log_config(Client, Input, []).
update_realtime_log_config(Client, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/realtime-log-config/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update a streaming distribution.
update_streaming_distribution(Client, Id, Input) ->
    update_streaming_distribution(Client, Id, Input, []).
update_streaming_distribution(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"ETag">>, <<"ETag">>}
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

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"cloudfront">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"cloudfront">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"text/xml">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
