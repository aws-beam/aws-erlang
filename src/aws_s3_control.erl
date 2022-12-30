%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services S3 Control provides access to Amazon S3 control
%% plane actions.
-module(aws_s3_control).

-export([create_access_point/3,
         create_access_point/4,
         create_access_point_for_object_lambda/3,
         create_access_point_for_object_lambda/4,
         create_bucket/3,
         create_bucket/4,
         create_job/2,
         create_job/3,
         create_multi_region_access_point/2,
         create_multi_region_access_point/3,
         delete_access_point/3,
         delete_access_point/4,
         delete_access_point_for_object_lambda/3,
         delete_access_point_for_object_lambda/4,
         delete_access_point_policy/3,
         delete_access_point_policy/4,
         delete_access_point_policy_for_object_lambda/3,
         delete_access_point_policy_for_object_lambda/4,
         delete_bucket/3,
         delete_bucket/4,
         delete_bucket_lifecycle_configuration/3,
         delete_bucket_lifecycle_configuration/4,
         delete_bucket_policy/3,
         delete_bucket_policy/4,
         delete_bucket_tagging/3,
         delete_bucket_tagging/4,
         delete_job_tagging/3,
         delete_job_tagging/4,
         delete_multi_region_access_point/2,
         delete_multi_region_access_point/3,
         delete_public_access_block/2,
         delete_public_access_block/3,
         delete_storage_lens_configuration/3,
         delete_storage_lens_configuration/4,
         delete_storage_lens_configuration_tagging/3,
         delete_storage_lens_configuration_tagging/4,
         describe_job/3,
         describe_job/5,
         describe_job/6,
         describe_multi_region_access_point_operation/3,
         describe_multi_region_access_point_operation/5,
         describe_multi_region_access_point_operation/6,
         get_access_point/3,
         get_access_point/5,
         get_access_point/6,
         get_access_point_configuration_for_object_lambda/3,
         get_access_point_configuration_for_object_lambda/5,
         get_access_point_configuration_for_object_lambda/6,
         get_access_point_for_object_lambda/3,
         get_access_point_for_object_lambda/5,
         get_access_point_for_object_lambda/6,
         get_access_point_policy/3,
         get_access_point_policy/5,
         get_access_point_policy/6,
         get_access_point_policy_for_object_lambda/3,
         get_access_point_policy_for_object_lambda/5,
         get_access_point_policy_for_object_lambda/6,
         get_access_point_policy_status/3,
         get_access_point_policy_status/5,
         get_access_point_policy_status/6,
         get_access_point_policy_status_for_object_lambda/3,
         get_access_point_policy_status_for_object_lambda/5,
         get_access_point_policy_status_for_object_lambda/6,
         get_bucket/3,
         get_bucket/5,
         get_bucket/6,
         get_bucket_lifecycle_configuration/3,
         get_bucket_lifecycle_configuration/5,
         get_bucket_lifecycle_configuration/6,
         get_bucket_policy/3,
         get_bucket_policy/5,
         get_bucket_policy/6,
         get_bucket_tagging/3,
         get_bucket_tagging/5,
         get_bucket_tagging/6,
         get_bucket_versioning/3,
         get_bucket_versioning/5,
         get_bucket_versioning/6,
         get_job_tagging/3,
         get_job_tagging/5,
         get_job_tagging/6,
         get_multi_region_access_point/3,
         get_multi_region_access_point/5,
         get_multi_region_access_point/6,
         get_multi_region_access_point_policy/3,
         get_multi_region_access_point_policy/5,
         get_multi_region_access_point_policy/6,
         get_multi_region_access_point_policy_status/3,
         get_multi_region_access_point_policy_status/5,
         get_multi_region_access_point_policy_status/6,
         get_multi_region_access_point_routes/3,
         get_multi_region_access_point_routes/5,
         get_multi_region_access_point_routes/6,
         get_public_access_block/2,
         get_public_access_block/4,
         get_public_access_block/5,
         get_storage_lens_configuration/3,
         get_storage_lens_configuration/5,
         get_storage_lens_configuration/6,
         get_storage_lens_configuration_tagging/3,
         get_storage_lens_configuration_tagging/5,
         get_storage_lens_configuration_tagging/6,
         list_access_points/2,
         list_access_points/4,
         list_access_points/5,
         list_access_points_for_object_lambda/2,
         list_access_points_for_object_lambda/4,
         list_access_points_for_object_lambda/5,
         list_jobs/2,
         list_jobs/4,
         list_jobs/5,
         list_multi_region_access_points/2,
         list_multi_region_access_points/4,
         list_multi_region_access_points/5,
         list_regional_buckets/2,
         list_regional_buckets/4,
         list_regional_buckets/5,
         list_storage_lens_configurations/2,
         list_storage_lens_configurations/4,
         list_storage_lens_configurations/5,
         put_access_point_configuration_for_object_lambda/3,
         put_access_point_configuration_for_object_lambda/4,
         put_access_point_policy/3,
         put_access_point_policy/4,
         put_access_point_policy_for_object_lambda/3,
         put_access_point_policy_for_object_lambda/4,
         put_bucket_lifecycle_configuration/3,
         put_bucket_lifecycle_configuration/4,
         put_bucket_policy/3,
         put_bucket_policy/4,
         put_bucket_tagging/3,
         put_bucket_tagging/4,
         put_bucket_versioning/3,
         put_bucket_versioning/4,
         put_job_tagging/3,
         put_job_tagging/4,
         put_multi_region_access_point_policy/2,
         put_multi_region_access_point_policy/3,
         put_public_access_block/2,
         put_public_access_block/3,
         put_storage_lens_configuration/3,
         put_storage_lens_configuration/4,
         put_storage_lens_configuration_tagging/3,
         put_storage_lens_configuration_tagging/4,
         submit_multi_region_access_point_routes/3,
         submit_multi_region_access_point_routes/4,
         update_job_priority/3,
         update_job_priority/4,
         update_job_status/3,
         update_job_status/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an access point and associates it with the specified bucket.
%%
%% For more information, see Managing Data Access with Amazon S3 Access
%% Points in the Amazon S3 User Guide.
%%
%% S3 on Outposts only supports VPC-style access points.
%%
%% For more information, see Accessing Amazon S3 on Outposts using virtual
%% private cloud (VPC) only access points in the Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `CreateAccessPoint':
%%
%% <ul> <li> GetAccessPoint
%%
%% </li> <li> DeleteAccessPoint
%%
%% </li> <li> ListAccessPoints
%%
%% </li> </ul>
create_access_point(Client, Name, Input) ->
    create_access_point(Client, Name, Input, []).
create_access_point(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Object Lambda Access Point.
%%
%% For more information, see Transforming objects with Object Lambda Access
%% Points in the Amazon S3 User Guide.
%%
%% The following actions are related to `CreateAccessPointForObjectLambda':
%%
%% <ul> <li> DeleteAccessPointForObjectLambda
%%
%% </li> <li> GetAccessPointForObjectLambda
%%
%% </li> <li> ListAccessPointsForObjectLambda
%%
%% </li> </ul>
create_access_point_for_object_lambda(Client, Name, Input) ->
    create_access_point_for_object_lambda(Client, Name, Input, []).
create_access_point_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action creates an Amazon S3 on Outposts bucket.
%%
%% To create an S3 bucket, see Create Bucket in the Amazon S3 API Reference.
%%
%% Creates a new Outposts bucket. By creating the bucket, you become the
%% bucket owner. To create an Outposts bucket, you must have S3 on Outposts.
%% For more information, see Using Amazon S3 on Outposts in Amazon S3 User
%% Guide.
%%
%% Not every string is an acceptable bucket name. For information on bucket
%% naming restrictions, see Working with Amazon S3 Buckets.
%%
%% S3 on Outposts buckets support:
%%
%% <ul> <li> Tags
%%
%% </li> <li> LifecycleConfigurations for deleting expired objects
%%
%% </li> </ul> For a complete list of restrictions and Amazon S3 feature
%% limitations on S3 on Outposts, see Amazon S3 on Outposts Restrictions and
%% Limitations.
%%
%% For an example of the request syntax for Amazon S3 on Outposts that uses
%% the S3 on Outposts endpoint hostname prefix and `x-amz-outpost-id' in your
%% API request, see the Examples section.
%%
%% The following actions are related to `CreateBucket' for Amazon S3 on
%% Outposts:
%%
%% <ul> <li> PutObject
%%
%% </li> <li> GetBucket
%%
%% </li> <li> DeleteBucket
%%
%% </li> <li> CreateAccessPoint
%%
%% </li> <li> PutAccessPointPolicy
%%
%% </li> </ul>
create_bucket(Client, Bucket, Input) ->
    create_bucket(Client, Bucket, Input, []).
create_bucket(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-bucket-object-lock-enabled">>, <<"ObjectLockEnabledForBucket">>},
                       {<<"x-amz-outpost-id">>, <<"OutpostId">>}
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

%% @doc You can use S3 Batch Operations to perform large-scale batch actions
%% on Amazon S3 objects.
%%
%% Batch Operations can run a single action on lists of Amazon S3 objects
%% that you specify. For more information, see S3 Batch Operations in the
%% Amazon S3 User Guide.
%%
%% This action creates a S3 Batch Operations job.
%%
%% Related actions include:
%%
%% <ul> <li> DescribeJob
%%
%% </li> <li> ListJobs
%%
%% </li> <li> UpdateJobPriority
%%
%% </li> <li> UpdateJobStatus
%%
%% </li> <li> JobOperation
%%
%% </li> </ul>
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a Multi-Region Access Point and associates it with the
%% specified buckets.
%%
%% For more information about creating Multi-Region Access Points, see
%% Creating Multi-Region Access Points in the Amazon S3 User Guide.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% This request is asynchronous, meaning that you might receive a response
%% before the command has completed. When this request provides a response,
%% it provides a token that you can use to monitor the status of the request
%% with `DescribeMultiRegionAccessPointOperation'.
%%
%% The following actions are related to `CreateMultiRegionAccessPoint':
%%
%% <ul> <li> DeleteMultiRegionAccessPoint
%%
%% </li> <li> DescribeMultiRegionAccessPointOperation
%%
%% </li> <li> GetMultiRegionAccessPoint
%%
%% </li> <li> ListMultiRegionAccessPoints
%%
%% </li> </ul>
create_multi_region_access_point(Client, Input) ->
    create_multi_region_access_point(Client, Input, []).
create_multi_region_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/create"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `DeleteAccessPoint':
%%
%% <ul> <li> CreateAccessPoint
%%
%% </li> <li> GetAccessPoint
%%
%% </li> <li> ListAccessPoints
%%
%% </li> </ul>
delete_access_point(Client, Name, Input) ->
    delete_access_point(Client, Name, Input, []).
delete_access_point(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified Object Lambda Access Point.
%%
%% The following actions are related to `DeleteAccessPointForObjectLambda':
%%
%% <ul> <li> CreateAccessPointForObjectLambda
%%
%% </li> <li> GetAccessPointForObjectLambda
%%
%% </li> <li> ListAccessPointsForObjectLambda
%%
%% </li> </ul>
delete_access_point_for_object_lambda(Client, Name, Input) ->
    delete_access_point_for_object_lambda(Client, Name, Input, []).
delete_access_point_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the access point policy for the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `DeleteAccessPointPolicy':
%%
%% <ul> <li> PutAccessPointPolicy
%%
%% </li> <li> GetAccessPointPolicy
%%
%% </li> </ul>
delete_access_point_policy(Client, Name, Input) ->
    delete_access_point_policy(Client, Name, Input, []).
delete_access_point_policy(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the resource policy for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `DeleteAccessPointPolicyForObjectLambda':
%%
%% <ul> <li> GetAccessPointPolicyForObjectLambda
%%
%% </li> <li> PutAccessPointPolicyForObjectLambda
%%
%% </li> </ul>
delete_access_point_policy_for_object_lambda(Client, Name, Input) ->
    delete_access_point_policy_for_object_lambda(Client, Name, Input, []).
delete_access_point_policy_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action deletes an Amazon S3 on Outposts bucket.
%%
%% To delete an S3 bucket, see DeleteBucket in the Amazon S3 API Reference.
%%
%% Deletes the Amazon S3 on Outposts bucket. All objects (including all
%% object versions and delete markers) in the bucket must be deleted before
%% the bucket itself can be deleted. For more information, see Using Amazon
%% S3 on Outposts in Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% == Related Resources ==
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> GetBucket
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
delete_bucket(Client, Bucket, Input) ->
    delete_bucket(Client, Bucket, Input, []).
delete_bucket(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action deletes an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To delete an S3 bucket's lifecycle configuration, see
%% DeleteBucketLifecycle in the Amazon S3 API Reference.
%%
%% Deletes the lifecycle configuration from the specified Outposts bucket.
%% Amazon S3 on Outposts removes all the lifecycle configuration rules in the
%% lifecycle subresource associated with the bucket. Your objects never
%% expire, and Amazon S3 on Outposts no longer automatically deletes any
%% objects on the basis of rules contained in the deleted lifecycle
%% configuration. For more information, see Using Amazon S3 on Outposts in
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3-outposts:DeleteLifecycleConfiguration' action. By default, the bucket
%% owner has this permission and the Outposts bucket owner can grant this
%% permission to others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% For more information about object expiration, see Elements to Describe
%% Lifecycle Actions.
%%
%% Related actions include:
%%
%% <ul> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> </ul>
delete_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    delete_bucket_lifecycle_configuration(Client, Bucket, Input, []).
delete_bucket_lifecycle_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action deletes an Amazon S3 on Outposts bucket policy.
%%
%% To delete an S3 bucket policy, see DeleteBucketPolicy in the Amazon S3 API
%% Reference.
%%
%% This implementation of the DELETE action uses the policy subresource to
%% delete the policy of a specified Amazon S3 on Outposts bucket. If you are
%% using an identity other than the root user of the Amazon Web Services
%% account that owns the bucket, the calling identity must have the
%% `s3-outposts:DeleteBucketPolicy' permissions on the specified Outposts
%% bucket and belong to the bucket owner's account to use this action. For
%% more information, see Using Amazon S3 on Outposts in Amazon S3 User Guide.
%%
%% If you don't have `DeleteBucketPolicy' permissions, Amazon S3 returns a
%% `403 Access Denied' error. If you have the correct permissions, but you're
%% not using an identity that belongs to the bucket owner's account, Amazon
%% S3 returns a `405 Method Not Allowed' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can always use this action, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `DeleteBucketPolicy':
%%
%% <ul> <li> GetBucketPolicy
%%
%% </li> <li> PutBucketPolicy
%%
%% </li> </ul>
delete_bucket_policy(Client, Bucket, Input) ->
    delete_bucket_policy(Client, Bucket, Input, []).
delete_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action deletes an Amazon S3 on Outposts bucket's tags.
%%
%% To delete an S3 bucket tags, see DeleteBucketTagging in the Amazon S3 API
%% Reference.
%%
%% Deletes the tags from the Outposts bucket. For more information, see Using
%% Amazon S3 on Outposts in Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `PutBucketTagging' action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `DeleteBucketTagging':
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> PutBucketTagging
%%
%% </li> </ul>
delete_bucket_tagging(Client, Bucket, Input) ->
    delete_bucket_tagging(Client, Bucket, Input, []).
delete_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the entire tag set from the specified S3 Batch Operations
%% job.
%%
%% To use this operation, you must have permission to perform the
%% `s3:DeleteJobTagging' action. For more information, see Controlling access
%% and labeling jobs using tags in the Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> GetJobTagging
%%
%% </li> <li> PutJobTagging
%%
%% </li> </ul>
delete_job_tagging(Client, JobId, Input) ->
    delete_job_tagging(Client, JobId, Input, []).
delete_job_tagging(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Multi-Region Access Point.
%%
%% This action does not delete the buckets associated with the Multi-Region
%% Access Point, only the Multi-Region Access Point itself.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% This request is asynchronous, meaning that you might receive a response
%% before the command has completed. When this request provides a response,
%% it provides a token that you can use to monitor the status of the request
%% with `DescribeMultiRegionAccessPointOperation'.
%%
%% The following actions are related to `DeleteMultiRegionAccessPoint':
%%
%% <ul> <li> CreateMultiRegionAccessPoint
%%
%% </li> <li> DescribeMultiRegionAccessPointOperation
%%
%% </li> <li> GetMultiRegionAccessPoint
%%
%% </li> <li> ListMultiRegionAccessPoints
%%
%% </li> </ul>
delete_multi_region_access_point(Client, Input) ->
    delete_multi_region_access_point(Client, Input, []).
delete_multi_region_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the `PublicAccessBlock' configuration for an Amazon Web
%% Services account.
%%
%% For more information, see Using Amazon S3 block public access.
%%
%% Related actions include:
%%
%% <ul> <li> GetPublicAccessBlock
%%
%% </li> <li> PutPublicAccessBlock
%%
%% </li> </ul>
delete_public_access_block(Client, Input) ->
    delete_public_access_block(Client, Input, []).
delete_public_access_block(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon S3 Storage Lens configuration.
%%
%% For more information about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:DeleteStorageLensConfiguration' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
delete_storage_lens_configuration(Client, ConfigId, Input) ->
    delete_storage_lens_configuration(Client, ConfigId, Input, []).
delete_storage_lens_configuration(Client, ConfigId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon S3 Storage Lens configuration tags.
%%
%% For more information about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:DeleteStorageLensConfigurationTagging' action. For more information,
%% see Setting permissions to use Amazon S3 Storage Lens in the Amazon S3
%% User Guide.
delete_storage_lens_configuration_tagging(Client, ConfigId, Input) ->
    delete_storage_lens_configuration_tagging(Client, ConfigId, Input, []).
delete_storage_lens_configuration_tagging(Client, ConfigId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the configuration parameters and status for a Batch
%% Operations job.
%%
%% For more information, see S3 Batch Operations in the Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> ListJobs
%%
%% </li> <li> UpdateJobPriority
%%
%% </li> <li> UpdateJobStatus
%%
%% </li> </ul>
describe_job(Client, JobId, AccountId)
  when is_map(Client) ->
    describe_job(Client, JobId, AccountId, #{}, #{}).

describe_job(Client, JobId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_job(Client, JobId, AccountId, QueryMap, HeadersMap, []).

describe_job(Client, JobId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of an asynchronous request to manage a
%% Multi-Region Access Point.
%%
%% For more information about managing Multi-Region Access Points and how
%% asynchronous requests work, see Managing Multi-Region Access Points in the
%% Amazon S3 User Guide.
%%
%% The following actions are related to `GetMultiRegionAccessPoint':
%%
%% <ul> <li> CreateMultiRegionAccessPoint
%%
%% </li> <li> DeleteMultiRegionAccessPoint
%%
%% </li> <li> GetMultiRegionAccessPoint
%%
%% </li> <li> ListMultiRegionAccessPoints
%%
%% </li> </ul>
describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId)
  when is_map(Client) ->
    describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, #{}, #{}).

describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap, []).

describe_multi_region_access_point_operation(Client, RequestTokenARN, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/async-requests/mrap/", aws_util:encode_multi_segment_uri(RequestTokenARN), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration information about the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `GetAccessPoint':
%%
%% <ul> <li> CreateAccessPoint
%%
%% </li> <li> DeleteAccessPoint
%%
%% </li> <li> ListAccessPoints
%%
%% </li> </ul>
get_access_point(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point(Client, Name, AccountId, #{}, #{}).

get_access_point(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `GetAccessPointConfigurationForObjectLambda':
%%
%% <ul> <li> PutAccessPointConfigurationForObjectLambda
%%
%% </li> </ul>
get_access_point_configuration_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_configuration_for_object_lambda(Client, Name, AccountId, #{}, #{}).

get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_configuration_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration information about the specified Object Lambda
%% Access Point
%%
%% The following actions are related to `GetAccessPointForObjectLambda':
%%
%% <ul> <li> CreateAccessPointForObjectLambda
%%
%% </li> <li> DeleteAccessPointForObjectLambda
%%
%% </li> <li> ListAccessPointsForObjectLambda
%%
%% </li> </ul>
get_access_point_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_for_object_lambda(Client, Name, AccountId, #{}, #{}).

get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the access point policy associated with the specified access
%% point.
%%
%% The following actions are related to `GetAccessPointPolicy':
%%
%% <ul> <li> PutAccessPointPolicy
%%
%% </li> <li> DeleteAccessPointPolicy
%%
%% </li> </ul>
get_access_point_policy(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy(Client, Name, AccountId, #{}, #{}).

get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource policy for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `GetAccessPointPolicyForObjectLambda':
%%
%% <ul> <li> DeleteAccessPointPolicyForObjectLambda
%%
%% </li> <li> PutAccessPointPolicyForObjectLambda
%%
%% </li> </ul>
get_access_point_policy_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_for_object_lambda(Client, Name, AccountId, #{}, #{}).

get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_policy_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Indicates whether the specified access point currently has a policy
%% that allows public access.
%%
%% For more information about public access through access points, see
%% Managing Data Access with Amazon S3 access points in the Amazon S3 User
%% Guide.
get_access_point_policy_status(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_status(Client, Name, AccountId, #{}, #{}).

get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policyStatus"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of the resource policy associated with an Object
%% Lambda Access Point.
get_access_point_policy_status_for_object_lambda(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, #{}, #{}).

get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_access_point_policy_status_for_object_lambda(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policyStatus"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon S3 on Outposts bucket.
%%
%% For more information, see Using Amazon S3 on Outposts in the Amazon S3
%% User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the Outposts bucket, the calling identity must
%% have the `s3-outposts:GetBucket' permissions on the specified Outposts
%% bucket and belong to the Outposts bucket owner's account in order to use
%% this action. Only users from Outposts bucket owner account with the right
%% permissions can perform actions on an Outposts bucket.
%%
%% If you don't have `s3-outposts:GetBucket' permissions or you're not using
%% an identity that belongs to the bucket owner's account, Amazon S3 returns
%% a `403 Access Denied' error.
%%
%% The following actions are related to `GetBucket' for Amazon S3 on
%% Outposts:
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% <ul> <li> PutObject
%%
%% </li> <li> CreateBucket
%%
%% </li> <li> DeleteBucket
%%
%% </li> </ul>
get_bucket(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket(Client, Bucket, AccountId, #{}, #{}).

get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

get_bucket(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action gets an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To get an S3 bucket's lifecycle configuration, see
%% GetBucketLifecycleConfiguration in the Amazon S3 API Reference.
%%
%% Returns the lifecycle configuration information set on the Outposts
%% bucket. For more information, see Using Amazon S3 on Outposts and for
%% information about lifecycle configuration, see Object Lifecycle Management
%% in Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3-outposts:GetLifecycleConfiguration' action. The Outposts bucket owner
%% has this permission, by default. The bucket owner can grant this
%% permission to others. For more information about permissions, see
%% Permissions Related to Bucket Subresource Operations and Managing Access
%% Permissions to Your Amazon S3 Resources.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% `GetBucketLifecycleConfiguration' has the following special error:
%%
%% <ul> <li> Error code: `NoSuchLifecycleConfiguration'
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following actions are related to
%% `GetBucketLifecycleConfiguration':
%%
%% <ul> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> DeleteBucketLifecycleConfiguration
%%
%% </li> </ul>
get_bucket_lifecycle_configuration(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_lifecycle_configuration(Client, Bucket, AccountId, #{}, #{}).

get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

get_bucket_lifecycle_configuration(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action gets a bucket policy for an Amazon S3 on Outposts bucket.
%%
%% To get a policy for an S3 bucket, see GetBucketPolicy in the Amazon S3 API
%% Reference.
%%
%% Returns the policy of a specified Outposts bucket. For more information,
%% see Using Amazon S3 on Outposts in the Amazon S3 User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the bucket, the calling identity must have the
%% `GetBucketPolicy' permissions on the specified bucket and belong to the
%% bucket owner's account in order to use this action.
%%
%% Only users from Outposts bucket owner account with the right permissions
%% can perform actions on an Outposts bucket. If you don't have
%% `s3-outposts:GetBucketPolicy' permissions or you're not using an identity
%% that belongs to the bucket owner's account, Amazon S3 returns a `403
%% Access Denied' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can always use this action, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `GetBucketPolicy':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> PutBucketPolicy
%%
%% </li> <li> DeleteBucketPolicy
%%
%% </li> </ul>
get_bucket_policy(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_policy(Client, Bucket, AccountId, #{}, #{}).

get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

get_bucket_policy(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This action gets an Amazon S3 on Outposts bucket's tags.
%%
%% To get an S3 bucket tags, see GetBucketTagging in the Amazon S3 API
%% Reference.
%%
%% Returns the tag set associated with the Outposts bucket. For more
%% information, see Using Amazon S3 on Outposts in the Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `GetBucketTagging' action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% `GetBucketTagging' has the following special error:
%%
%% <ul> <li> Error code: `NoSuchTagSetError'
%%
%% <ul> <li> Description: There is no tag set associated with the bucket.
%%
%% </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
%% this action require an additional parameter of `x-amz-outpost-id' to be
%% passed with the request. In addition, you must use an S3 on Outposts
%% endpoint hostname prefix instead of `s3-control'. For an example of the
%% request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
%% endpoint hostname prefix and the `x-amz-outpost-id' derived by using the
%% access point ARN, see the Examples section.
%%
%% The following actions are related to `GetBucketTagging':
%%
%% <ul> <li> PutBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
get_bucket_tagging(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_tagging(Client, Bucket, AccountId, #{}, #{}).

get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

get_bucket_tagging(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns the versioning state only for S3 on Outposts
%% buckets.
%%
%% To return the versioning state for an S3 bucket, see GetBucketVersioning
%% in the Amazon S3 API Reference.
%%
%% Returns the versioning state for an S3 on Outposts bucket. With
%% versioning, you can save multiple distinct copies of your data and recover
%% from unintended user actions and application failures.
%%
%% If you've never set versioning on your bucket, it has no versioning state.
%% In that case, the `GetBucketVersioning' request does not return a
%% versioning state value.
%%
%% For more information about versioning, see Versioning in the Amazon S3
%% User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following operations are related to `GetBucketVersioning' for S3 on
%% Outposts.
%%
%% <ul> <li> PutBucketVersioning
%%
%% </li> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> </ul>
get_bucket_versioning(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_versioning(Client, Bucket, AccountId, #{}, #{}).

get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap, []).

get_bucket_versioning(Client, Bucket, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/versioning"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tags on an S3 Batch Operations job.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetJobTagging' action. For more information, see Controlling access
%% and labeling jobs using tags in the Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> PutJobTagging
%%
%% </li> <li> DeleteJobTagging
%%
%% </li> </ul>
get_job_tagging(Client, JobId, AccountId)
  when is_map(Client) ->
    get_job_tagging(Client, JobId, AccountId, #{}, #{}).

get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap, []).

get_job_tagging(Client, JobId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration information about the specified Multi-Region
%% Access Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% The following actions are related to `GetMultiRegionAccessPoint':
%%
%% <ul> <li> CreateMultiRegionAccessPoint
%%
%% </li> <li> DeleteMultiRegionAccessPoint
%%
%% </li> <li> DescribeMultiRegionAccessPointOperation
%%
%% </li> <li> ListMultiRegionAccessPoints
%%
%% </li> </ul>
get_multi_region_access_point(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point(Client, Name, AccountId, #{}, #{}).

get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_multi_region_access_point(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the access control policy of the specified Multi-Region
%% Access Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% The following actions are related to `GetMultiRegionAccessPointPolicy':
%%
%% <ul> <li> GetMultiRegionAccessPointPolicyStatus
%%
%% </li> <li> PutMultiRegionAccessPointPolicy
%%
%% </li> </ul>
get_multi_region_access_point_policy(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_policy(Client, Name, AccountId, #{}, #{}).

get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_multi_region_access_point_policy(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Indicates whether the specified Multi-Region Access Point has an
%% access control policy that allows public access.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% The following actions are related to
%% `GetMultiRegionAccessPointPolicyStatus':
%%
%% <ul> <li> GetMultiRegionAccessPointPolicy
%%
%% </li> <li> PutMultiRegionAccessPointPolicy
%%
%% </li> </ul>
get_multi_region_access_point_policy_status(Client, Name, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_policy_status(Client, Name, AccountId, #{}, #{}).

get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, []).

get_multi_region_access_point_policy_status(Client, Name, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Name), "/policystatus"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the routing configuration for a Multi-Region Access Point,
%% indicating which Regions are active or passive.
%%
%% To obtain routing control changes and failover requests, use the Amazon S3
%% failover control infrastructure endpoints in these five Amazon Web
%% Services Regions:
%%
%% <ul> <li> `us-east-1'
%%
%% </li> <li> `us-west-2'
%%
%% </li> <li> `ap-southeast-2'
%%
%% </li> <li> `ap-northeast-1'
%%
%% </li> <li> `eu-west-1'
%%
%% </li> </ul> Your Amazon S3 bucket does not need to be in these five
%% Regions.
get_multi_region_access_point_routes(Client, Mrap, AccountId)
  when is_map(Client) ->
    get_multi_region_access_point_routes(Client, Mrap, AccountId, #{}, #{}).

get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap, []).

get_multi_region_access_point_routes(Client, Mrap, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Mrap), "/routes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the `PublicAccessBlock' configuration for an Amazon Web
%% Services account.
%%
%% For more information, see Using Amazon S3 block public access.
%%
%% Related actions include:
%%
%% <ul> <li> DeletePublicAccessBlock
%%
%% </li> <li> PutPublicAccessBlock
%%
%% </li> </ul>
get_public_access_block(Client, AccountId)
  when is_map(Client) ->
    get_public_access_block(Client, AccountId, #{}, #{}).

get_public_access_block(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_access_block(Client, AccountId, QueryMap, HeadersMap, []).

get_public_access_block(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon S3 Storage Lens configuration.
%%
%% For more information, see Assessing your storage activity and usage with
%% Amazon S3 Storage Lens in the Amazon S3 User Guide. For a complete list of
%% S3 Storage Lens metrics, see S3 Storage Lens metrics glossary in the
%% Amazon S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:GetStorageLensConfiguration' action. For more information, see Setting
%% permissions to use Amazon S3 Storage Lens in the Amazon S3 User Guide.
get_storage_lens_configuration(Client, ConfigId, AccountId)
  when is_map(Client) ->
    get_storage_lens_configuration(Client, ConfigId, AccountId, #{}, #{}).

get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap, []).

get_storage_lens_configuration(Client, ConfigId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the tags of Amazon S3 Storage Lens configuration.
%%
%% For more information about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:GetStorageLensConfigurationTagging' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
get_storage_lens_configuration_tagging(Client, ConfigId, AccountId)
  when is_map(Client) ->
    get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, #{}, #{}).

get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap, []).

get_storage_lens_configuration_tagging(Client, ConfigId, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the access points owned by the current account
%% associated with the specified bucket.
%%
%% You can retrieve up to 1000 access points per call. If the specified
%% bucket has more than 1,000 access points (or the number specified in
%% `maxResults', whichever is less), the response will include a continuation
%% token that you can use to list the additional access points.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `ListAccessPoints':
%%
%% <ul> <li> CreateAccessPoint
%%
%% </li> <li> DeleteAccessPoint
%%
%% </li> <li> GetAccessPoint
%%
%% </li> </ul>
list_access_points(Client, AccountId)
  when is_map(Client) ->
    list_access_points(Client, AccountId, #{}, #{}).

list_access_points(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_points(Client, AccountId, QueryMap, HeadersMap, []).

list_access_points(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"bucket">>, maps:get(<<"bucket">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns some or all (up to 1,000) access points associated with the
%% Object Lambda Access Point per call.
%%
%% If there are more access points than what can be returned in one call, the
%% response will include a continuation token that you can use to list the
%% additional access points.
%%
%% The following actions are related to `ListAccessPointsForObjectLambda':
%%
%% <ul> <li> CreateAccessPointForObjectLambda
%%
%% </li> <li> DeleteAccessPointForObjectLambda
%%
%% </li> <li> GetAccessPointForObjectLambda
%%
%% </li> </ul>
list_access_points_for_object_lambda(Client, AccountId)
  when is_map(Client) ->
    list_access_points_for_object_lambda(Client, AccountId, #{}, #{}).

list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap, []).

list_access_points_for_object_lambda(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/accesspointforobjectlambda"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists current S3 Batch Operations jobs and jobs that have ended
%% within the last 30 days for the Amazon Web Services account making the
%% request.
%%
%% For more information, see S3 Batch Operations in the Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> DescribeJob
%%
%% </li> <li> UpdateJobPriority
%%
%% </li> <li> UpdateJobStatus
%%
%% </li> </ul>
list_jobs(Client, AccountId)
  when is_map(Client) ->
    list_jobs(Client, AccountId, #{}, #{}).

list_jobs(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, AccountId, QueryMap, HeadersMap, []).

list_jobs(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"jobStatuses">>, maps:get(<<"jobStatuses">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the Multi-Region Access Points currently associated
%% with the specified Amazon Web Services account.
%%
%% Each call can return up to 100 Multi-Region Access Points, the maximum
%% number of Multi-Region Access Points that can be associated with a single
%% account.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% The following actions are related to `ListMultiRegionAccessPoint':
%%
%% <ul> <li> CreateMultiRegionAccessPoint
%%
%% </li> <li> DeleteMultiRegionAccessPoint
%%
%% </li> <li> DescribeMultiRegionAccessPointOperation
%%
%% </li> <li> GetMultiRegionAccessPoint
%%
%% </li> </ul>
list_multi_region_access_points(Client, AccountId)
  when is_map(Client) ->
    list_multi_region_access_points(Client, AccountId, #{}, #{}).

list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap, []).

list_multi_region_access_points(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/mrap/instances"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all Outposts buckets in an Outpost that are owned
%% by the authenticated sender of the request.
%%
%% For more information, see Using Amazon S3 on Outposts in the Amazon S3
%% User Guide.
%%
%% For an example of the request syntax for Amazon S3 on Outposts that uses
%% the S3 on Outposts endpoint hostname prefix and `x-amz-outpost-id' in your
%% request, see the Examples section.
list_regional_buckets(Client, AccountId)
  when is_map(Client) ->
    list_regional_buckets(Client, AccountId, #{}, #{}).

list_regional_buckets(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_regional_buckets(Client, AccountId, QueryMap, HeadersMap, []).

list_regional_buckets(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/bucket"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId},
        {<<"x-amz-outpost-id">>, maps:get(<<"x-amz-outpost-id">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of Amazon S3 Storage Lens configurations.
%%
%% For more information about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:ListStorageLensConfigurations' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
list_storage_lens_configurations(Client, AccountId)
  when is_map(Client) ->
    list_storage_lens_configurations(Client, AccountId, #{}, #{}).

list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap, []).

list_storage_lens_configurations(Client, AccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20180820/storagelens"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Replaces configuration for an Object Lambda Access Point.
%%
%% The following actions are related to
%% `PutAccessPointConfigurationForObjectLambda':
%%
%% <ul> <li> GetAccessPointConfigurationForObjectLambda
%%
%% </li> </ul>
put_access_point_configuration_for_object_lambda(Client, Name, Input) ->
    put_access_point_configuration_for_object_lambda(Client, Name, Input, []).
put_access_point_configuration_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/configuration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an access policy with the specified access point.
%%
%% Each access point can have only one policy, so a request made to this API
%% replaces any existing policy associated with the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `PutAccessPointPolicy':
%%
%% <ul> <li> GetAccessPointPolicy
%%
%% </li> <li> DeleteAccessPointPolicy
%%
%% </li> </ul>
put_access_point_policy(Client, Name, Input) ->
    put_access_point_policy(Client, Name, Input, []).
put_access_point_policy(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or replaces resource policy for an Object Lambda Access
%% Point.
%%
%% For an example policy, see Creating Object Lambda Access Points in the
%% Amazon S3 User Guide.
%%
%% The following actions are related to
%% `PutAccessPointPolicyForObjectLambda':
%%
%% <ul> <li> DeleteAccessPointPolicyForObjectLambda
%%
%% </li> <li> GetAccessPointPolicyForObjectLambda
%%
%% </li> </ul>
put_access_point_policy_for_object_lambda(Client, Name, Input) ->
    put_access_point_policy_for_object_lambda(Client, Name, Input, []).
put_access_point_policy_for_object_lambda(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/accesspointforobjectlambda/", aws_util:encode_uri(Name), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action puts a lifecycle configuration to an Amazon S3 on
%% Outposts bucket.
%%
%% To put a lifecycle configuration to an S3 bucket, see
%% PutBucketLifecycleConfiguration in the Amazon S3 API Reference.
%%
%% Creates a new lifecycle configuration for the S3 on Outposts bucket or
%% replaces an existing lifecycle configuration. Outposts buckets only
%% support lifecycle configurations that delete/expire objects after a
%% certain period of time and abort incomplete multipart uploads.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `PutBucketLifecycleConfiguration':
%%
%% <ul> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> DeleteBucketLifecycleConfiguration
%%
%% </li> </ul>
put_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    put_bucket_lifecycle_configuration(Client, Bucket, Input, []).
put_bucket_lifecycle_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action puts a bucket policy to an Amazon S3 on Outposts bucket.
%%
%% To put a policy on an S3 bucket, see PutBucketPolicy in the Amazon S3 API
%% Reference.
%%
%% Applies an Amazon S3 bucket policy to an Outposts bucket. For more
%% information, see Using Amazon S3 on Outposts in the Amazon S3 User Guide.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the Outposts bucket, the calling identity must
%% have the `PutBucketPolicy' permissions on the specified Outposts bucket
%% and belong to the bucket owner's account in order to use this action.
%%
%% If you don't have `PutBucketPolicy' permissions, Amazon S3 returns a `403
%% Access Denied' error. If you have the correct permissions, but you're not
%% using an identity that belongs to the bucket owner's account, Amazon S3
%% returns a `405 Method Not Allowed' error.
%%
%% As a security precaution, the root user of the Amazon Web Services account
%% that owns a bucket can always use this action, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following actions are related to `PutBucketPolicy':
%%
%% <ul> <li> GetBucketPolicy
%%
%% </li> <li> DeleteBucketPolicy
%%
%% </li> </ul>
put_bucket_policy(Client, Bucket, Input) ->
    put_bucket_policy(Client, Bucket, Input, []).
put_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>},
                       {<<"x-amz-confirm-remove-self-bucket-access">>, <<"ConfirmRemoveSelfBucketAccess">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action puts tags on an Amazon S3 on Outposts bucket.
%%
%% To put tags on an S3 bucket, see PutBucketTagging in the Amazon S3 API
%% Reference.
%%
%% Sets the tags for an S3 on Outposts bucket. For more information, see
%% Using Amazon S3 on Outposts in the Amazon S3 User Guide.
%%
%% Use tags to organize your Amazon Web Services bill to reflect your own
%% cost structure. To do this, sign up to get your Amazon Web Services
%% account bill with tag key values included. Then, to see the cost of
%% combined resources, organize your billing information according to
%% resources with the same tag key values. For example, you can tag several
%% resources with a specific application name, and then organize your billing
%% information to see the total cost of that application across several
%% services. For more information, see Cost allocation and tagging.
%%
%% Within a bucket, if you add a tag that has the same key as an existing
%% tag, the new value overwrites the old value. For more information, see
%% Using cost allocation in Amazon S3 bucket tags.
%%
%% To use this action, you must have permissions to perform the
%% `s3-outposts:PutBucketTagging' action. The Outposts bucket owner has this
%% permission by default and can grant this permission to others. For more
%% information about permissions, see Permissions Related to Bucket
%% Subresource Operations and Managing access permissions to your Amazon S3
%% resources.
%%
%% `PutBucketTagging' has the following special errors:
%%
%% <ul> <li> Error code: `InvalidTagError'
%%
%% <ul> <li> Description: The tag provided was not a valid tag. This error
%% can occur if the tag did not pass input validation. For information about
%% tag restrictions, see User-Defined Tag Restrictions and Amazon Web
%% Services-Generated Cost Allocation Tag Restrictions.
%%
%% </li> </ul> </li> <li> Error code: `MalformedXMLError'
%%
%% <ul> <li> Description: The XML provided does not match the schema.
%%
%% </li> </ul> </li> <li> Error code: `OperationAbortedError '
%%
%% <ul> <li> Description: A conflicting conditional action is currently in
%% progress against this resource. Try again.
%%
%% </li> </ul> </li> <li> Error code: `InternalError'
%%
%% <ul> <li> Description: The service was unable to apply the provided tag to
%% the bucket.
%%
%% </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
%% this action require an additional parameter of `x-amz-outpost-id' to be
%% passed with the request. In addition, you must use an S3 on Outposts
%% endpoint hostname prefix instead of `s3-control'. For an example of the
%% request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
%% endpoint hostname prefix and the `x-amz-outpost-id' derived by using the
%% access point ARN, see the Examples section.
%%
%% The following actions are related to `PutBucketTagging':
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
put_bucket_tagging(Client, Bucket, Input) ->
    put_bucket_tagging(Client, Bucket, Input, []).
put_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, true}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation sets the versioning state only for S3 on Outposts
%% buckets.
%%
%% To set the versioning state for an S3 bucket, see PutBucketVersioning in
%% the Amazon S3 API Reference.
%%
%% Sets the versioning state for an S3 on Outposts bucket. With versioning,
%% you can save multiple distinct copies of your data and recover from
%% unintended user actions and application failures.
%%
%% You can set the versioning state to one of the following:
%%
%% <ul> <li> Enabled - Enables versioning for the objects in the bucket. All
%% objects added to the bucket receive a unique version ID.
%%
%% </li> <li> Suspended - Suspends versioning for the objects in the bucket.
%% All objects added to the bucket receive the version ID `null'.
%%
%% </li> </ul> If you've never set versioning on your bucket, it has no
%% versioning state. In that case, a GetBucketVersioning request does not
%% return a versioning state value.
%%
%% When you enable S3 Versioning, for each object in your bucket, you have a
%% current version and zero or more noncurrent versions. You can configure
%% your bucket S3 Lifecycle rules to expire noncurrent versions after a
%% specified time period. For more information, see Creating and managing a
%% lifecycle configuration for your S3 on Outposts bucket in the Amazon S3
%% User Guide.
%%
%% If you have an object expiration lifecycle policy in your non-versioned
%% bucket and you want to maintain the same permanent delete behavior when
%% you enable versioning, you must add a noncurrent expiration policy. The
%% noncurrent expiration lifecycle policy will manage the deletes of the
%% noncurrent object versions in the version-enabled bucket. For more
%% information, see Versioning in the Amazon S3 User Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of `x-amz-outpost-id' to be passed with the request.
%% In addition, you must use an S3 on Outposts endpoint hostname prefix
%% instead of `s3-control'. For an example of the request syntax for Amazon
%% S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and
%% the `x-amz-outpost-id' derived by using the access point ARN, see the
%% Examples section.
%%
%% The following operations are related to `PutBucketVersioning' for S3 on
%% Outposts.
%%
%% <ul> <li> GetBucketVersioning
%%
%% </li> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> </ul>
put_bucket_versioning(Client, Bucket, Input) ->
    put_bucket_versioning(Client, Bucket, Input, []).
put_bucket_versioning(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/bucket/", aws_util:encode_uri(Bucket), "/versioning"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>},
                       {<<"x-amz-mfa">>, <<"MFA">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the supplied tag-set on an S3 Batch Operations job.
%%
%% A tag is a key-value pair. You can associate S3 Batch Operations tags with
%% any job by sending a PUT request against the tagging subresource that is
%% associated with the job. To modify the existing tag set, you can either
%% replace the existing tag set entirely, or make changes within the existing
%% tag set by retrieving the existing tag set using GetJobTagging, modify
%% that tag set, and use this action to replace the tag set with the one you
%% modified. For more information, see Controlling access and labeling jobs
%% using tags in the Amazon S3 User Guide.
%%
%% <ul> <li> If you send this request with an empty tag set, Amazon S3
%% deletes the existing tag set on the Batch Operations job. If you use this
%% method, you are charged for a Tier 1 Request (PUT). For more information,
%% see Amazon S3 pricing.
%%
%% </li> <li> For deleting existing tags for your Batch Operations job, a
%% DeleteJobTagging request is preferred because it achieves the same result
%% without incurring charges.
%%
%% </li> <li> A few things to consider about using tags:
%%
%% <ul> <li> Amazon S3 limits the maximum number of tags to 50 tags per job.
%%
%% </li> <li> You can associate up to 50 tags with a job as long as they have
%% unique tag keys.
%%
%% </li> <li> A tag key can be up to 128 Unicode characters in length, and
%% tag values can be up to 256 Unicode characters in length.
%%
%% </li> <li> The key and values are case sensitive.
%%
%% </li> <li> For tagging-related restrictions related to characters and
%% encodings, see User-Defined Tag Restrictions in the Billing and Cost
%% Management User Guide.
%%
%% </li> </ul> </li> </ul>
%%
%% To use this action, you must have permission to perform the
%% `s3:PutJobTagging' action.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> GetJobTagging
%%
%% </li> <li> DeleteJobTagging
%%
%% </li> </ul>
put_job_tagging(Client, JobId, Input) ->
    put_job_tagging(Client, JobId, Input, []).
put_job_tagging(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an access control policy with the specified Multi-Region
%% Access Point.
%%
%% Each Multi-Region Access Point can have only one policy, so a request made
%% to this action replaces any existing policy that is associated with the
%% specified Multi-Region Access Point.
%%
%% This action will always be routed to the US West (Oregon) Region. For more
%% information about the restrictions around managing Multi-Region Access
%% Points, see Managing Multi-Region Access Points in the Amazon S3 User
%% Guide.
%%
%% The following actions are related to `PutMultiRegionAccessPointPolicy':
%%
%% <ul> <li> GetMultiRegionAccessPointPolicy
%%
%% </li> <li> GetMultiRegionAccessPointPolicyStatus
%%
%% </li> </ul>
put_multi_region_access_point_policy(Client, Input) ->
    put_multi_region_access_point_policy(Client, Input, []).
put_multi_region_access_point_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/async-requests/mrap/put-policy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or modifies the `PublicAccessBlock' configuration for an
%% Amazon Web Services account.
%%
%% For this operation, users must have the `s3:PutAccountPublicAccessBlock'
%% permission. For more information, see Using Amazon S3 block public access.
%%
%% Related actions include:
%%
%% <ul> <li> GetPublicAccessBlock
%%
%% </li> <li> DeletePublicAccessBlock
%%
%% </li> </ul>
put_public_access_block(Client, Input) ->
    put_public_access_block(Client, Input, []).
put_public_access_block(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Puts an Amazon S3 Storage Lens configuration.
%%
%% For more information about S3 Storage Lens, see Working with Amazon S3
%% Storage Lens in the Amazon S3 User Guide. For a complete list of S3
%% Storage Lens metrics, see S3 Storage Lens metrics glossary in the Amazon
%% S3 User Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:PutStorageLensConfiguration' action. For more information, see Setting
%% permissions to use Amazon S3 Storage Lens in the Amazon S3 User Guide.
put_storage_lens_configuration(Client, ConfigId, Input) ->
    put_storage_lens_configuration(Client, ConfigId, Input, []).
put_storage_lens_configuration(Client, ConfigId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Put or replace tags on an existing Amazon S3 Storage Lens
%% configuration.
%%
%% For more information about S3 Storage Lens, see Assessing your storage
%% activity and usage with Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
%%
%% To use this action, you must have permission to perform the
%% `s3:PutStorageLensConfigurationTagging' action. For more information, see
%% Setting permissions to use Amazon S3 Storage Lens in the Amazon S3 User
%% Guide.
put_storage_lens_configuration_tagging(Client, ConfigId, Input) ->
    put_storage_lens_configuration_tagging(Client, ConfigId, Input, []).
put_storage_lens_configuration_tagging(Client, ConfigId, Input0, Options0) ->
    Method = put,
    Path = ["/v20180820/storagelens/", aws_util:encode_uri(ConfigId), "/tagging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Submits an updated route configuration for a Multi-Region Access
%% Point.
%%
%% This API operation updates the routing status for the specified Regions
%% from active to passive, or from passive to active. A value of `0'
%% indicates a passive status, which means that traffic won't be routed to
%% the specified Region. A value of `100' indicates an active status, which
%% means that traffic will be routed to the specified Region. At least one
%% Region must be active at all times.
%%
%% When the routing configuration is changed, any in-progress operations
%% (uploads, copies, deletes, and so on) to formerly active Regions will
%% continue to run to their final completion state (success or failure). The
%% routing configurations of any Regions that aren’t specified remain
%% unchanged.
%%
%% Updated routing configurations might not be immediately applied. It can
%% take up to 2 minutes for your changes to take effect.
%%
%% To submit routing control changes and failover requests, use the Amazon S3
%% failover control infrastructure endpoints in these five Amazon Web
%% Services Regions:
%%
%% <ul> <li> `us-east-1'
%%
%% </li> <li> `us-west-2'
%%
%% </li> <li> `ap-southeast-2'
%%
%% </li> <li> `ap-northeast-1'
%%
%% </li> <li> `eu-west-1'
%%
%% </li> </ul> Your Amazon S3 bucket does not need to be in these five
%% Regions.
submit_multi_region_access_point_routes(Client, Mrap, Input) ->
    submit_multi_region_access_point_routes(Client, Mrap, Input, []).
submit_multi_region_access_point_routes(Client, Mrap, Input0, Options0) ->
    Method = patch,
    Path = ["/v20180820/mrap/instances/", aws_util:encode_multi_segment_uri(Mrap), "/routes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing S3 Batch Operations job's priority.
%%
%% For more information, see S3 Batch Operations in the Amazon S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> ListJobs
%%
%% </li> <li> DescribeJob
%%
%% </li> <li> UpdateJobStatus
%%
%% </li> </ul>
update_job_priority(Client, JobId, Input) ->
    update_job_priority(Client, JobId, Input, []).
update_job_priority(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/priority"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"priority">>, <<"Priority">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status for the specified job.
%%
%% Use this action to confirm that you want to run a job or to cancel an
%% existing job. For more information, see S3 Batch Operations in the Amazon
%% S3 User Guide.
%%
%% Related actions include:
%%
%% <ul> <li> CreateJob
%%
%% </li> <li> ListJobs
%%
%% </li> <li> DescribeJob
%%
%% </li> <li> UpdateJobStatus
%%
%% </li> </ul>
update_job_status(Client, JobId, Input) ->
    update_job_status(Client, JobId, Input, []).
update_job_status(Client, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/v20180820/jobs/", aws_util:encode_uri(JobId), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"requestedJobStatus">>, <<"RequestedJobStatus">>},
                     {<<"statusUpdateReason">>, <<"StatusUpdateReason">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"s3">>},
    AccountId = proplists:get_value(<<"x-amz-account-id">>, Headers0),
    Host = build_host(AccountId, <<"s3-control">>, Client1),
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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_AccountId, _EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_AccountId, _EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(undefined, _EndpointPrefix, _Client) ->
    error(missing_account_id);
build_host(AccountId, EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([AccountId, EndpointPrefix, Region, Endpoint],
                         <<".">>).

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
