%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS S3 Control provides access to Amazon S3 control plane operations.
-module(aws_s3_control).

-export([create_access_point/3,
         create_access_point/4,
         create_bucket/3,
         create_bucket/4,
         create_job/2,
         create_job/3,
         delete_access_point/3,
         delete_access_point/4,
         delete_access_point_policy/3,
         delete_access_point_policy/4,
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
         delete_public_access_block/2,
         delete_public_access_block/3,
         describe_job/3,
         describe_job/4,
         get_access_point/3,
         get_access_point/4,
         get_access_point_policy/3,
         get_access_point_policy/4,
         get_access_point_policy_status/3,
         get_access_point_policy_status/4,
         get_bucket/3,
         get_bucket/4,
         get_bucket_lifecycle_configuration/3,
         get_bucket_lifecycle_configuration/4,
         get_bucket_policy/3,
         get_bucket_policy/4,
         get_bucket_tagging/3,
         get_bucket_tagging/4,
         get_job_tagging/3,
         get_job_tagging/4,
         get_public_access_block/2,
         get_public_access_block/3,
         list_access_points/5,
         list_access_points/6,
         list_jobs/5,
         list_jobs/6,
         list_regional_buckets/5,
         list_regional_buckets/6,
         put_access_point_policy/3,
         put_access_point_policy/4,
         put_bucket_lifecycle_configuration/3,
         put_bucket_lifecycle_configuration/4,
         put_bucket_policy/3,
         put_bucket_policy/4,
         put_bucket_tagging/3,
         put_bucket_tagging/4,
         put_job_tagging/3,
         put_job_tagging/4,
         put_public_access_block/2,
         put_public_access_block/3,
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
%% Points in the Amazon Simple Storage Service Developer Guide.
%%
%% Using this action with Amazon S3 on Outposts
%%
%% This action:
%%
%% <ul> <li> Requires a virtual private cloud (VPC) configuration as S3 on
%% Outposts only supports VPC style access points.
%%
%% </li> <li> Does not support ACL on S3 on Outposts buckets.
%%
%% </li> <li> Does not support Public Access on S3 on Outposts buckets.
%%
%% </li> <li> Does not support object lock for S3 on Outposts buckets.
%%
%% </li> </ul> For more information, see Using Amazon S3 on Outposts in the
%% Amazon Simple Storage Service Developer Guide .
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `CreateAccessPoint`:
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
create_access_point(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API operation creates an Amazon S3 on Outposts bucket.
%%
%% To create an S3 bucket, see Create Bucket in the Amazon Simple Storage
%% Service API.
%%
%% Creates a new Outposts bucket. By creating the bucket, you become the
%% bucket owner. To create an Outposts bucket, you must have S3 on Outposts.
%% For more information, see Using Amazon S3 on Outposts in Amazon Simple
%% Storage Service Developer Guide.
%%
%% Not every string is an acceptable bucket name. For information on bucket
%% naming restrictions, see Working with Amazon S3 Buckets.
%%
%% S3 on Outposts buckets do not support
%%
%% <ul> <li> ACLs. Instead, configure access point policies to manage access
%% to buckets.
%%
%% </li> <li> Public access.
%%
%% </li> <li> Object Lock
%%
%% </li> <li> Bucket Location constraint
%%
%% </li> </ul> For an example of the request syntax for Amazon S3 on Outposts
%% that uses the S3 on Outposts endpoint hostname prefix and outpost-id in
%% your API request, see the Example section below.
%%
%% The following actions are related to `CreateBucket` for Amazon S3 on
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
create_bucket(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,

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

%% @doc S3 Batch Operations performs large-scale Batch Operations on Amazon
%% S3 objects.
%%
%% Batch Operations can run a single operation or action on lists of Amazon
%% S3 objects that you specify. For more information, see S3 Batch Operations
%% in the Amazon Simple Storage Service Developer Guide.
%%
%% This operation creates a S3 Batch Operations job.
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
%% </li> </ul>
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the ARN, see the Example section below.
%%
%% The following actions are related to `DeleteAccessPoint`:
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
delete_access_point(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the access point policy for the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `DeleteAccessPointPolicy`:
%%
%% <ul> <li> PutAccessPointPolicy
%%
%% </li> <li> GetAccessPointPolicy
%%
%% </li> </ul>
delete_access_point_policy(Client, Name, Input) ->
    delete_access_point_policy(Client, Name, Input, []).
delete_access_point_policy(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), "/policy"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API operation deletes an Amazon S3 on Outposts bucket.
%%
%% To delete an S3 bucket, see DeleteBucket in the Amazon Simple Storage
%% Service API.
%%
%% Deletes the Amazon S3 on Outposts bucket. All objects (including all
%% object versions and delete markers) in the bucket must be deleted before
%% the bucket itself can be deleted. For more information, see Using Amazon
%% S3 on Outposts in Amazon Simple Storage Service Developer Guide.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
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
delete_bucket(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API action deletes an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To delete an S3 bucket's lifecycle configuration, see
%% DeleteBucketLifecycle in the Amazon Simple Storage Service API.
%%
%% Deletes the lifecycle configuration from the specified Outposts bucket.
%% Amazon S3 on Outposts removes all the lifecycle configuration rules in the
%% lifecycle subresource associated with the bucket. Your objects never
%% expire, and Amazon S3 on Outposts no longer automatically deletes any
%% objects on the basis of rules contained in the deleted lifecycle
%% configuration. For more information, see Using Amazon S3 on Outposts in
%% Amazon Simple Storage Service Developer Guide.
%%
%% To use this operation, you must have permission to perform the
%% `s3outposts:DeleteLifecycleConfiguration` action. By default, the bucket
%% owner has this permission and the Outposts bucket owner can grant this
%% permission to others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
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
delete_bucket_lifecycle_configuration(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API operation deletes an Amazon S3 on Outposts bucket policy.
%%
%% To delete an S3 bucket policy, see DeleteBucketPolicy in the Amazon Simple
%% Storage Service API.
%%
%% This implementation of the DELETE operation uses the policy subresource to
%% delete the policy of a specified Amazon S3 on Outposts bucket. If you are
%% using an identity other than the root user of the AWS account that owns
%% the bucket, the calling identity must have the
%% `s3outposts:DeleteBucketPolicy` permissions on the specified Outposts
%% bucket and belong to the bucket owner's account to use this operation. For
%% more information, see Using Amazon S3 on Outposts in Amazon Simple Storage
%% Service Developer Guide.
%%
%% If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns a
%% `403 Access Denied` error. If you have the correct permissions, but you're
%% not using an identity that belongs to the bucket owner's account, Amazon
%% S3 returns a `405 Method Not Allowed` error.
%%
%% As a security precaution, the root user of the AWS account that owns a
%% bucket can always use this operation, even if the policy explicitly denies
%% the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `DeleteBucketPolicy`:
%%
%% <ul> <li> GetBucketPolicy
%%
%% </li> <li> PutBucketPolicy
%%
%% </li> </ul>
delete_bucket_policy(Client, Bucket, Input) ->
    delete_bucket_policy(Client, Bucket, Input, []).
delete_bucket_policy(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/policy"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API operation deletes an Amazon S3 on Outposts bucket's tags.
%%
%% To delete an S3 bucket tags, see DeleteBucketTagging in the Amazon Simple
%% Storage Service API.
%%
%% Deletes the tags from the Outposts bucket. For more information, see Using
%% Amazon S3 on Outposts in Amazon Simple Storage Service Developer Guide.
%%
%% To use this operation, you must have permission to perform the
%% `PutBucketTagging` action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `DeleteBucketTagging`:
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> PutBucketTagging
%%
%% </li> </ul>
delete_bucket_tagging(Client, Bucket, Input) ->
    delete_bucket_tagging(Client, Bucket, Input, []).
delete_bucket_tagging(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/tagging"],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the entire tag set from the specified S3 Batch Operations
%% job.
%%
%% To use this operation, you must have permission to perform the
%% `s3:DeleteJobTagging` action. For more information, see Controlling access
%% and labeling jobs using tags in the Amazon Simple Storage Service
%% Developer Guide.
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
delete_job_tagging(Client, JobId, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), "/tagging"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the `PublicAccessBlock` configuration for an AWS account.
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
delete_public_access_block(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the configuration parameters and status for a Batch
%% Operations job.
%%
%% For more information, see S3 Batch Operations in the Amazon Simple Storage
%% Service Developer Guide.
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
    describe_job(Client, JobId, AccountId, []).
describe_job(Client, JobId, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

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
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `GetAccessPoint`:
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
    get_access_point(Client, Name, AccountId, []).
get_access_point(Client, Name, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

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
%% The following actions are related to `GetAccessPointPolicy`:
%%
%% <ul> <li> PutAccessPointPolicy
%%
%% </li> <li> DeleteAccessPointPolicy
%%
%% </li> </ul>
get_access_point_policy(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy(Client, Name, AccountId, []).
get_access_point_policy(Client, Name, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), "/policy"],
    SuccessStatusCode = undefined,

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
%% Managing Data Access with Amazon S3 Access Points in the Amazon Simple
%% Storage Service Developer Guide.
get_access_point_policy_status(Client, Name, AccountId)
  when is_map(Client) ->
    get_access_point_policy_status(Client, Name, AccountId, []).
get_access_point_policy_status(Client, Name, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), "/policyStatus"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon S3 on Outposts bucket.
%%
%% For more information, see Using Amazon S3 on Outposts in the Amazon Simple
%% Storage Service Developer Guide.
%%
%% The following actions are related to `GetBucket` for Amazon S3 on
%% Outposts:
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
    get_bucket(Client, Bucket, AccountId, []).
get_bucket(Client, Bucket, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API operation gets an Amazon S3 on Outposts bucket's lifecycle
%% configuration.
%%
%% To get an S3 bucket's lifecycle configuration, see
%% GetBucketLifecycleConfiguration in the Amazon Simple Storage Service API.
%%
%% Returns the lifecycle configuration information set on the Outposts
%% bucket. For more information, see Using Amazon S3 on Outposts and for
%% information about lifecycle configuration, see Object Lifecycle Management
%% in Amazon Simple Storage Service Developer Guide.
%%
%% To use this operation, you must have permission to perform the
%% `s3outposts:GetLifecycleConfiguration` action. The Outposts bucket owner
%% has this permission, by default. The bucket owner can grant this
%% permission to others. For more information about permissions, see
%% Permissions Related to Bucket Subresource Operations and Managing Access
%% Permissions to Your Amazon S3 Resources.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% `GetBucketLifecycleConfiguration` has the following special error:
%%
%% <ul> <li> Error code: `NoSuchLifecycleConfiguration`
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following actions are related to
%% `GetBucketLifecycleConfiguration`:
%%
%% <ul> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> DeleteBucketLifecycleConfiguration
%%
%% </li> </ul>
get_bucket_lifecycle_configuration(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_lifecycle_configuration(Client, Bucket, AccountId, []).
get_bucket_lifecycle_configuration(Client, Bucket, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API action gets a bucket policy for an Amazon S3 on Outposts
%% bucket.
%%
%% To get a policy for an S3 bucket, see GetBucketPolicy in the Amazon Simple
%% Storage Service API.
%%
%% Returns the policy of a specified Outposts bucket. For more information,
%% see Using Amazon S3 on Outposts in the Amazon Simple Storage Service
%% Developer Guide.
%%
%% If you are using an identity other than the root user of the AWS account
%% that owns the bucket, the calling identity must have the `GetBucketPolicy`
%% permissions on the specified bucket and belong to the bucket owner's
%% account in order to use this operation.
%%
%% If you don't have `s3outposts:GetBucketPolicy` permissions, Amazon S3
%% returns a `403 Access Denied` error. If you have the correct permissions,
%% but you're not using an identity that belongs to the bucket owner's
%% account, Amazon S3 returns a `405 Method Not Allowed` error.
%%
%% As a security precaution, the root user of the AWS account that owns a
%% bucket can always use this operation, even if the policy explicitly denies
%% the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `GetBucketPolicy`:
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
    get_bucket_policy(Client, Bucket, AccountId, []).
get_bucket_policy(Client, Bucket, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/policy"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This API operation gets an Amazon S3 on Outposts bucket's tags.
%%
%% To get an S3 bucket tags, see GetBucketTagging in the Amazon Simple
%% Storage Service API.
%%
%% Returns the tag set associated with the Outposts bucket. For more
%% information, see Using Amazon S3 on Outposts in the Amazon Simple Storage
%% Service Developer Guide.
%%
%% To use this operation, you must have permission to perform the
%% `GetBucketTagging` action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% `GetBucketTagging` has the following special error:
%%
%% <ul> <li> Error code: `NoSuchTagSetError`
%%
%% <ul> <li> Description: There is no tag set associated with the bucket.
%%
%% </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
%% this action require an additional parameter of outpost-id to be passed
%% with the request and an S3 on Outposts endpoint hostname prefix instead of
%% s3-control. For an example of the request syntax for Amazon S3 on Outposts
%% that uses the S3 on Outposts endpoint hostname prefix and the outpost-id
%% derived using the access point ARN, see the Example section below.
%%
%% The following actions are related to `GetBucketTagging`:
%%
%% <ul> <li> PutBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
get_bucket_tagging(Client, Bucket, AccountId)
  when is_map(Client) ->
    get_bucket_tagging(Client, Bucket, AccountId, []).
get_bucket_tagging(Client, Bucket, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/tagging"],
    SuccessStatusCode = undefined,

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
%% `s3:GetJobTagging` action. For more information, see Controlling access
%% and labeling jobs using tags in the Amazon Simple Storage Service
%% Developer Guide.
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
    get_job_tagging(Client, JobId, AccountId, []).
get_job_tagging(Client, JobId, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), "/tagging"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the `PublicAccessBlock` configuration for an AWS account.
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
    get_public_access_block(Client, AccountId, []).
get_public_access_block(Client, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the access points currently associated with the
%% specified bucket.
%%
%% You can retrieve up to 1000 access points per call. If the specified
%% bucket has more than 1,000 access points (or the number specified in
%% `maxResults`, whichever is less), the response will include a continuation
%% token that you can use to list the additional access points.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `ListAccessPoints`:
%%
%% <ul> <li> CreateAccessPoint
%%
%% </li> <li> DeleteAccessPoint
%%
%% </li> <li> GetAccessPoint
%%
%% </li> </ul>
list_access_points(Client, Bucket, MaxResults, NextToken, AccountId)
  when is_map(Client) ->
    list_access_points(Client, Bucket, MaxResults, NextToken, AccountId, []).
list_access_points(Client, Bucket, MaxResults, NextToken, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/accesspoint"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"bucket">>, Bucket},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists current S3 Batch Operations jobs and jobs that have ended
%% within the last 30 days for the AWS account making the request.
%%
%% For more information, see S3 Batch Operations in the Amazon Simple Storage
%% Service Developer Guide.
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
list_jobs(Client, JobStatuses, MaxResults, NextToken, AccountId)
  when is_map(Client) ->
    list_jobs(Client, JobStatuses, MaxResults, NextToken, AccountId, []).
list_jobs(Client, JobStatuses, MaxResults, NextToken, AccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/jobs"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"jobStatuses">>, JobStatuses},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all Outposts buckets in an Outposts that are owned
%% by the authenticated sender of the request.
%%
%% For more information, see Using Amazon S3 on Outposts in the Amazon Simple
%% Storage Service Developer Guide.
%%
%% For an example of the request syntax for Amazon S3 on Outposts that uses
%% the S3 on Outposts endpoint hostname prefix and outpost-id in your API
%% request, see the Example section below.
list_regional_buckets(Client, MaxResults, NextToken, AccountId, OutpostId)
  when is_map(Client) ->
    list_regional_buckets(Client, MaxResults, NextToken, AccountId, OutpostId, []).
list_regional_buckets(Client, MaxResults, NextToken, AccountId, OutpostId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v20180820/bucket"],
    SuccessStatusCode = undefined,

    Headers0 =
      [
        {<<"x-amz-account-id">>, AccountId},
        {<<"x-amz-outpost-id">>, OutpostId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates an access policy with the specified access point.
%%
%% Each access point can have only one policy, so a request made to this API
%% replaces any existing policy associated with the specified access point.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `PutAccessPointPolicy`:
%%
%% <ul> <li> GetAccessPointPolicy
%%
%% </li> <li> DeleteAccessPointPolicy
%%
%% </li> </ul>
put_access_point_policy(Client, Name, Input) ->
    put_access_point_policy(Client, Name, Input, []).
put_access_point_policy(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/accesspoint/", http_uri:encode(Name), "/policy"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API action puts a lifecycle configuration to an Amazon S3 on
%% Outposts bucket.
%%
%% To put a lifecycle configuration to an S3 bucket, see
%% PutBucketLifecycleConfiguration in the Amazon Simple Storage Service API.
%%
%% Creates a new lifecycle configuration for the Outposts bucket or replaces
%% an existing lifecycle configuration. Outposts buckets can only support a
%% lifecycle that deletes objects after a certain period of time. For more
%% information, see Managing Lifecycle Permissions for Amazon S3 on Outposts.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `PutBucketLifecycleConfiguration`:
%%
%% <ul> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> DeleteBucketLifecycleConfiguration
%%
%% </li> </ul>
put_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    put_bucket_lifecycle_configuration(Client, Bucket, Input, []).
put_bucket_lifecycle_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/lifecycleconfiguration"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API action puts a bucket policy to an Amazon S3 on Outposts
%% bucket.
%%
%% To put a policy on an S3 bucket, see PutBucketPolicy in the Amazon Simple
%% Storage Service API.
%%
%% Applies an Amazon S3 bucket policy to an Outposts bucket. For more
%% information, see Using Amazon S3 on Outposts in the Amazon Simple Storage
%% Service Developer Guide.
%%
%% If you are using an identity other than the root user of the AWS account
%% that owns the Outposts bucket, the calling identity must have the
%% `PutBucketPolicy` permissions on the specified Outposts bucket and belong
%% to the bucket owner's account in order to use this operation.
%%
%% If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403
%% Access Denied` error. If you have the correct permissions, but you're not
%% using an identity that belongs to the bucket owner's account, Amazon S3
%% returns a `405 Method Not Allowed` error.
%%
%% As a security precaution, the root user of the AWS account that owns a
%% bucket can always use this operation, even if the policy explicitly denies
%% the root user the ability to perform this action.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% All Amazon S3 on Outposts REST API requests for this action require an
%% additional parameter of outpost-id to be passed with the request and an S3
%% on Outposts endpoint hostname prefix instead of s3-control. For an example
%% of the request syntax for Amazon S3 on Outposts that uses the S3 on
%% Outposts endpoint hostname prefix and the outpost-id derived using the
%% access point ARN, see the Example section below.
%%
%% The following actions are related to `PutBucketPolicy`:
%%
%% <ul> <li> GetBucketPolicy
%%
%% </li> <li> DeleteBucketPolicy
%%
%% </li> </ul>
put_bucket_policy(Client, Bucket, Input) ->
    put_bucket_policy(Client, Bucket, Input, []).
put_bucket_policy(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/policy"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>},
                       {<<"x-amz-confirm-remove-self-bucket-access">>, <<"ConfirmRemoveSelfBucketAccess">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API action puts tags on an Amazon S3 on Outposts bucket.
%%
%% To put tags on an S3 bucket, see PutBucketTagging in the Amazon Simple
%% Storage Service API.
%%
%% Sets the tags for an Outposts bucket. For more information, see Using
%% Amazon S3 on Outposts in the Amazon Simple Storage Service Developer
%% Guide.
%%
%% Use tags to organize your AWS bill to reflect your own cost structure. To
%% do this, sign up to get your AWS account bill with tag key values
%% included. Then, to see the cost of combined resources, organize your
%% billing information according to resources with the same tag key values.
%% For example, you can tag several resources with a specific application
%% name, and then organize your billing information to see the total cost of
%% that application across several services. For more information, see Cost
%% Allocation and Tagging.
%%
%% Within a bucket, if you add a tag that has the same key as an existing
%% tag, the new value overwrites the old value. For more information, see
%% Using Cost Allocation in Amazon S3 Bucket Tags.
%%
%% To use this operation, you must have permissions to perform the
%% `s3outposts:PutBucketTagging` action. The Outposts bucket owner has this
%% permission by default and can grant this permission to others. For more
%% information about permissions, see Permissions Related to Bucket
%% Subresource Operations and Managing Access Permissions to Your Amazon S3
%% Resources.
%%
%% `PutBucketTagging` has the following special errors:
%%
%% <ul> <li> Error code: `InvalidTagError`
%%
%% <ul> <li> Description: The tag provided was not a valid tag. This error
%% can occur if the tag did not pass input validation. For information about
%% tag restrictions, see User-Defined Tag Restrictions and AWS-Generated Cost
%% Allocation Tag Restrictions.
%%
%% </li> </ul> </li> <li> Error code: `MalformedXMLError`
%%
%% <ul> <li> Description: The XML provided does not match the schema.
%%
%% </li> </ul> </li> <li> Error code: `OperationAbortedError `
%%
%% <ul> <li> Description: A conflicting conditional operation is currently in
%% progress against this resource. Try again.
%%
%% </li> </ul> </li> <li> Error code: `InternalError`
%%
%% <ul> <li> Description: The service was unable to apply the provided tag to
%% the bucket.
%%
%% </li> </ul> </li> </ul> All Amazon S3 on Outposts REST API requests for
%% this action require an additional parameter of outpost-id to be passed
%% with the request and an S3 on Outposts endpoint hostname prefix instead of
%% s3-control. For an example of the request syntax for Amazon S3 on Outposts
%% that uses the S3 on Outposts endpoint hostname prefix and the outpost-id
%% derived using the access point ARN, see the Example section below.
%%
%% The following actions are related to `PutBucketTagging`:
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
put_bucket_tagging(Client, Bucket, Input) ->
    put_bucket_tagging(Client, Bucket, Input, []).
put_bucket_tagging(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/bucket/", http_uri:encode(Bucket), "/tagging"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the supplied tag-set on an S3 Batch Operations job.
%%
%% A tag is a key-value pair. You can associate S3 Batch Operations tags with
%% any job by sending a PUT request against the tagging subresource that is
%% associated with the job. To modify the existing tag set, you can either
%% replace the existing tag set entirely, or make changes within the existing
%% tag set by retrieving the existing tag set using GetJobTagging, modify
%% that tag set, and use this API action to replace the tag set with the one
%% you modified. For more information, see Controlling access and labeling
%% jobs using tags in the Amazon Simple Storage Service Developer Guide.
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
%% encodings, see User-Defined Tag Restrictions in the AWS Billing and Cost
%% Management User Guide.
%%
%% </li> </ul> </li> </ul>
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutJobTagging` action.
%%
%% Related actions include:
%%
%% <ul> <li> CreatJob
%%
%% </li> <li> GetJobTagging
%%
%% </li> <li> DeleteJobTagging
%%
%% </li> </ul>
put_job_tagging(Client, JobId, Input) ->
    put_job_tagging(Client, JobId, Input, []).
put_job_tagging(Client, JobId, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), "/tagging"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or modifies the `PublicAccessBlock` configuration for an AWS
%% account.
%%
%% For more information, see Using Amazon S3 block public access.
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
put_public_access_block(Client, Input0, Options) ->
    Method = put,
    Path = ["/v20180820/configuration/publicAccessBlock"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing S3 Batch Operations job's priority.
%%
%% For more information, see S3 Batch Operations in the Amazon Simple Storage
%% Service Developer Guide.
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
update_job_priority(Client, JobId, Input0, Options) ->
    Method = post,
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), "/priority"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"priority">>, <<"Priority">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status for the specified job.
%%
%% Use this operation to confirm that you want to run a job or to cancel an
%% existing job. For more information, see S3 Batch Operations in the Amazon
%% Simple Storage Service Developer Guide.
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
update_job_status(Client, JobId, Input0, Options) ->
    Method = post,
    Path = ["/v20180820/jobs/", http_uri:encode(JobId), "/status"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amz-account-id">>, <<"AccountId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"requestedJobStatus">>, <<"RequestedJobStatus">>},
                     {<<"statusUpdateReason">>, <<"StatusUpdateReason">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"s3">>},
    AccountId = proplists:get_value(<<"x-amz-account-id">>, Headers0),
    Host = build_host(AccountId, <<"s3-control">>, Client1),
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
