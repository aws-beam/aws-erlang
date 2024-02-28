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

-export([associate_alias/3,
         associate_alias/4,
         copy_distribution/3,
         copy_distribution/4,
         create_cache_policy/2,
         create_cache_policy/3,
         create_cloud_front_origin_access_identity/2,
         create_cloud_front_origin_access_identity/3,
         create_continuous_deployment_policy/2,
         create_continuous_deployment_policy/3,
         create_distribution/2,
         create_distribution/3,
         create_distribution_with_tags/2,
         create_distribution_with_tags/3,
         create_field_level_encryption_config/2,
         create_field_level_encryption_config/3,
         create_field_level_encryption_profile/2,
         create_field_level_encryption_profile/3,
         create_function/2,
         create_function/3,
         create_invalidation/3,
         create_invalidation/4,
         create_key_group/2,
         create_key_group/3,
         create_key_value_store/2,
         create_key_value_store/3,
         create_monitoring_subscription/3,
         create_monitoring_subscription/4,
         create_origin_access_control/2,
         create_origin_access_control/3,
         create_origin_request_policy/2,
         create_origin_request_policy/3,
         create_public_key/2,
         create_public_key/3,
         create_realtime_log_config/2,
         create_realtime_log_config/3,
         create_response_headers_policy/2,
         create_response_headers_policy/3,
         create_streaming_distribution/2,
         create_streaming_distribution/3,
         create_streaming_distribution_with_tags/2,
         create_streaming_distribution_with_tags/3,
         delete_cache_policy/3,
         delete_cache_policy/4,
         delete_cloud_front_origin_access_identity/3,
         delete_cloud_front_origin_access_identity/4,
         delete_continuous_deployment_policy/3,
         delete_continuous_deployment_policy/4,
         delete_distribution/3,
         delete_distribution/4,
         delete_field_level_encryption_config/3,
         delete_field_level_encryption_config/4,
         delete_field_level_encryption_profile/3,
         delete_field_level_encryption_profile/4,
         delete_function/3,
         delete_function/4,
         delete_key_group/3,
         delete_key_group/4,
         delete_key_value_store/3,
         delete_key_value_store/4,
         delete_monitoring_subscription/3,
         delete_monitoring_subscription/4,
         delete_origin_access_control/3,
         delete_origin_access_control/4,
         delete_origin_request_policy/3,
         delete_origin_request_policy/4,
         delete_public_key/3,
         delete_public_key/4,
         delete_realtime_log_config/2,
         delete_realtime_log_config/3,
         delete_response_headers_policy/3,
         delete_response_headers_policy/4,
         delete_streaming_distribution/3,
         delete_streaming_distribution/4,
         describe_function/2,
         describe_function/4,
         describe_function/5,
         describe_key_value_store/2,
         describe_key_value_store/4,
         describe_key_value_store/5,
         get_cache_policy/2,
         get_cache_policy/4,
         get_cache_policy/5,
         get_cache_policy_config/2,
         get_cache_policy_config/4,
         get_cache_policy_config/5,
         get_cloud_front_origin_access_identity/2,
         get_cloud_front_origin_access_identity/4,
         get_cloud_front_origin_access_identity/5,
         get_cloud_front_origin_access_identity_config/2,
         get_cloud_front_origin_access_identity_config/4,
         get_cloud_front_origin_access_identity_config/5,
         get_continuous_deployment_policy/2,
         get_continuous_deployment_policy/4,
         get_continuous_deployment_policy/5,
         get_continuous_deployment_policy_config/2,
         get_continuous_deployment_policy_config/4,
         get_continuous_deployment_policy_config/5,
         get_distribution/2,
         get_distribution/4,
         get_distribution/5,
         get_distribution_config/2,
         get_distribution_config/4,
         get_distribution_config/5,
         get_field_level_encryption/2,
         get_field_level_encryption/4,
         get_field_level_encryption/5,
         get_field_level_encryption_config/2,
         get_field_level_encryption_config/4,
         get_field_level_encryption_config/5,
         get_field_level_encryption_profile/2,
         get_field_level_encryption_profile/4,
         get_field_level_encryption_profile/5,
         get_field_level_encryption_profile_config/2,
         get_field_level_encryption_profile_config/4,
         get_field_level_encryption_profile_config/5,
         get_function/2,
         get_function/4,
         get_function/5,
         get_invalidation/3,
         get_invalidation/5,
         get_invalidation/6,
         get_key_group/2,
         get_key_group/4,
         get_key_group/5,
         get_key_group_config/2,
         get_key_group_config/4,
         get_key_group_config/5,
         get_monitoring_subscription/2,
         get_monitoring_subscription/4,
         get_monitoring_subscription/5,
         get_origin_access_control/2,
         get_origin_access_control/4,
         get_origin_access_control/5,
         get_origin_access_control_config/2,
         get_origin_access_control_config/4,
         get_origin_access_control_config/5,
         get_origin_request_policy/2,
         get_origin_request_policy/4,
         get_origin_request_policy/5,
         get_origin_request_policy_config/2,
         get_origin_request_policy_config/4,
         get_origin_request_policy_config/5,
         get_public_key/2,
         get_public_key/4,
         get_public_key/5,
         get_public_key_config/2,
         get_public_key_config/4,
         get_public_key_config/5,
         get_realtime_log_config/2,
         get_realtime_log_config/3,
         get_response_headers_policy/2,
         get_response_headers_policy/4,
         get_response_headers_policy/5,
         get_response_headers_policy_config/2,
         get_response_headers_policy_config/4,
         get_response_headers_policy_config/5,
         get_streaming_distribution/2,
         get_streaming_distribution/4,
         get_streaming_distribution/5,
         get_streaming_distribution_config/2,
         get_streaming_distribution_config/4,
         get_streaming_distribution_config/5,
         list_cache_policies/1,
         list_cache_policies/3,
         list_cache_policies/4,
         list_cloud_front_origin_access_identities/1,
         list_cloud_front_origin_access_identities/3,
         list_cloud_front_origin_access_identities/4,
         list_conflicting_aliases/3,
         list_conflicting_aliases/5,
         list_conflicting_aliases/6,
         list_continuous_deployment_policies/1,
         list_continuous_deployment_policies/3,
         list_continuous_deployment_policies/4,
         list_distributions/1,
         list_distributions/3,
         list_distributions/4,
         list_distributions_by_cache_policy_id/2,
         list_distributions_by_cache_policy_id/4,
         list_distributions_by_cache_policy_id/5,
         list_distributions_by_key_group/2,
         list_distributions_by_key_group/4,
         list_distributions_by_key_group/5,
         list_distributions_by_origin_request_policy_id/2,
         list_distributions_by_origin_request_policy_id/4,
         list_distributions_by_origin_request_policy_id/5,
         list_distributions_by_realtime_log_config/2,
         list_distributions_by_realtime_log_config/3,
         list_distributions_by_response_headers_policy_id/2,
         list_distributions_by_response_headers_policy_id/4,
         list_distributions_by_response_headers_policy_id/5,
         list_distributions_by_web_acl_id/2,
         list_distributions_by_web_acl_id/4,
         list_distributions_by_web_acl_id/5,
         list_field_level_encryption_configs/1,
         list_field_level_encryption_configs/3,
         list_field_level_encryption_configs/4,
         list_field_level_encryption_profiles/1,
         list_field_level_encryption_profiles/3,
         list_field_level_encryption_profiles/4,
         list_functions/1,
         list_functions/3,
         list_functions/4,
         list_invalidations/2,
         list_invalidations/4,
         list_invalidations/5,
         list_key_groups/1,
         list_key_groups/3,
         list_key_groups/4,
         list_key_value_stores/1,
         list_key_value_stores/3,
         list_key_value_stores/4,
         list_origin_access_controls/1,
         list_origin_access_controls/3,
         list_origin_access_controls/4,
         list_origin_request_policies/1,
         list_origin_request_policies/3,
         list_origin_request_policies/4,
         list_public_keys/1,
         list_public_keys/3,
         list_public_keys/4,
         list_realtime_log_configs/1,
         list_realtime_log_configs/3,
         list_realtime_log_configs/4,
         list_response_headers_policies/1,
         list_response_headers_policies/3,
         list_response_headers_policies/4,
         list_streaming_distributions/1,
         list_streaming_distributions/3,
         list_streaming_distributions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         publish_function/3,
         publish_function/4,
         tag_resource/2,
         tag_resource/3,
         test_function/3,
         test_function/4,
         untag_resource/2,
         untag_resource/3,
         update_cache_policy/3,
         update_cache_policy/4,
         update_cloud_front_origin_access_identity/3,
         update_cloud_front_origin_access_identity/4,
         update_continuous_deployment_policy/3,
         update_continuous_deployment_policy/4,
         update_distribution/3,
         update_distribution/4,
         update_distribution_with_staging_config/3,
         update_distribution_with_staging_config/4,
         update_field_level_encryption_config/3,
         update_field_level_encryption_config/4,
         update_field_level_encryption_profile/3,
         update_field_level_encryption_profile/4,
         update_function/3,
         update_function/4,
         update_key_group/3,
         update_key_group/4,
         update_key_value_store/3,
         update_key_value_store/4,
         update_origin_access_control/3,
         update_origin_access_control/4,
         update_origin_request_policy/3,
         update_origin_request_policy/4,
         update_public_key/3,
         update_public_key/4,
         update_realtime_log_config/2,
         update_realtime_log_config/3,
         update_response_headers_policy/3,
         update_response_headers_policy/4,
         update_streaming_distribution/3,
         update_streaming_distribution/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an alias (also known as a CNAME or an alternate domain
%% name) with a CloudFront distribution.
%%
%% With this operation you can move an alias that's already in use on a
%% CloudFront distribution to a different distribution in one step. This
%% prevents the downtime that could occur if you first remove the alias from
%% one distribution and then separately add the alias to another
%% distribution.
%%
%% To use this operation to associate an alias with a distribution, you
%% provide the alias and the ID of the target distribution for the alias. For
%% more information, including how to set up the target distribution,
%% prerequisites that you must complete, and other restrictions, see Moving
%% an alternate domain name to a different distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
associate_alias(Client, TargetDistributionId, Input) ->
    associate_alias(Client, TargetDistributionId, Input, []).
associate_alias(Client, TargetDistributionId, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(TargetDistributionId), "/associate-alias"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"Alias">>, <<"Alias">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a staging distribution using the configuration of the
%% provided primary distribution.
%%
%% A staging distribution is a copy of an existing distribution (called the
%% primary distribution) that you can use in a continuous deployment
%% workflow.
%%
%% After you create a staging distribution, you can use
%% `UpdateDistribution' to modify the staging distribution's
%% configuration. Then you can use `CreateContinuousDeploymentPolicy' to
%% incrementally move traffic to the staging distribution.
%%
%% This API operation requires the following IAM permissions:
%%
%% <ul> <li> GetDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
%%
%% </li> <li> CreateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
%%
%% </li> <li> CopyDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CopyDistribution.html
%%
%% </li> </ul>
copy_distribution(Client, PrimaryDistributionId, Input) ->
    copy_distribution(Client, PrimaryDistributionId, Input, []).
copy_distribution(Client, PrimaryDistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(PrimaryDistributionId), "/copy"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>},
                       {<<"Staging">>, <<"Staging">>}
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

%% @doc Creates a cache policy.
%%
%% After you create a cache policy, you can attach it to one or more cache
%% behaviors. When it's attached to a cache behavior, the cache policy
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
%% the cache key are also included in requests that CloudFront sends to the
%% origin. CloudFront sends a request when it can't find an object in its
%% cache that matches the request's cache key. If you want to send values
%% to the origin but not include them in the cache key, use
%% `OriginRequestPolicy'.
%%
%% For more information about cache policies, see Controlling the cache key:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html
%% in the Amazon CloudFront Developer Guide.
create_cache_policy(Client, Input) ->
    create_cache_policy(Client, Input, []).
create_cache_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/cache-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% If you're using Amazon S3 for your origin, you can use an origin
%% access identity to require users to access your content using a CloudFront
%% URL instead of the Amazon S3 URL. For more information about how to use
%% origin access identities, see Serving Private Content through CloudFront:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
%% in the Amazon CloudFront Developer Guide.
create_cloud_front_origin_access_identity(Client, Input) ->
    create_cloud_front_origin_access_identity(Client, Input, []).
create_cloud_front_origin_access_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a continuous deployment policy that distributes traffic for a
%% custom domain name to two different CloudFront distributions.
%%
%% To use a continuous deployment policy, first use `CopyDistribution' to
%% create a staging distribution, then use `UpdateDistribution' to modify
%% the staging distribution's configuration.
%%
%% After you create and update a staging distribution, you can use a
%% continuous deployment policy to incrementally move traffic to the staging
%% distribution. This workflow enables you to test changes to a
%% distribution's configuration before moving all of your domain's
%% production traffic to the new configuration.
create_continuous_deployment_policy(Client, Input) ->
    create_continuous_deployment_policy(Client, Input, []).
create_continuous_deployment_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/continuous-deployment-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a CloudFront distribution.
create_distribution(Client, Input) ->
    create_distribution(Client, Input, []).
create_distribution(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%%
%% This API operation requires the following IAM permissions:
%%
%% <ul> <li> CreateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html
%%
%% </li> <li> TagResource:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_TagResource.html
%%
%% </li> </ul>
create_distribution_with_tags(Client, Input) ->
    create_distribution_with_tags(Client, Input, []).
create_distribution_with_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution?WithTags"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
create_field_level_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
create_field_level_encryption_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/field-level-encryption-profile"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a CloudFront function.
%%
%% To create a function, you provide the function code and some configuration
%% information about the function. The response contains an Amazon Resource
%% Name (ARN) that uniquely identifies the function.
%%
%% When you create a function, it's in the `DEVELOPMENT' stage. In
%% this stage, you can test the function with `TestFunction', and update
%% it with `UpdateFunction'.
%%
%% When you're ready to use your function with a CloudFront distribution,
%% use `PublishFunction' to copy the function from the `DEVELOPMENT'
%% stage to `LIVE'. When it's live, you can attach the function to a
%% distribution's cache behavior, using the function's ARN.
create_function(Client, Input) ->
    create_function(Client, Input, []).
create_function(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
create_invalidation(Client, DistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% signed cookies:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html.
%%
%% To create a key group, you must specify at least one public key for the
%% key group. After you create a key group, you can reference it from one or
%% more cache behaviors. When you reference a key group in a cache behavior,
%% CloudFront requires signed URLs or signed cookies for all requests that
%% match the cache behavior. The URLs or cookies must be signed with a
%% private key whose corresponding public key is in the key group. The signed
%% URL or cookie contains information about which public key CloudFront
%% should use to verify the signature. For more information, see Serving
%% private content:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
%% in the Amazon CloudFront Developer Guide.
create_key_group(Client, Input) ->
    create_key_group(Client, Input, []).
create_key_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/key-group"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Specifies the Key Value Store resource to add to your account.
%%
%% In your account, the Key Value Store names must be unique. You can also
%% import Key Value Store data in JSON format from an S3 bucket by providing
%% a valid `ImportSource' that you own.
create_key_value_store(Client, Input) ->
    create_key_value_store(Client, Input, []).
create_key_value_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/key-value-store/"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% metrics:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional
%% in the Amazon CloudFront Developer Guide.
create_monitoring_subscription(Client, DistributionId, Input) ->
    create_monitoring_subscription(Client, DistributionId, Input, []).
create_monitoring_subscription(Client, DistributionId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription/"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new origin access control in CloudFront.
%%
%% After you create an origin access control, you can add it to an origin in
%% a CloudFront distribution so that CloudFront sends authenticated (signed)
%% requests to the origin.
%%
%% This makes it possible to block public access to the origin, allowing
%% viewers (users) to access the origin's content only through
%% CloudFront.
%%
%% For more information about using a CloudFront origin access control, see
%% Restricting access to an Amazon Web Services origin:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html
%% in the Amazon CloudFront Developer Guide.
create_origin_access_control(Client, Input) ->
    create_origin_access_control(Client, Input, []).
create_origin_access_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-access-control"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates an origin request policy.
%%
%% After you create an origin request policy, you can attach it to one or
%% more cache behaviors. When it's attached to a cache behavior, the
%% origin request policy determines the values that CloudFront includes in
%% requests that it sends to the origin. Each request that CloudFront sends
%% to the origin includes the following:
%%
%% <ul> <li> The request body and the URL path (without the domain name) from
%% the viewer request.
%%
%% </li> <li> The headers that CloudFront automatically includes in every
%% origin request, including `Host', `User-Agent', and
%% `X-Amz-Cf-Id'.
%%
%% </li> <li> All HTTP headers, cookies, and URL query strings that are
%% specified in the cache policy or the origin request policy. These can
%% include items from the viewer request and, in the case of headers,
%% additional ones that are added by CloudFront.
%%
%% </li> </ul> CloudFront sends a request when it can't find a valid
%% object in its cache that matches the request. If you want to send values
%% to the origin and also include them in the cache key, use
%% `CachePolicy'.
%%
%% For more information about origin request policies, see Controlling origin
%% requests:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html
%% in the Amazon CloudFront Developer Guide.
create_origin_request_policy(Client, Input) ->
    create_origin_request_policy(Client, Input, []).
create_origin_request_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/origin-request-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% and signed cookies:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html,
%% or with field-level encryption:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html.
create_public_key(Client, Input) ->
    create_public_key(Client, Input, []).
create_public_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/public-key"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% logs:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html
%% in the Amazon CloudFront Developer Guide.
create_realtime_log_config(Client, Input) ->
    create_realtime_log_config(Client, Input, []).
create_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/realtime-log-config"],
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

%% @doc Creates a response headers policy.
%%
%% A response headers policy contains information about a set of HTTP
%% headers. To create a response headers policy, you provide some metadata
%% about the policy and a set of configurations that specify the headers.
%%
%% After you create a response headers policy, you can use its ID to attach
%% it to one or more cache behaviors in a CloudFront distribution. When
%% it's attached to a cache behavior, the response headers policy affects
%% the HTTP headers that CloudFront includes in HTTP responses to requests
%% that match the cache behavior. CloudFront adds or removes response headers
%% according to the configuration of the response headers policy.
%%
%% For more information, see Adding or removing HTTP headers in CloudFront
%% responses:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html
%% in the Amazon CloudFront Developer Guide.
create_response_headers_policy(Client, Input) ->
    create_response_headers_policy(Client, Input, []).
create_response_headers_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/response-headers-policy"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc This API is deprecated.
%%
%% Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
%% distributions on December 31, 2020. For more information, read the
%% announcement: http://forums.aws.amazon.com/ann.jspa?annID=7356 on the
%% Amazon CloudFront discussion forum.
create_streaming_distribution(Client, Input) ->
    create_streaming_distribution(Client, Input, []).
create_streaming_distribution(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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

%% @doc This API is deprecated.
%%
%% Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
%% distributions on December 31, 2020. For more information, read the
%% announcement: http://forums.aws.amazon.com/ann.jspa?annID=7356 on the
%% Amazon CloudFront discussion forum.
create_streaming_distribution_with_tags(Client, Input) ->
    create_streaming_distribution_with_tags(Client, Input, []).
create_streaming_distribution_with_tags(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/streaming-distribution?WithTags"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
%% You cannot delete a cache policy if it's attached to a cache behavior.
%% First update your distributions to remove the cache policy from all cache
%% behaviors, then delete the cache policy.
%%
%% To delete a cache policy, you must provide the policy's identifier and
%% version. To get these values, you can use `ListCachePolicies' or
%% `GetCachePolicy'.
delete_cache_policy(Client, Id, Input) ->
    delete_cache_policy(Client, Id, Input, []).
delete_cache_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an origin access identity.
delete_cloud_front_origin_access_identity(Client, Id, Input) ->
    delete_cloud_front_origin_access_identity(Client, Id, Input, []).
delete_cloud_front_origin_access_identity(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a continuous deployment policy.
%%
%% You cannot delete a continuous deployment policy that's attached to a
%% primary distribution. First update your distribution to remove the
%% continuous deployment policy, then you can delete the policy.
delete_continuous_deployment_policy(Client, Id, Input) ->
    delete_continuous_deployment_policy(Client, Id, Input, []).
delete_continuous_deployment_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a distribution.
delete_distribution(Client, Id, Input) ->
    delete_distribution(Client, Id, Input, []).
delete_distribution(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption configuration.
delete_field_level_encryption_config(Client, Id, Input) ->
    delete_field_level_encryption_config(Client, Id, Input, []).
delete_field_level_encryption_config(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a field-level encryption profile.
delete_field_level_encryption_profile(Client, Id, Input) ->
    delete_field_level_encryption_profile(Client, Id, Input, []).
delete_field_level_encryption_profile(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CloudFront function.
%%
%% You cannot delete a function if it's associated with a cache behavior.
%% First, update your distributions to remove the function association from
%% all cache behaviors, then delete the function.
%%
%% To delete a function, you must provide the function's name and version
%% (`ETag' value). To get these values, you can use `ListFunctions'
%% and `DescribeFunction'.
delete_function(Client, Name, Input) ->
    delete_function(Client, Name, Input, []).
delete_function(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a key group.
%%
%% You cannot delete a key group that is referenced in a cache behavior.
%% First update your distributions to remove the key group from all cache
%% behaviors, then delete the key group.
%%
%% To delete a key group, you must provide the key group's identifier and
%% version. To get these values, use `ListKeyGroups' followed by
%% `GetKeyGroup' or `GetKeyGroupConfig'.
delete_key_group(Client, Id, Input) ->
    delete_key_group(Client, Id, Input, []).
delete_key_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specifies the Key Value Store to delete.
delete_key_value_store(Client, Name, Input) ->
    delete_key_value_store(Client, Name, Input, []).
delete_key_value_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables additional CloudWatch metrics for the specified CloudFront
%% distribution.
delete_monitoring_subscription(Client, DistributionId, Input) ->
    delete_monitoring_subscription(Client, DistributionId, Input, []).
delete_monitoring_subscription(Client, DistributionId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription/"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes a CloudFront origin access control.
%%
%% You cannot delete an origin access control if it's in use. First,
%% update all distributions to remove the origin access control from all
%% origins, then delete the origin access control.
delete_origin_access_control(Client, Id, Input) ->
    delete_origin_access_control(Client, Id, Input, []).
delete_origin_access_control(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an origin request policy.
%%
%% You cannot delete an origin request policy if it's attached to any
%% cache behaviors. First update your distributions to remove the origin
%% request policy from all cache behaviors, then delete the origin request
%% policy.
%%
%% To delete an origin request policy, you must provide the policy's
%% identifier and version. To get the identifier, you can use
%% `ListOriginRequestPolicies' or `GetOriginRequestPolicy'.
delete_origin_request_policy(Client, Id, Input) ->
    delete_origin_request_policy(Client, Id, Input, []).
delete_origin_request_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove a public key you previously added to CloudFront.
delete_public_key(Client, Id, Input) ->
    delete_public_key(Client, Id, Input, []).
delete_public_key(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a real-time log configuration.
%%
%% You cannot delete a real-time log configuration if it's attached to a
%% cache behavior. First update your distributions to remove the real-time
%% log configuration from all cache behaviors, then delete the real-time log
%% configuration.
%%
%% To delete a real-time log configuration, you can provide the
%% configuration's name or its Amazon Resource Name (ARN). You must
%% provide at least one. If you provide both, CloudFront uses the name to
%% identify the real-time log configuration to delete.
delete_realtime_log_config(Client, Input) ->
    delete_realtime_log_config(Client, Input, []).
delete_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/delete-realtime-log-config/"],
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

%% @doc Deletes a response headers policy.
%%
%% You cannot delete a response headers policy if it's attached to a
%% cache behavior. First update your distributions to remove the response
%% headers policy from all cache behaviors, then delete the response headers
%% policy.
%%
%% To delete a response headers policy, you must provide the policy's
%% identifier and version. To get these values, you can use
%% `ListResponseHeadersPolicies' or `GetResponseHeadersPolicy'.
delete_response_headers_policy(Client, Id, Input) ->
    delete_response_headers_policy(Client, Id, Input, []).
delete_response_headers_policy(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a streaming distribution.
%%
%% To delete an RTMP distribution using the CloudFront API, perform the
%% following steps.
%%
%% To delete an RTMP distribution using the CloudFront API:
%%
%% <ol> <li> Disable the RTMP distribution.
%%
%% </li> <li> Submit a `GET Streaming Distribution Config' request to get
%% the current configuration and the `Etag' header for the distribution.
%%
%% </li> <li> Update the XML document that was returned in the response to
%% your `GET Streaming Distribution Config' request to change the value
%% of `Enabled' to `false'.
%%
%% </li> <li> Submit a `PUT Streaming Distribution Config' request to
%% update the configuration for your distribution. In the request body,
%% include the XML document that you updated in Step 3. Then set the value of
%% the HTTP `If-Match' header to the value of the `ETag' header that
%% CloudFront returned when you submitted the `GET Streaming Distribution
%% Config' request in Step 2.
%%
%% </li> <li> Review the response to the `PUT Streaming Distribution
%% Config' request to confirm that the distribution was successfully
%% disabled.
%%
%% </li> <li> Submit a `GET Streaming Distribution Config' request to
%% confirm that your changes have propagated. When propagation is complete,
%% the value of `Status' is `Deployed'.
%%
%% </li> <li> Submit a `DELETE Streaming Distribution' request. Set the
%% value of the HTTP `If-Match' header to the value of the `ETag'
%% header that CloudFront returned when you submitted the `GET Streaming
%% Distribution Config' request in Step 2.
%%
%% </li> <li> Review the response to your `DELETE Streaming Distribution'
%% request to confirm that the distribution was successfully deleted.
%%
%% </li> </ol> For information about deleting a distribution using the
%% CloudFront console, see Deleting a Distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
%% in the Amazon CloudFront Developer Guide.
delete_streaming_distribution(Client, Id, Input) ->
    delete_streaming_distribution(Client, Id, Input, []).
delete_streaming_distribution(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets configuration information and metadata about a CloudFront
%% function, but not the function's code.
%%
%% To get a function's code, use `GetFunction'.
%%
%% To get configuration information and metadata about a function, you must
%% provide the function's name and stage. To get these values, you can
%% use `ListFunctions'.
describe_function(Client, Name)
  when is_map(Client) ->
    describe_function(Client, Name, #{}, #{}).

describe_function(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_function(Client, Name, QueryMap, HeadersMap, []).

describe_function(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/describe"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

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

%% @doc Specifies the Key Value Store and its configuration.
describe_key_value_store(Client, Name)
  when is_map(Client) ->
    describe_key_value_store(Client, Name, #{}, #{}).

describe_key_value_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key_value_store(Client, Name, QueryMap, HeadersMap, []).

describe_key_value_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets a cache policy, including the following metadata:
%%
%% <ul> <li> The policy's identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get a cache policy, you must provide the policy's
%% identifier. If the cache policy is attached to a distribution's cache
%% behavior, you can get the policy's identifier using
%% `ListDistributions' or `GetDistribution'. If the cache policy is
%% not attached to a cache behavior, you can get the identifier using
%% `ListCachePolicies'.
get_cache_policy(Client, Id)
  when is_map(Client) ->
    get_cache_policy(Client, Id, #{}, #{}).

get_cache_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cache_policy(Client, Id, QueryMap, HeadersMap, []).

get_cache_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% To get a cache policy configuration, you must provide the policy's
%% identifier. If the cache policy is attached to a distribution's cache
%% behavior, you can get the policy's identifier using
%% `ListDistributions' or `GetDistribution'. If the cache policy is
%% not attached to a cache behavior, you can get the identifier using
%% `ListCachePolicies'.
get_cache_policy_config(Client, Id)
  when is_map(Client) ->
    get_cache_policy_config(Client, Id, #{}, #{}).

get_cache_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cache_policy_config(Client, Id, QueryMap, HeadersMap, []).

get_cache_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_cloud_front_origin_access_identity(Client, Id, #{}, #{}).

get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap, []).

get_cloud_front_origin_access_identity(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_cloud_front_origin_access_identity_config(Client, Id, #{}, #{}).

get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap, []).

get_cloud_front_origin_access_identity_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets a continuous deployment policy, including metadata (the
%% policy's identifier and the date and time when the policy was last
%% modified).
get_continuous_deployment_policy(Client, Id)
  when is_map(Client) ->
    get_continuous_deployment_policy(Client, Id, #{}, #{}).

get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap, []).

get_continuous_deployment_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets configuration information about a continuous deployment policy.
get_continuous_deployment_policy_config(Client, Id)
  when is_map(Client) ->
    get_continuous_deployment_policy_config(Client, Id, #{}, #{}).

get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap, []).

get_continuous_deployment_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_distribution(Client, Id, #{}, #{}).

get_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution(Client, Id, QueryMap, HeadersMap, []).

get_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_distribution_config(Client, Id, #{}, #{}).

get_distribution_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_distribution_config(Client, Id, QueryMap, HeadersMap, []).

get_distribution_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_field_level_encryption(Client, Id, #{}, #{}).

get_field_level_encryption(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption(Client, Id, QueryMap, HeadersMap, []).

get_field_level_encryption(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_field_level_encryption_config(Client, Id, #{}, #{}).

get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap, []).

get_field_level_encryption_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_field_level_encryption_profile(Client, Id, #{}, #{}).

get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap, []).

get_field_level_encryption_profile(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_field_level_encryption_profile_config(Client, Id, #{}, #{}).

get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap, []).

get_field_level_encryption_profile_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets the code of a CloudFront function.
%%
%% To get configuration information and metadata about a function, use
%% `DescribeFunction'.
%%
%% To get a function's code, you must provide the function's name and
%% stage. To get these values, you can use `ListFunctions'.
get_function(Client, Name)
  when is_map(Client) ->
    get_function(Client, Name, #{}, #{}).

get_function(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_function(Client, Name, QueryMap, HeadersMap, []).

get_function(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>},
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
    get_invalidation(Client, DistributionId, Id, #{}, #{}).

get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap, []).

get_invalidation(Client, DistributionId, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a key group, including the date and time when the key group was
%% last modified.
%%
%% To get a key group, you must provide the key group's identifier. If
%% the key group is referenced in a distribution's cache behavior, you
%% can get the key group's identifier using `ListDistributions' or
%% `GetDistribution'. If the key group is not referenced in a cache
%% behavior, you can get the identifier using `ListKeyGroups'.
get_key_group(Client, Id)
  when is_map(Client) ->
    get_key_group(Client, Id, #{}, #{}).

get_key_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_key_group(Client, Id, QueryMap, HeadersMap, []).

get_key_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% To get a key group configuration, you must provide the key group's
%% identifier. If the key group is referenced in a distribution's cache
%% behavior, you can get the key group's identifier using
%% `ListDistributions' or `GetDistribution'. If the key group is not
%% referenced in a cache behavior, you can get the identifier using
%% `ListKeyGroups'.
get_key_group_config(Client, Id)
  when is_map(Client) ->
    get_key_group_config(Client, Id, #{}, #{}).

get_key_group_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_key_group_config(Client, Id, QueryMap, HeadersMap, []).

get_key_group_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_monitoring_subscription(Client, DistributionId, #{}, #{}).

get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap, []).

get_monitoring_subscription(Client, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributions/", aws_util:encode_uri(DistributionId), "/monitoring-subscription/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a CloudFront origin access control, including its unique
%% identifier.
get_origin_access_control(Client, Id)
  when is_map(Client) ->
    get_origin_access_control(Client, Id, #{}, #{}).

get_origin_access_control(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_access_control(Client, Id, QueryMap, HeadersMap, []).

get_origin_access_control(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets a CloudFront origin access control configuration.
get_origin_access_control_config(Client, Id)
  when is_map(Client) ->
    get_origin_access_control_config(Client, Id, #{}, #{}).

get_origin_access_control_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_access_control_config(Client, Id, QueryMap, HeadersMap, []).

get_origin_access_control_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets an origin request policy, including the following metadata:
%%
%% <ul> <li> The policy's identifier.
%%
%% </li> <li> The date and time when the policy was last modified.
%%
%% </li> </ul> To get an origin request policy, you must provide the
%% policy's identifier. If the origin request policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the origin
%% request policy is not attached to a cache behavior, you can get the
%% identifier using `ListOriginRequestPolicies'.
get_origin_request_policy(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy(Client, Id, #{}, #{}).

get_origin_request_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_request_policy(Client, Id, QueryMap, HeadersMap, []).

get_origin_request_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% policy's identifier. If the origin request policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the origin
%% request policy is not attached to a cache behavior, you can get the
%% identifier using `ListOriginRequestPolicies'.
get_origin_request_policy_config(Client, Id)
  when is_map(Client) ->
    get_origin_request_policy_config(Client, Id, #{}, #{}).

get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap, []).

get_origin_request_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_public_key(Client, Id, #{}, #{}).

get_public_key(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_key(Client, Id, QueryMap, HeadersMap, []).

get_public_key(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_public_key_config(Client, Id, #{}, #{}).

get_public_key_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_key_config(Client, Id, QueryMap, HeadersMap, []).

get_public_key_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% To get a real-time log configuration, you can provide the
%% configuration's name or its Amazon Resource Name (ARN). You must
%% provide at least one. If you provide both, CloudFront uses the name to
%% identify the real-time log configuration to get.
get_realtime_log_config(Client, Input) ->
    get_realtime_log_config(Client, Input, []).
get_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/get-realtime-log-config/"],
    SuccessStatusCode = undefined,
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

%% @doc Gets a response headers policy, including metadata (the policy's
%% identifier and the date and time when the policy was last modified).
%%
%% To get a response headers policy, you must provide the policy's
%% identifier. If the response headers policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the response
%% headers policy is not attached to a cache behavior, you can get the
%% identifier using `ListResponseHeadersPolicies'.
get_response_headers_policy(Client, Id)
  when is_map(Client) ->
    get_response_headers_policy(Client, Id, #{}, #{}).

get_response_headers_policy(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_headers_policy(Client, Id, QueryMap, HeadersMap, []).

get_response_headers_policy(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets a response headers policy configuration.
%%
%% To get a response headers policy configuration, you must provide the
%% policy's identifier. If the response headers policy is attached to a
%% distribution's cache behavior, you can get the policy's identifier
%% using `ListDistributions' or `GetDistribution'. If the response
%% headers policy is not attached to a cache behavior, you can get the
%% identifier using `ListResponseHeadersPolicies'.
get_response_headers_policy_config(Client, Id)
  when is_map(Client) ->
    get_response_headers_policy_config(Client, Id, #{}, #{}).

get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap, []).

get_response_headers_policy_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Gets information about a specified RTMP distribution, including the
%% distribution configuration.
get_streaming_distribution(Client, Id)
  when is_map(Client) ->
    get_streaming_distribution(Client, Id, #{}, #{}).

get_streaming_distribution(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_distribution(Client, Id, QueryMap, HeadersMap, []).

get_streaming_distribution(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
    get_streaming_distribution_config(Client, Id, #{}, #{}).

get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap, []).

get_streaming_distribution_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% created by Amazon Web Services, or only the custom policies created in
%% your Amazon Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_cache_policies(Client)
  when is_map(Client) ->
    list_cache_policies(Client, #{}, #{}).

list_cache_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cache_policies(Client, QueryMap, HeadersMap, []).

list_cache_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/cache-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists origin access identities.
list_cloud_front_origin_access_identities(Client)
  when is_map(Client) ->
    list_cloud_front_origin_access_identities(Client, #{}, #{}).

list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap, []).

list_cloud_front_origin_access_identities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-identity/cloudfront"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of aliases (also called CNAMEs or alternate domain names)
%% that conflict or overlap with the provided alias, and the associated
%% CloudFront distributions and Amazon Web Services accounts for each
%% conflicting alias.
%%
%% In the returned list, the distribution and account IDs are partially
%% hidden, which allows you to identify the distributions and accounts that
%% you own, but helps to protect the information of ones that you don't
%% own.
%%
%% Use this operation to find aliases that are in use in CloudFront that
%% conflict or overlap with the provided alias. For example, if you provide
%% `www.example.com' as input, the returned list can include
%% `www.example.com' and the overlapping wildcard alternate domain name
%% (`*.example.com'), if they exist. If you provide `*.example.com'
%% as input, the returned list can include `*.example.com' and any
%% alternate domain names covered by that wildcard (for example,
%% `www.example.com', `test.example.com', `dev.example.com', and
%% so on), if they exist.
%%
%% To list conflicting aliases, you provide the alias to search and the ID of
%% a distribution in your account that has an attached SSL/TLS certificate
%% that includes the provided alias. For more information, including how to
%% set up the distribution and certificate, see Moving an alternate domain
%% name to a different distribution:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move
%% in the Amazon CloudFront Developer Guide.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_conflicting_aliases(Client, Alias, DistributionId)
  when is_map(Client) ->
    list_conflicting_aliases(Client, Alias, DistributionId, #{}, #{}).

list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap, []).

list_conflicting_aliases(Client, Alias, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/conflicting-alias"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Alias">>, Alias},
        {<<"DistributionId">>, DistributionId},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the continuous deployment policies in your Amazon Web
%% Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_continuous_deployment_policies(Client)
  when is_map(Client) ->
    list_continuous_deployment_policies(Client, #{}, #{}).

list_continuous_deployment_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_continuous_deployment_policies(Client, QueryMap, HeadersMap, []).

list_continuous_deployment_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/continuous-deployment-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List CloudFront distributions.
list_distributions(Client)
  when is_map(Client) ->
    list_distributions(Client, #{}, #{}).

list_distributions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions(Client, QueryMap, HeadersMap, []).

list_distributions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified cache policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_distributions_by_cache_policy_id(Client, CachePolicyId)
  when is_map(Client) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, #{}, #{}).

list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap, []).

list_distributions_by_cache_policy_id(Client, CachePolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByCachePolicyId/", aws_util:encode_uri(CachePolicyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
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
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_distributions_by_key_group(Client, KeyGroupId)
  when is_map(Client) ->
    list_distributions_by_key_group(Client, KeyGroupId, #{}, #{}).

list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap, []).

list_distributions_by_key_group(Client, KeyGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByKeyGroupId/", aws_util:encode_uri(KeyGroupId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified origin request policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId)
  when is_map(Client) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, #{}, #{}).

list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap, []).

list_distributions_by_origin_request_policy_id(Client, OriginRequestPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByOriginRequestPolicyId/", aws_util:encode_uri(OriginRequestPolicyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of distributions that have a cache behavior that's
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
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_distributions_by_realtime_log_config(Client, Input) ->
    list_distributions_by_realtime_log_config(Client, Input, []).
list_distributions_by_realtime_log_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/distributionsByRealtimeLogConfig/"],
    SuccessStatusCode = undefined,
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

%% @doc Gets a list of distribution IDs for distributions that have a cache
%% behavior that's associated with the specified response headers policy.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId)
  when is_map(Client) ->
    list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, #{}, #{}).

list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap, []).

list_distributions_by_response_headers_policy_id(Client, ResponseHeadersPolicyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByResponseHeadersPolicyId/", aws_util:encode_uri(ResponseHeadersPolicyId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the distributions that are associated with a specified WAF web
%% ACL.
list_distributions_by_web_acl_id(Client, WebACLId)
  when is_map(Client) ->
    list_distributions_by_web_acl_id(Client, WebACLId, #{}, #{}).

list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap, []).

list_distributions_by_web_acl_id(Client, WebACLId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distributionsByWebACLId/", aws_util:encode_uri(WebACLId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all field-level encryption configurations that have been created
%% in CloudFront for this account.
list_field_level_encryption_configs(Client)
  when is_map(Client) ->
    list_field_level_encryption_configs(Client, #{}, #{}).

list_field_level_encryption_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_field_level_encryption_configs(Client, QueryMap, HeadersMap, []).

list_field_level_encryption_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request a list of field-level encryption profiles that have been
%% created in CloudFront for this account.
list_field_level_encryption_profiles(Client)
  when is_map(Client) ->
    list_field_level_encryption_profiles(Client, #{}, #{}).

list_field_level_encryption_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_field_level_encryption_profiles(Client, QueryMap, HeadersMap, []).

list_field_level_encryption_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/field-level-encryption-profile"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of all CloudFront functions in your Amazon Web Services
%% account.
%%
%% You can optionally apply a filter to return only the functions that are in
%% the specified stage, either `DEVELOPMENT' or `LIVE'.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_functions(Client)
  when is_map(Client) ->
    list_functions(Client, #{}, #{}).

list_functions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_functions(Client, QueryMap, HeadersMap, []).

list_functions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/function"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Stage">>, maps:get(<<"Stage">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists invalidation batches.
list_invalidations(Client, DistributionId)
  when is_map(Client) ->
    list_invalidations(Client, DistributionId, #{}, #{}).

list_invalidations(Client, DistributionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invalidations(Client, DistributionId, QueryMap, HeadersMap, []).

list_invalidations(Client, DistributionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(DistributionId), "/invalidation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of key groups.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_key_groups(Client)
  when is_map(Client) ->
    list_key_groups(Client, #{}, #{}).

list_key_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_key_groups(Client, QueryMap, HeadersMap, []).

list_key_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-group"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Specifies the Key Value Stores to list.
list_key_value_stores(Client)
  when is_map(Client) ->
    list_key_value_stores(Client, #{}, #{}).

list_key_value_stores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_key_value_stores(Client, QueryMap, HeadersMap, []).

list_key_value_stores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/key-value-store"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the list of CloudFront origin access controls in this Amazon Web
%% Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send another request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the next request.
list_origin_access_controls(Client)
  when is_map(Client) ->
    list_origin_access_controls(Client, #{}, #{}).

list_origin_access_controls(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_access_controls(Client, QueryMap, HeadersMap, []).

list_origin_access_controls(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-access-control"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of origin request policies.
%%
%% You can optionally apply a filter to return only the managed policies
%% created by Amazon Web Services, or only the custom policies created in
%% your Amazon Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_origin_request_policies(Client)
  when is_map(Client) ->
    list_origin_request_policies(Client, #{}, #{}).

list_origin_request_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_request_policies(Client, QueryMap, HeadersMap, []).

list_origin_request_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/origin-request-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all public keys that have been added to CloudFront for this
%% account.
list_public_keys(Client)
  when is_map(Client) ->
    list_public_keys(Client, #{}, #{}).

list_public_keys(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_public_keys(Client, QueryMap, HeadersMap, []).

list_public_keys(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/public-key"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of real-time log configurations.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_realtime_log_configs(Client)
  when is_map(Client) ->
    list_realtime_log_configs(Client, #{}, #{}).

list_realtime_log_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_realtime_log_configs(Client, QueryMap, HeadersMap, []).

list_realtime_log_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/realtime-log-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of response headers policies.
%%
%% You can optionally apply a filter to get only the managed policies created
%% by Amazon Web Services, or only the custom policies created in your Amazon
%% Web Services account.
%%
%% You can optionally specify the maximum number of items to receive in the
%% response. If the total number of items in the list exceeds the maximum
%% that you specify, or the default maximum, the response is paginated. To
%% get the next page of items, send a subsequent request that specifies the
%% `NextMarker' value from the current response as the `Marker' value
%% in the subsequent request.
list_response_headers_policies(Client)
  when is_map(Client) ->
    list_response_headers_policies(Client, #{}, #{}).

list_response_headers_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_response_headers_policies(Client, QueryMap, HeadersMap, []).

list_response_headers_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/response-headers-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"Type">>, maps:get(<<"Type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List streaming distributions.
list_streaming_distributions(Client)
  when is_map(Client) ->
    list_streaming_distributions(Client, #{}, #{}).

list_streaming_distributions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_distributions(Client, QueryMap, HeadersMap, []).

list_streaming_distributions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/streaming-distribution"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List tags for a CloudFront resource.
list_tags_for_resource(Client, Resource)
  when is_map(Client) ->
    list_tags_for_resource(Client, Resource, #{}, #{}).

list_tags_for_resource(Client, Resource, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Resource, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, Resource, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-05-31/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Resource">>, Resource}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Publishes a CloudFront function by copying the function code from the
%% `DEVELOPMENT' stage to `LIVE'.
%%
%% This automatically updates all cache behaviors that are using this
%% function to use the newly published copy in the `LIVE' stage.
%%
%% When a function is published to the `LIVE' stage, you can attach the
%% function to a distribution's cache behavior, using the function's
%% Amazon Resource Name (ARN).
%%
%% To publish a function, you must provide the function's name and
%% version (`ETag' value). To get these values, you can use
%% `ListFunctions' and `DescribeFunction'.
publish_function(Client, Name, Input) ->
    publish_function(Client, Name, Input, []).
publish_function(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/publish"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add tags to a CloudFront resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Tag"],
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
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tests a CloudFront function.
%%
%% To test a function, you provide an event object that represents an HTTP
%% request or response that your CloudFront distribution could receive in
%% production. CloudFront runs the function, passing it the event object that
%% you provided, and returns the function's result (the modified event
%% object) in the response. The response also contains function logs and
%% error messages, if any exist. For more information about testing
%% functions, see Testing functions:
%% https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function
%% in the Amazon CloudFront Developer Guide.
%%
%% To test a function, you provide the function's name and version
%% (`ETag' value) along with the event object. To get the function's
%% name and version, you can use `ListFunctions' and
%% `DescribeFunction'.
test_function(Client, Name, Input) ->
    test_function(Client, Name, Input, []).
test_function(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), "/test"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove tags from a CloudFront resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-05-31/tagging?Operation=Untag"],
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
                     {<<"Resource">>, <<"Resource">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
%% </li> <li> Call `UpdateCachePolicy' by providing the entire cache
%% policy configuration, including the fields that you modified and those
%% that you didn't.
%%
%% </li> </ol>
update_cache_policy(Client, Id, Input) ->
    update_cache_policy(Client, Id, Input, []).
update_cache_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/cache-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
update_cloud_front_origin_access_identity(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-access-identity/cloudfront/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Updates a continuous deployment policy.
%%
%% You can update a continuous deployment policy to enable or disable it, to
%% change the percentage of traffic that it sends to the staging
%% distribution, or to change the staging distribution that it sends traffic
%% to.
%%
%% When you update a continuous deployment policy configuration, all the
%% fields are updated with the values that are provided in the request. You
%% cannot update some fields independent of others. To update a continuous
%% deployment policy configuration:
%%
%% <ol> <li> Use `GetContinuousDeploymentPolicyConfig' to get the current
%% configuration.
%%
%% </li> <li> Locally modify the fields in the continuous deployment policy
%% configuration that you want to update.
%%
%% </li> <li> Use `UpdateContinuousDeploymentPolicy', providing the
%% entire continuous deployment policy configuration, including the fields
%% that you modified and those that you didn't.
%%
%% </li> </ol>
update_continuous_deployment_policy(Client, Id, Input) ->
    update_continuous_deployment_policy(Client, Id, Input, []).
update_continuous_deployment_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/continuous-deployment-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Updates the configuration for a CloudFront distribution.
%%
%% The update process includes getting the current distribution
%% configuration, updating it to make your changes, and then submitting an
%% `UpdateDistribution' request to make the updates.
%%
%% To update a web distribution using the CloudFront API
%%
%% <ol> <li> Use `GetDistributionConfig' to get the current
%% configuration, including the version identifier (`ETag').
%%
%% </li> <li> Update the distribution configuration that was returned in the
%% response. Note the following important requirements and restrictions:
%%
%% <ul> <li> You must rename the `ETag' field to `IfMatch', leaving
%% the value unchanged. (Set the value of `IfMatch' to the value of
%% `ETag', then remove the `ETag' field.)
%%
%% </li> <li> You can't change the value of `CallerReference'.
%%
%% </li> </ul> </li> <li> Submit an `UpdateDistribution' request,
%% providing the distribution configuration. The new configuration replaces
%% the existing configuration. The values that you specify in an
%% `UpdateDistribution' request are not merged into your existing
%% configuration. Make sure to include all fields: the ones that you modified
%% and also the ones that you didn't.
%%
%% </li> </ol>
update_distribution(Client, Id, Input) ->
    update_distribution(Client, Id, Input, []).
update_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Copies the staging distribution's configuration to its
%% corresponding primary distribution.
%%
%% The primary distribution retains its `Aliases' (also known as
%% alternate domain names or CNAMEs) and `ContinuousDeploymentPolicyId'
%% value, but otherwise its configuration is overwritten to match the staging
%% distribution.
%%
%% You can use this operation in a continuous deployment workflow after you
%% have tested configuration changes on the staging distribution. After using
%% a continuous deployment policy to move a portion of your domain name's
%% traffic to the staging distribution and verifying that it works as
%% intended, you can use this operation to copy the staging
%% distribution's configuration to the primary distribution. This action
%% will disable the continuous deployment policy and move your domain's
%% traffic back to the primary distribution.
%%
%% This API operation requires the following IAM permissions:
%%
%% <ul> <li> GetDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html
%%
%% </li> <li> UpdateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
%%
%% </li> </ul>
update_distribution_with_staging_config(Client, Id, Input) ->
    update_distribution_with_staging_config(Client, Id, Input, []).
update_distribution_with_staging_config(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/distribution/", aws_util:encode_uri(Id), "/promote-staging-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"StagingDistributionId">>, <<"StagingDistributionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
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
update_field_level_encryption_config(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
update_field_level_encryption_profile(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/field-level-encryption-profile/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Updates a CloudFront function.
%%
%% You can update a function's code or the comment that describes the
%% function. You cannot update a function's name.
%%
%% To update a function, you provide the function's name and version
%% (`ETag' value) along with the updated function code. To get the name
%% and version, you can use `ListFunctions' and `DescribeFunction'.
update_function(Client, Name, Input) ->
    update_function(Client, Name, Input, []).
update_function(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/function/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
            {<<"ETtag">>, <<"ETag">>}
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
%% including the fields that you modified and those that you didn't.
%%
%% </li> </ol>
update_key_group(Client, Id, Input) ->
    update_key_group(Client, Id, Input, []).
update_key_group(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/key-group/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Specifies the Key Value Store to update.
update_key_value_store(Client, Name, Input) ->
    update_key_value_store(Client, Name, Input, []).
update_key_value_store(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/key-value-store/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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

%% @doc Updates a CloudFront origin access control.
update_origin_access_control(Client, Id, Input) ->
    update_origin_access_control(Client, Id, Input, []).
update_origin_access_control(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-access-control/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
%% </li> <li> Call `UpdateOriginRequestPolicy' by providing the entire
%% origin request policy configuration, including the fields that you
%% modified and those that you didn't.
%%
%% </li> </ol>
update_origin_request_policy(Client, Id, Input) ->
    update_origin_request_policy(Client, Id, Input, []).
update_origin_request_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/origin-request-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
update_public_key(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/public-key/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
%% modified and those that you didn't.
%%
%% </li> </ol> You cannot update a real-time log configuration's
%% `Name' or `ARN'.
update_realtime_log_config(Client, Input) ->
    update_realtime_log_config(Client, Input, []).
update_realtime_log_config(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/realtime-log-config/"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a response headers policy.
%%
%% When you update a response headers policy, the entire policy is replaced.
%% You cannot update some policy fields independent of others. To update a
%% response headers policy configuration:
%%
%% <ol> <li> Use `GetResponseHeadersPolicyConfig' to get the current
%% policy's configuration.
%%
%% </li> <li> Modify the fields in the response headers policy configuration
%% that you want to update.
%%
%% </li> <li> Call `UpdateResponseHeadersPolicy', providing the entire
%% response headers policy configuration, including the fields that you
%% modified and those that you didn't.
%%
%% </li> </ol>
update_response_headers_policy(Client, Id, Input) ->
    update_response_headers_policy(Client, Id, Input, []).
update_response_headers_policy(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/response-headers-policy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
update_streaming_distribution(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2020-05-31/streaming-distribution/", aws_util:encode_uri(Id), "/config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"If-Match">>, <<"IfMatch">>}
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
    Client1 = Client#{service => <<"cloudfront">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"cloudfront">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"text/xml">>}
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
                           aws_util:decode_xml(Body)
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
      DecodedError = aws_util:decode_xml(Body),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
