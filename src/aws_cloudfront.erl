%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon CloudFront</fullname>
%%
%% This is the <i>Amazon CloudFront API Reference</i>. This guide is for
%% developers who need detailed information about CloudFront API actions,
%% data types, and errors. For detailed information about CloudFront
%% features, see the <i>Amazon CloudFront Developer Guide</i>.
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
         create_origin_request_policy/2,
         create_origin_request_policy/3,
         create_public_key/2,
         create_public_key/3,
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
         delete_origin_request_policy/3,
         delete_origin_request_policy/4,
         delete_public_key/3,
         delete_public_key/4,
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
         get_origin_request_policy/2,
         get_origin_request_policy/3,
         get_origin_request_policy_config/2,
         get_origin_request_policy_config/3,
         get_public_key/2,
         get_public_key/3,
         get_public_key_config/2,
         get_public_key_config/3,
         get_streaming_distribution/2,
         get_streaming_distribution/3,
         get_streaming_distribution_config/2,
         get_streaming_distribution_config/3,
         list_cache_policies/1,
         list_cache_policies/2,
         list_cloud_front_origin_access_identities/1,
         list_cloud_front_origin_access_identities/2,
         list_distributions/1,
         list_distributions/2,
         list_distributions_by_cache_policy_id/2,
         list_distributions_by_cache_policy_id/3,
         list_distributions_by_origin_request_policy_id/2,
         list_distributions_by_origin_request_policy_id/3,
         list_distributions_by_web_a_c_l_id/2,
         list_distributions_by_web_a_c_l_id/3,
         list_field_level_encryption_configs/1,
         list_field_level_encryption_configs/2,
         list_field_level_encryption_profiles/1,
         list_field_level_encryption_profiles/2,
         list_invalidations/2,
         list_invalidations/3,
         list_origin_request_policies/1,
         list_origin_request_policies/2,
         list_public_keys/1,
         list_public_keys/2,
         list_streaming_distributions/1,
         list_streaming_distributions/2,
         list_tags_for_resource/1,
         list_tags_for_resource/2,
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
         update_origin_request_policy/3,
         update_origin_request_policy/4,
         update_public_key/3,
         update_public_key/4,
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
%% <ul> <li> The values that CloudFront includes in the <i>cache key</i>.
%% These values can include HTTP headers, cookies, and URL query strings.
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
%% to the origin but <i>not</i> include them in the cache key, use
%% <code>CreateOriginRequestPolicy</code>.
%%
%% For more information about cache policies, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html">Controlling
%% the cache key</a> in the <i>Amazon CloudFront Developer Guide</i>.
create_cache_policy(Client, Input) ->
    create_cache_policy(Client, Input, []).
create_cache_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a new origin access identity. If you're using Amazon S3 for
%% your origin, you can use an origin access identity to require users to
%% access your content using a CloudFront URL instead of the Amazon S3 URL.
%% For more information about how to use origin access identities, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
%% Private Content through CloudFront</a> in the <i>Amazon CloudFront
%% Developer Guide</i>.
create_cloud_front_origin_access_identity(Client, Input) ->
    create_cloud_front_origin_access_identity(Client, Input, []).
create_cloud_front_origin_access_identity(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a new web distribution. You create a CloudFront distribution
%% to tell CloudFront where you want content to be delivered from, and the
%% details about how to track and manage content delivery. Send a
%% <code>POST</code> request to the <code>/<i>CloudFront API
%% version</i>/distribution</code>/<code>distribution ID</code> resource.
%%
%% <important> When you update a distribution, there are more required fields
%% than when you create a distribution. When you update your distribution by
%% using <a
%% href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html">UpdateDistribution</a>,
%% follow the steps included in the documentation to get the current
%% configuration and then make your updates. This helps to make sure that you
%% include all of the required fields. To view a summary, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html">Required
%% Fields for Create Distribution and Update Distribution</a> in the
%% <i>Amazon CloudFront Developer Guide</i>.
%%
%% </important>
create_distribution(Client, Input) ->
    create_distribution(Client, Input, []).
create_distribution(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/distribution/", http_uri:encode(DistributionId), "/invalidation"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% origin request, including <code>Host</code>, <code>User-Agent</code>, and
%% <code>X-Amz-Cf-Id</code>.
%%
%% </li> <li> All HTTP headers, cookies, and URL query strings that are
%% specified in the cache policy or the origin request policy. These can
%% include items from the viewer request and, in the case of headers,
%% additional ones that are added by CloudFront.
%%
%% </li> </ul> CloudFront sends a request when it can’t find a valid object
%% in its cache that matches the request. If you want to send values to the
%% origin and also include them in the cache key, use
%% <code>CreateCachePolicy</code>.
%%
%% For more information about origin request policies, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html">Controlling
%% origin requests</a> in the <i>Amazon CloudFront Developer Guide</i>.
create_origin_request_policy(Client, Input) ->
    create_origin_request_policy(Client, Input, []).
create_origin_request_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Add a new public key to CloudFront to use, for example, for
%% field-level encryption. You can add a maximum of 10 public keys with one
%% AWS account.
create_public_key(Client, Input) ->
    create_public_key(Client, Input, []).
create_public_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a new RTMP distribution. An RTMP distribution is similar to a
%% web distribution, but an RTMP distribution streams media files using the
%% Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using
%% HTTP.
%%
%% To create a new distribution, submit a <code>POST</code> request to the
%% <i>CloudFront API version</i>/distribution resource. The request body must
%% include a document with a <i>StreamingDistributionConfig</i> element. The
%% response echoes the <code>StreamingDistributionConfig</code> element and
%% returns other information about the RTMP distribution.
%%
%% To get the status of your request, use the <i>GET
%% StreamingDistribution</i> API action. When the value of
%% <code>Enabled</code> is <code>true</code> and the value of
%% <code>Status</code> is <code>Deployed</code>, your distribution is ready.
%% A distribution usually deploys in less than 15 minutes.
%%
%% For more information about web distributions, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html">Working
%% with RTMP Distributions</a> in the <i>Amazon CloudFront Developer
%% Guide</i>.
%%
%% <important> Beginning with the 2012-05-05 version of the CloudFront API,
%% we made substantial changes to the format of the XML document that you
%% include in the request body when you create or update a web distribution
%% or an RTMP distribution, and when you invalidate objects. With previous
%% versions of the API, we discovered that it was too easy to accidentally
%% delete one or more values for an element that accepts multiple values, for
%% example, CNAMEs and trusted signers. Our changes for the 2012-05-05
%% release are intended to prevent these accidental deletions and to notify
%% you when there's a mismatch between the number of values you say you're
%% specifying in the <code>Quantity</code> element and the number of values
%% specified.
%%
%% </important>
create_streaming_distribution(Client, Input) ->
    create_streaming_distribution(Client, Input, []).
create_streaming_distribution(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = 201,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% version. To get these values, you can use <code>ListCachePolicies</code>
%% or <code>GetCachePolicy</code>.
delete_cache_policy(Client, Id, Input) ->
    delete_cache_policy(Client, Id, Input, []).
delete_cache_policy(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/cache-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an origin access identity.
delete_cloud_front_origin_access_identity(Client, Id, Input) ->
    delete_cloud_front_origin_access_identity(Client, Id, Input, []).
delete_cloud_front_origin_access_identity(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a distribution.
delete_distribution(Client, Id, Input) ->
    delete_distribution(Client, Id, Input, []).
delete_distribution(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/distribution/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption configuration.
delete_field_level_encryption_config(Client, Id, Input) ->
    delete_field_level_encryption_config(Client, Id, Input, []).
delete_field_level_encryption_config(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption profile.
delete_field_level_encryption_profile(Client, Id, Input) ->
    delete_field_level_encryption_profile(Client, Id, Input, []).
delete_field_level_encryption_profile(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption-profile/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an origin request policy.
%%
%% You cannot delete an origin request policy if it’s attached to any cache
%% behaviors. First update your distributions to remove the origin request
%% policy from all cache behaviors, then delete the origin request policy.
%%
%% To delete an origin request policy, you must provide the policy’s
%% identifier and version. To get the identifier, you can use
%% <code>ListOriginRequestPolicies</code> or
%% <code>GetOriginRequestPolicy</code>.
delete_origin_request_policy(Client, Id, Input) ->
    delete_origin_request_policy(Client, Id, Input, []).
delete_origin_request_policy(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/origin-request-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a public key you previously added to CloudFront.
delete_public_key(Client, Id, Input) ->
    delete_public_key(Client, Id, Input, []).
delete_public_key(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/public-key/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a streaming distribution. To delete an RTMP distribution using
%% the CloudFront API, perform the following steps.
%%
%% <b>To delete an RTMP distribution using the CloudFront API</b>:
%%
%% <ol> <li> Disable the RTMP distribution.
%%
%% </li> <li> Submit a <code>GET Streaming Distribution Config</code> request
%% to get the current configuration and the <code>Etag</code> header for the
%% distribution.
%%
%% </li> <li> Update the XML document that was returned in the response to
%% your <code>GET Streaming Distribution Config</code> request to change the
%% value of <code>Enabled</code> to <code>false</code>.
%%
%% </li> <li> Submit a <code>PUT Streaming Distribution Config</code> request
%% to update the configuration for your distribution. In the request body,
%% include the XML document that you updated in Step 3. Then set the value of
%% the HTTP <code>If-Match</code> header to the value of the
%% <code>ETag</code> header that CloudFront returned when you submitted the
%% <code>GET Streaming Distribution Config</code> request in Step 2.
%%
%% </li> <li> Review the response to the <code>PUT Streaming Distribution
%% Config</code> request to confirm that the distribution was successfully
%% disabled.
%%
%% </li> <li> Submit a <code>GET Streaming Distribution Config</code> request
%% to confirm that your changes have propagated. When propagation is
%% complete, the value of <code>Status</code> is <code>Deployed</code>.
%%
%% </li> <li> Submit a <code>DELETE Streaming Distribution</code> request.
%% Set the value of the HTTP <code>If-Match</code> header to the value of the
%% <code>ETag</code> header that CloudFront returned when you submitted the
%% <code>GET Streaming Distribution Config</code> request in Step 2.
%%
%% </li> <li> Review the response to your <code>DELETE Streaming
%% Distribution</code> request to confirm that the distribution was
%% successfully deleted.
%%
%% </li> </ol> For information about deleting a distribution using the
%% CloudFront console, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting
%% a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.
delete_streaming_distribution(Client, Id, Input) ->
    delete_streaming_distribution(Client, Id, Input, []).
delete_streaming_distribution(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2020-05-31/streaming-distribution/", http_uri:encode(Id), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a cache policy, including the following metadata:
%%
%% <ul> <li> The policy’s identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get a cache policy, you must provide the policy’s
%% identifier. If the cache policy is attached to a distribution’s cache
%% behavior, you can get the policy’s identifier using
%% <code>ListDistributions</code> or <code>GetDistribution</code>. If the
%% cache policy is not attached to a cache behavior, you can get the
%% identifier using <code>ListCachePolicies</code>.
get_cache_policy(Client, Id)
  when is_map(Client) ->
    get_cache_policy(Client, Id, []).
get_cache_policy(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
%% behavior, you can get the policy’s identifier using
%% <code>ListDistributions</code> or <code>GetDistribution</code>. If the
%% cache policy is not attached to a cache behavior, you can get the
%% identifier using <code>ListCachePolicies</code>.
get_cache_policy_config(Client, Id)
  when is_map(Client) ->
    get_cache_policy_config(Client, Id, []).
get_cache_policy_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/distribution/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/distribution/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption-profile/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption-profile/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/distribution/", http_uri:encode(DistributionId), "/invalidation/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an origin request policy, including the following metadata:
%%
%% <ul> <li> The policy’s identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get an origin request policy, you must provide the policy’s
%% identifier. If the origin request policy is attached to a distribution’s
%% cache behavior, you can get the policy’s identifier using
%% <code>ListDistributions</code> or <code>GetDistribution</code>. If the
%% origin request policy is not attached to a cache behavior, you can get the
%% identifier using <code>ListOriginRequestPolicies</code>.
get_origin_request_policy(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy(Client, Id, []).
get_origin_request_policy(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
%% <code>ListDistributions</code> or <code>GetDistribution</code>. If the
%% origin request policy is not attached to a cache behavior, you can get the
%% identifier using <code>ListOriginRequestPolicies</code>.
get_origin_request_policy_config(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy_config(Client, Id, []).
get_origin_request_policy_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Get the public key information.
get_public_key(Client, Id)
  when is_map(Client) ->
    get_public_key(Client, Id, []).
get_public_key(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Return public key configuration informaation
get_public_key_config(Client, Id)
  when is_map(Client) ->
    get_public_key_config(Client, Id, []).
get_public_key_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets information about a specified RTMP distribution, including the
%% distribution configuration.
get_streaming_distribution(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution(Client, Id, []).
get_streaming_distribution(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/streaming-distribution/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/streaming-distribution/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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
%% <code>NextMarker</code> value from the current response as the
%% <code>Marker</code> value in the subsequent request.
list_cache_policies(Client)
  when is_map(Client) ->
    list_cache_policies(Client, []).
list_cache_policies(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists origin access identities.
list_cloud_front_origin_access_identities(Client)
  when is_map(Client) ->
    list_cloud_front_origin_access_identities(Client, []).
list_cloud_front_origin_access_identities(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List CloudFront distributions.
list_distributions(Client)
  when is_map(Client) ->
    list_distributions(Client, []).
list_distributions(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that’s associated with the specified cache policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% <code>NextMarker</code> value from the current response as the
%% <code>Marker</code> value in the subsequent request.
list_distributions_by_cache_policy_id(Client, CachePolicyId)
  when is_map(Client) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, []).
list_distributions_by_cache_policy_id(Client, CachePolicyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByCachePolicyId/", http_uri:encode(CachePolicyId), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that’s associated with the specified origin request policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% <code>NextMarker</code> value from the current response as the
%% <code>Marker</code> value in the subsequent request.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId)
  when is_map(Client) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, []).
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByOriginRequestPolicyId/", http_uri:encode(OriginRequestPolicyId), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the distributions that are associated with a specified AWS WAF
%% web ACL.
list_distributions_by_web_a_c_l_id(Client, WebACLId)
  when is_map(Client) ->
    list_distributions_by_web_a_c_l_id(Client, WebACLId, []).
list_distributions_by_web_a_c_l_id(Client, WebACLId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distributionsByWebACLId/", http_uri:encode(WebACLId), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all field-level encryption configurations that have been created
%% in CloudFront for this account.
list_field_level_encryption_configs(Client)
  when is_map(Client) ->
    list_field_level_encryption_configs(Client, []).
list_field_level_encryption_configs(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request a list of field-level encryption profiles that have been
%% created in CloudFront for this account.
list_field_level_encryption_profiles(Client)
  when is_map(Client) ->
    list_field_level_encryption_profiles(Client, []).
list_field_level_encryption_profiles(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/field-level-encryption-profile"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists invalidation batches.
list_invalidations(Client, DistributionId)
  when is_map(Client) ->
    list_invalidations(Client, DistributionId, []).
list_invalidations(Client, DistributionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/distribution/", http_uri:encode(DistributionId), "/invalidation"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of origin request policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by AWS, or only the custom policies created in your AWS account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% <code>NextMarker</code> value from the current response as the
%% <code>Marker</code> value in the subsequent request.
list_origin_request_policies(Client)
  when is_map(Client) ->
    list_origin_request_policies(Client, []).
list_origin_request_policies(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all public keys that have been added to CloudFront for this
%% account.
list_public_keys(Client)
  when is_map(Client) ->
    list_public_keys(Client, []).
list_public_keys(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List streaming distributions.
list_streaming_distributions(Client)
  when is_map(Client) ->
    list_streaming_distributions(Client, []).
list_streaming_distributions(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tags for a CloudFront resource.
list_tags_for_resource(Client)
  when is_map(Client) ->
    list_tags_for_resource(Client, []).
list_tags_for_resource(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2020-05-31/tagging"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add tags to a CloudFront resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Tag"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove tags from a CloudFront resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Untag"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a cache policy configuration.
%%
%% When you update a cache policy configuration, all the fields are updated
%% with the values provided in the request. You cannot update some fields
%% independent of others. To update a cache policy configuration:
%%
%% <ol> <li> Use <code>GetCachePolicyConfig</code> to get the current
%% configuration.
%%
%% </li> <li> Locally modify the fields in the cache policy configuration
%% that you want to update.
%%
%% </li> <li> Call <code>UpdateCachePolicy</code> by providing the entire
%% cache policy configuration, including the fields that you modified and
%% those that you didn’t.
%%
%% </li> </ol>
update_cache_policy(Client, Id, Input) ->
    update_cache_policy(Client, Id, Input, []).
update_cache_policy(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/cache-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% <important> When you update a distribution, there are more required fields
%% than when you create a distribution. When you update your distribution by
%% using this API action, follow the steps here to get the current
%% configuration and then make your updates, to make sure that you include
%% all of the required fields. To view a summary, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html">Required
%% Fields for Create Distribution and Update Distribution</a> in the
%% <i>Amazon CloudFront Developer Guide</i>.
%%
%% </important> The update process includes getting the current distribution
%% configuration, updating the XML document that is returned to make your
%% changes, and then submitting an <code>UpdateDistribution</code> request to
%% make the updates.
%%
%% For information about updating a distribution using the CloudFront console
%% instead, see <a
%% href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html">Creating
%% a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.
%%
%% <b>To update a web distribution using the CloudFront API</b>
%%
%% <ol> <li> Submit a <a
%% href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html">GetDistributionConfig</a>
%% request to get the current configuration and an <code>Etag</code> header
%% for the distribution.
%%
%% <note> If you update the distribution again, you must get a new
%% <code>Etag</code> header.
%%
%% </note> </li> <li> Update the XML document that was returned in the
%% response to your <code>GetDistributionConfig</code> request to include
%% your changes.
%%
%% <important> When you edit the XML file, be aware of the following:
%%
%% <ul> <li> You must strip out the ETag parameter that is returned.
%%
%% </li> <li> Additional fields are required when you update a distribution.
%% There may be fields included in the XML file for features that you haven't
%% configured for your distribution. This is expected and required to
%% successfully update the distribution.
%%
%% </li> <li> You can't change the value of <code>CallerReference</code>. If
%% you try to change this value, CloudFront returns an
%% <code>IllegalUpdate</code> error.
%%
%% </li> <li> The new configuration replaces the existing configuration; the
%% values that you specify in an <code>UpdateDistribution</code> request are
%% not merged into your existing configuration. When you add, delete, or
%% replace values in an element that allows multiple values (for example,
%% <code>CNAME</code>), you must specify all of the values that you want to
%% appear in the updated distribution. In addition, you must update the
%% corresponding <code>Quantity</code> element.
%%
%% </li> </ul> </important> </li> <li> Submit an
%% <code>UpdateDistribution</code> request to update the configuration for
%% your distribution:
%%
%% <ul> <li> In the request body, include the XML document that you updated
%% in Step 2. The request body must include an XML document with a
%% <code>DistributionConfig</code> element.
%%
%% </li> <li> Set the value of the HTTP <code>If-Match</code> header to the
%% value of the <code>ETag</code> header that CloudFront returned when you
%% submitted the <code>GetDistributionConfig</code> request in Step 1.
%%
%% </li> </ul> </li> <li> Review the response to the
%% <code>UpdateDistribution</code> request to confirm that the configuration
%% was successfully updated.
%%
%% </li> <li> Optional: Submit a <a
%% href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html">GetDistribution</a>
%% request to confirm that your changes have propagated. When propagation is
%% complete, the value of <code>Status</code> is <code>Deployed</code>.
%%
%% </li> </ol>
update_distribution(Client, Id, Input) ->
    update_distribution(Client, Id, Input, []).
update_distribution(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
    Path = ["/2020-05-31/field-level-encryption-profile/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% <ol> <li> Use <code>GetOriginRequestPolicyConfig</code> to get the current
%% configuration.
%%
%% </li> <li> Locally modify the fields in the origin request policy
%% configuration that you want to update.
%%
%% </li> <li> Call <code>UpdateOriginRequestPolicy</code> by providing the
%% entire origin request policy configuration, including the fields that you
%% modified and those that you didn’t.
%%
%% </li> </ol>
update_origin_request_policy(Client, Id, Input) ->
    update_origin_request_policy(Client, Id, Input, []).
update_origin_request_policy(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/origin-request-policy/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Update public key information. Note that the only value you can
%% change is the comment.
update_public_key(Client, Id, Input) ->
    update_public_key(Client, Id, Input, []).
update_public_key(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/public-key/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Update a streaming distribution.
update_streaming_distribution(Client, Id, Input) ->
    update_streaming_distribution(Client, Id, Input, []).
update_streaming_distribution(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2020-05-31/streaming-distribution/", http_uri:encode(Id), "/config"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"cloudfront">>},
    
    Host = get_host(<<"cloudfront">>, Client1),
    
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"text/xml">>}
        | Headers0
    ],
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
            {ok, undefined, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    %% TODO: maybe unnecessary
    MessagePath1 = [<<"ErrorResponse">>, <<"Error">>, <<"message">>],
    Reason1 = aws_util:get_in(MessagePath1, Error),
    MessagePath2 = [<<"ErrorResponse">>, <<"Error">>, <<"Message">>],
    Reason2 = aws_util:get_in(MessagePath2, Error, Reason1),
    {error, Reason2, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.


get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
