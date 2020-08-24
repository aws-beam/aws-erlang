%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS S3 Control provides access to Amazon S3 control plane operations.
-module(aws_s3_control).

-export([create_access_point/3,
         create_access_point/4,
         create_job/2,
         create_job/3,
         delete_access_point/3,
         delete_access_point/4,
         delete_access_point_policy/3,
         delete_access_point_policy/4,
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
         get_job_tagging/3,
         get_job_tagging/4,
         get_public_access_block/2,
         get_public_access_block/3,
         list_access_points/5,
         list_access_points/6,
         list_jobs/5,
         list_jobs/6,
         put_access_point_policy/3,
         put_access_point_policy/4,
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

%% @doc You can use Amazon S3 Batch Operations to perform large-scale Batch
%% Operations on Amazon S3 objects. Amazon S3 Batch Operations can execute a
%% single operation or action on lists of Amazon S3 objects that you specify.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html">Amazon
%% S3 Batch Operations</a> in the Amazon Simple Storage Service Developer
%% Guide.
%%
%% Related actions include:
%%
%% <ul> <li> <a>DescribeJob</a>
%%
%% </li> <li> <a>ListJobs</a>
%%
%% </li> <li> <a>UpdateJobPriority</a>
%%
%% </li> <li> <a>UpdateJobStatus</a>
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

%% @doc Removes the entire tag set from the specified Amazon S3 Batch
%% Operations job. To use this operation, you must have permission to perform
%% the <code>s3:DeleteJobTagging</code> action. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Using
%% Job Tags</a> in the Amazon Simple Storage Service Developer Guide.
%%
%% <p/> Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>GetJobTagging</a>
%%
%% </li> <li> <a>PutJobTagging</a>
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

%% @doc Removes the <code>PublicAccessBlock</code> configuration for an
%% Amazon Web Services account.
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
%% Operations job. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html">Amazon
%% S3 Batch Operations</a> in the Amazon Simple Storage Service Developer
%% Guide.
%%
%% <p/> Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>ListJobs</a>
%%
%% </li> <li> <a>UpdateJobPriority</a>
%%
%% </li> <li> <a>UpdateJobStatus</a>
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
%% that allows public access. For more information about public access
%% through access points, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html">Managing
%% Data Access with Amazon S3 Access Points</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
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

%% @doc Returns the tags on an Amazon S3 Batch Operations job. To use this
%% operation, you must have permission to perform the
%% <code>s3:GetJobTagging</code> action. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Using
%% Job Tags</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.
%%
%% <p/> Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>PutJobTagging</a>
%%
%% </li> <li> <a>DeleteJobTagging</a>
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

%% @doc Retrieves the <code>PublicAccessBlock</code> configuration for an
%% Amazon Web Services account.
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
%% specified bucket. You can retrieve up to 1000 access points per call. If
%% the specified bucket has more than 1,000 access points (or the number
%% specified in <code>maxResults</code>, whichever is less), the response
%% will include a continuation token that you can use to list the additional
%% access points.
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

%% @doc Lists current Amazon S3 Batch Operations jobs and jobs that have
%% ended within the last 30 days for the AWS account making the request. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html">Amazon
%% S3 Batch Operations</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% Related actions include:
%%
%% <p/> <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>DescribeJob</a>
%%
%% </li> <li> <a>UpdateJobPriority</a>
%%
%% </li> <li> <a>UpdateJobStatus</a>
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

%% @doc Associates an access policy with the specified access point. Each
%% access point can have only one policy, so a request made to this API
%% replaces any existing policy associated with the specified access point.
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

%% @doc Set the supplied tag-set on an Amazon S3 Batch Operations job.
%%
%% A tag is a key-value pair. You can associate Amazon S3 Batch Operations
%% tags with any job by sending a PUT request against the tagging subresource
%% that is associated with the job. To modify the existing tag set, you can
%% either replace the existing tag set entirely, or make changes within the
%% existing tag set by retrieving the existing tag set using
%% <a>GetJobTagging</a>, modify that tag set, and use this API action to
%% replace the tag set with the one you have modified.. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Using
%% Job Tags</a> in the Amazon Simple Storage Service Developer Guide.
%%
%% <p/> <note> <ul> <li> If you send this request with an empty tag set,
%% Amazon S3 deletes the existing tag set on the Batch Operations job. If you
%% use this method, you will be charged for a Tier 1 Request (PUT). For more
%% information, see <a href="http://aws.amazon.com/s3/pricing/">Amazon S3
%% pricing</a>.
%%
%% </li> <li> For deleting existing tags for your batch operations job,
%% <a>DeleteJobTagging</a> request is preferred because it achieves the same
%% result without incurring charges.
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
%% encodings, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined
%% Tag Restrictions</a>.
%%
%% </li> </ul> </li> </ul> </note> <p/> To use this operation, you must have
%% permission to perform the <code>s3:PutJobTagging</code> action.
%%
%% Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>GetJobTagging</a>
%%
%% </li> <li> <a>DeleteJobTagging</a>
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

%% @doc Creates or modifies the <code>PublicAccessBlock</code> configuration
%% for an Amazon Web Services account.
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

%% @doc Updates an existing Amazon S3 Batch Operations job's priority. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html">Amazon
%% S3 Batch Operations</a> in the Amazon Simple Storage Service Developer
%% Guide.
%%
%% <p/> Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>ListJobs</a>
%%
%% </li> <li> <a>DescribeJob</a>
%%
%% </li> <li> <a>UpdateJobStatus</a>
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

%% @doc Updates the status for the specified job. Use this operation to
%% confirm that you want to run a job or to cancel an existing job. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html">Amazon
%% S3 Batch Operations</a> in the Amazon Simple Storage Service Developer
%% Guide.
%%
%% <p/> Related actions include:
%%
%% <ul> <li> <a>CreateJob</a>
%%
%% </li> <li> <a>ListJobs</a>
%%
%% </li> <li> <a>DescribeJob</a>
%%
%% </li> <li> <a>UpdateJobStatus</a>
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
