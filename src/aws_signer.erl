%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With code signing for IoT, you can sign code that you create for any
%% IoT device that is supported by Amazon Web Services (AWS). Code signing is
%% available through <a
%% href="http://docs.aws.amazon.com/freertos/latest/userguide/">Amazon
%% FreeRTOS</a> and <a
%% href="http://docs.aws.amazon.com/iot/latest/developerguide/">AWS IoT
%% Device Management</a>, and integrated with <a
%% href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate
%% Manager (ACM)</a>. In order to sign code, you import a third-party code
%% signing certificate with ACM that is used to sign updates in Amazon
%% FreeRTOS and AWS IoT Device Management. For general information about
%% using code signing, see the <a
%% href="http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html">Code
%% Signing for IoT Developer Guide</a>.
-module(aws_signer).

-export([cancel_signing_profile/3,
         cancel_signing_profile/4,
         describe_signing_job/2,
         describe_signing_job/3,
         get_signing_platform/2,
         get_signing_platform/3,
         get_signing_profile/2,
         get_signing_profile/3,
         list_signing_jobs/6,
         list_signing_jobs/7,
         list_signing_platforms/6,
         list_signing_platforms/7,
         list_signing_profiles/4,
         list_signing_profiles/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_signing_profile/3,
         put_signing_profile/4,
         start_signing_job/2,
         start_signing_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Changes the state of an <code>ACTIVE</code> signing profile to
%% <code>CANCELED</code>. A canceled profile is still viewable with the
%% <code>ListSigningProfiles</code> operation, but it cannot perform new
%% signing jobs, and is deleted two years after cancelation.
cancel_signing_profile(Client, ProfileName, Input) ->
    cancel_signing_profile(Client, ProfileName, Input, []).
cancel_signing_profile(Client, ProfileName, Input0, Options) ->
    Method = delete,
    Path = ["/signing-profiles/", http_uri:encode(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specific code signing job. You specify
%% the job by using the <code>jobId</code> value that is returned by the
%% <a>StartSigningJob</a> operation.
describe_signing_job(Client, JobId)
  when is_map(Client) ->
    describe_signing_job(Client, JobId, []).
describe_signing_job(Client, JobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-jobs/", http_uri:encode(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing platform.
get_signing_platform(Client, PlatformId)
  when is_map(Client) ->
    get_signing_platform(Client, PlatformId, []).
get_signing_platform(Client, PlatformId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-platforms/", http_uri:encode(PlatformId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing profile.
get_signing_profile(Client, ProfileName)
  when is_map(Client) ->
    get_signing_profile(Client, ProfileName, []).
get_signing_profile(Client, ProfileName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-profiles/", http_uri:encode(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all your signing jobs. You can use the <code>maxResults</code>
%% parameter to limit the number of signing jobs that are returned in the
%% response. If additional jobs remain to be listed, code signing returns a
%% <code>nextToken</code> value. Use this value in subsequent calls to
%% <code>ListSigningJobs</code> to fetch the remaining values. You can
%% continue calling <code>ListSigningJobs</code> with your
%% <code>maxResults</code> parameter and with new values that code signing
%% returns in the <code>nextToken</code> parameter until all of your signing
%% jobs have been returned.
list_signing_jobs(Client, MaxResults, NextToken, PlatformId, RequestedBy, Status)
  when is_map(Client) ->
    list_signing_jobs(Client, MaxResults, NextToken, PlatformId, RequestedBy, Status, []).
list_signing_jobs(Client, MaxResults, NextToken, PlatformId, RequestedBy, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"platformId">>, PlatformId},
        {<<"requestedBy">>, RequestedBy},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all signing platforms available in code signing that match the
%% request parameters. If additional jobs remain to be listed, code signing
%% returns a <code>nextToken</code> value. Use this value in subsequent calls
%% to <code>ListSigningJobs</code> to fetch the remaining values. You can
%% continue calling <code>ListSigningJobs</code> with your
%% <code>maxResults</code> parameter and with new values that code signing
%% returns in the <code>nextToken</code> parameter until all of your signing
%% jobs have been returned.
list_signing_platforms(Client, Category, MaxResults, NextToken, Partner, Target)
  when is_map(Client) ->
    list_signing_platforms(Client, Category, MaxResults, NextToken, Partner, Target, []).
list_signing_platforms(Client, Category, MaxResults, NextToken, Partner, Target, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-platforms"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"category">>, Category},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"partner">>, Partner},
        {<<"target">>, Target}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available signing profiles in your AWS account. Returns
%% only profiles with an <code>ACTIVE</code> status unless the
%% <code>includeCanceled</code> request field is set to <code>true</code>. If
%% additional jobs remain to be listed, code signing returns a
%% <code>nextToken</code> value. Use this value in subsequent calls to
%% <code>ListSigningJobs</code> to fetch the remaining values. You can
%% continue calling <code>ListSigningJobs</code> with your
%% <code>maxResults</code> parameter and with new values that code signing
%% returns in the <code>nextToken</code> parameter until all of your signing
%% jobs have been returned.
list_signing_profiles(Client, IncludeCanceled, MaxResults, NextToken)
  when is_map(Client) ->
    list_signing_profiles(Client, IncludeCanceled, MaxResults, NextToken, []).
list_signing_profiles(Client, IncludeCanceled, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/signing-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"includeCanceled">>, IncludeCanceled},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with a signing profile
%% resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a signing profile. A signing profile is a code signing
%% template that can be used to carry out a pre-defined signing job. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html">http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html</a>
put_signing_profile(Client, ProfileName, Input) ->
    put_signing_profile(Client, ProfileName, Input, []).
put_signing_profile(Client, ProfileName, Input0, Options) ->
    Method = put,
    Path = ["/signing-profiles/", http_uri:encode(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a signing job to be performed on the code provided. Signing
%% jobs are viewable by the <code>ListSigningJobs</code> operation for two
%% years after they are performed. Note the following requirements:
%%
%% <ul> <li> You must create an Amazon S3 source bucket. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html">Create
%% a Bucket</a> in the <i>Amazon S3 Getting Started Guide</i>.
%%
%% </li> <li> Your S3 source bucket must be version enabled.
%%
%% </li> <li> You must create an S3 destination bucket. Code signing uses
%% your S3 destination bucket to write your signed code.
%%
%% </li> <li> You specify the name of the source and destination buckets when
%% calling the <code>StartSigningJob</code> operation.
%%
%% </li> <li> You must also specify a request token that identifies your
%% request to code signing.
%%
%% </li> </ul> You can call the <a>DescribeSigningJob</a> and the
%% <a>ListSigningJobs</a> actions after you call
%% <code>StartSigningJob</code>.
%%
%% For a Java example that shows how to use this action, see <a
%% href="http://docs.aws.amazon.com/acm/latest/userguide/">http://docs.aws.amazon.com/acm/latest/userguide/</a>
start_signing_job(Client, Input) ->
    start_signing_job(Client, Input, []).
start_signing_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/signing-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a signing profile. Tags are labels that you
%% can use to identify and organize your AWS resources. Each tag consists of
%% a key and an optional value. To specify the signing profile, use its
%% Amazon Resource Name (ARN). To specify the tag, use a key-value pair.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a signing profile. To remove the tags,
%% specify a list of tag keys.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
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
    Client1 = Client#{service => <<"signer">>},
    Host = build_host(<<"signer">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
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
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
