%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Signer is a fully managed code signing service to help you ensure
%% the trust and integrity of your code.
%%
%% AWS Signer supports the following applications:
%%
%% With code signing for AWS Lambda, you can sign AWS Lambda deployment
%% packages. Integrated support is provided for Amazon S3, Amazon CloudWatch,
%% and AWS CloudTrail. In order to sign code, you create a signing profile
%% and then use Signer to sign Lambda zip files in S3.
%%
%% With code signing for IoT, you can sign code for any IoT device that is
%% supported by AWS. IoT code signing is available for Amazon FreeRTOS and
%% AWS IoT Device Management, and is integrated with AWS Certificate Manager
%% (ACM). In order to sign code, you import a third-party code signing
%% certificate using ACM, and use that to sign updates in Amazon FreeRTOS and
%% AWS IoT Device Management.
%%
%% For more information about AWS Signer, see the AWS Signer Developer Guide.
-module(aws_signer).

-export([add_profile_permission/3,
         add_profile_permission/4,
         cancel_signing_profile/3,
         cancel_signing_profile/4,
         describe_signing_job/2,
         describe_signing_job/4,
         describe_signing_job/5,
         get_signing_platform/2,
         get_signing_platform/4,
         get_signing_platform/5,
         get_signing_profile/2,
         get_signing_profile/4,
         get_signing_profile/5,
         list_profile_permissions/2,
         list_profile_permissions/4,
         list_profile_permissions/5,
         list_signing_jobs/1,
         list_signing_jobs/3,
         list_signing_jobs/4,
         list_signing_platforms/1,
         list_signing_platforms/3,
         list_signing_platforms/4,
         list_signing_profiles/1,
         list_signing_profiles/3,
         list_signing_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_signing_profile/3,
         put_signing_profile/4,
         remove_profile_permission/4,
         remove_profile_permission/5,
         revoke_signature/3,
         revoke_signature/4,
         revoke_signing_profile/3,
         revoke_signing_profile/4,
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

%% @doc Adds cross-account permissions to a signing profile.
add_profile_permission(Client, ProfileName, Input) ->
    add_profile_permission(Client, ProfileName, Input, []).
add_profile_permission(Client, ProfileName, Input0, Options) ->
    Method = post,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of an `ACTIVE' signing profile to `CANCELED'.
%%
%% A canceled profile is still viewable with the `ListSigningProfiles'
%% operation, but it cannot perform new signing jobs, and is deleted two
%% years after cancelation.
cancel_signing_profile(Client, ProfileName, Input) ->
    cancel_signing_profile(Client, ProfileName, Input, []).
cancel_signing_profile(Client, ProfileName, Input0, Options) ->
    Method = delete,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specific code signing job.
%%
%% You specify the job by using the `jobId' value that is returned by the
%% `StartSigningJob' operation.
describe_signing_job(Client, JobId)
  when is_map(Client) ->
    describe_signing_job(Client, JobId, #{}, #{}).

describe_signing_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_signing_job(Client, JobId, QueryMap, HeadersMap, []).

describe_signing_job(Client, JobId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing platform.
get_signing_platform(Client, PlatformId)
  when is_map(Client) ->
    get_signing_platform(Client, PlatformId, #{}, #{}).

get_signing_platform(Client, PlatformId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signing_platform(Client, PlatformId, QueryMap, HeadersMap, []).

get_signing_platform(Client, PlatformId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-platforms/", aws_util:encode_uri(PlatformId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information on a specific signing profile.
get_signing_profile(Client, ProfileName)
  when is_map(Client) ->
    get_signing_profile(Client, ProfileName, #{}, #{}).

get_signing_profile(Client, ProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_signing_profile(Client, ProfileName, QueryMap, HeadersMap, []).

get_signing_profile(Client, ProfileName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"profileOwner">>, maps:get(<<"profileOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the cross-account permissions associated with a signing
%% profile.
list_profile_permissions(Client, ProfileName)
  when is_map(Client) ->
    list_profile_permissions(Client, ProfileName, #{}, #{}).

list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap, []).

list_profile_permissions(Client, ProfileName, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all your signing jobs.
%%
%% You can use the `maxResults' parameter to limit the number of signing jobs
%% that are returned in the response. If additional jobs remain to be listed,
%% code signing returns a `nextToken' value. Use this value in subsequent
%% calls to `ListSigningJobs' to fetch the remaining values. You can continue
%% calling `ListSigningJobs' with your `maxResults' parameter and with new
%% values that code signing returns in the `nextToken' parameter until all of
%% your signing jobs have been returned.
list_signing_jobs(Client)
  when is_map(Client) ->
    list_signing_jobs(Client, #{}, #{}).

list_signing_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_jobs(Client, QueryMap, HeadersMap, []).

list_signing_jobs(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"isRevoked">>, maps:get(<<"isRevoked">>, QueryMap, undefined)},
        {<<"jobInvoker">>, maps:get(<<"jobInvoker">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"platformId">>, maps:get(<<"platformId">>, QueryMap, undefined)},
        {<<"requestedBy">>, maps:get(<<"requestedBy">>, QueryMap, undefined)},
        {<<"signatureExpiresAfter">>, maps:get(<<"signatureExpiresAfter">>, QueryMap, undefined)},
        {<<"signatureExpiresBefore">>, maps:get(<<"signatureExpiresBefore">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all signing platforms available in code signing that match the
%% request parameters.
%%
%% If additional jobs remain to be listed, code signing returns a `nextToken'
%% value. Use this value in subsequent calls to `ListSigningJobs' to fetch
%% the remaining values. You can continue calling `ListSigningJobs' with your
%% `maxResults' parameter and with new values that code signing returns in
%% the `nextToken' parameter until all of your signing jobs have been
%% returned.
list_signing_platforms(Client)
  when is_map(Client) ->
    list_signing_platforms(Client, #{}, #{}).

list_signing_platforms(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_platforms(Client, QueryMap, HeadersMap, []).

list_signing_platforms(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-platforms"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"partner">>, maps:get(<<"partner">>, QueryMap, undefined)},
        {<<"target">>, maps:get(<<"target">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all available signing profiles in your AWS account.
%%
%% Returns only profiles with an `ACTIVE' status unless the `includeCanceled'
%% request field is set to `true'. If additional jobs remain to be listed,
%% code signing returns a `nextToken' value. Use this value in subsequent
%% calls to `ListSigningJobs' to fetch the remaining values. You can continue
%% calling `ListSigningJobs' with your `maxResults' parameter and with new
%% values that code signing returns in the `nextToken' parameter until all of
%% your signing jobs have been returned.
list_signing_profiles(Client)
  when is_map(Client) ->
    list_signing_profiles(Client, #{}, #{}).

list_signing_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_signing_profiles(Client, QueryMap, HeadersMap, []).

list_signing_profiles(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/signing-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"includeCanceled">>, maps:get(<<"includeCanceled">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"platformId">>, maps:get(<<"platformId">>, QueryMap, undefined)},
        {<<"statuses">>, maps:get(<<"statuses">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags associated with a signing profile
%% resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a signing profile.
%%
%% A signing profile is a code signing template that can be used to carry out
%% a pre-defined signing job. For more information, see
%% [http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html]
put_signing_profile(Client, ProfileName, Input) ->
    put_signing_profile(Client, ProfileName, Input, []).
put_signing_profile(Client, ProfileName, Input0, Options) ->
    Method = put,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes cross-account permissions from a signing profile.
remove_profile_permission(Client, ProfileName, StatementId, Input) ->
    remove_profile_permission(Client, ProfileName, StatementId, Input, []).
remove_profile_permission(Client, ProfileName, StatementId, Input0, Options) ->
    Method = delete,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/permissions/", aws_util:encode_uri(StatementId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of a signing job to REVOKED.
%%
%% This indicates that the signature is no longer valid.
revoke_signature(Client, JobId, Input) ->
    revoke_signature(Client, JobId, Input, []).
revoke_signature(Client, JobId, Input0, Options) ->
    Method = put,
    Path = ["/signing-jobs/", aws_util:encode_uri(JobId), "/revoke"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the state of a signing profile to REVOKED.
%%
%% This indicates that signatures generated using the signing profile after
%% an effective start date are no longer valid.
revoke_signing_profile(Client, ProfileName, Input) ->
    revoke_signing_profile(Client, ProfileName, Input, []).
revoke_signing_profile(Client, ProfileName, Input0, Options) ->
    Method = put,
    Path = ["/signing-profiles/", aws_util:encode_uri(ProfileName), "/revoke"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a signing job to be performed on the code provided.
%%
%% Signing jobs are viewable by the `ListSigningJobs' operation for two years
%% after they are performed. Note the following requirements:
%%
%% <ul> <li> You must create an Amazon S3 source bucket. For more
%% information, see Create a Bucket in the Amazon S3 Getting Started Guide.
%%
%% </li> <li> Your S3 source bucket must be version enabled.
%%
%% </li> <li> You must create an S3 destination bucket. Code signing uses
%% your S3 destination bucket to write your signed code.
%%
%% </li> <li> You specify the name of the source and destination buckets when
%% calling the `StartSigningJob' operation.
%%
%% </li> <li> You must also specify a request token that identifies your
%% request to code signing.
%%
%% </li> </ul> You can call the `DescribeSigningJob' and the
%% `ListSigningJobs' actions after you call `StartSigningJob'.
%%
%% For a Java example that shows how to use this action, see
%% [http://docs.aws.amazon.com/acm/latest/userguide/]
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

%% @doc Adds one or more tags to a signing profile.
%%
%% Tags are labels that you can use to identify and organize your AWS
%% resources. Each tag consists of a key and an optional value. To specify
%% the signing profile, use its Amazon Resource Name (ARN). To specify the
%% tag, use a key-value pair.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a signing profile.
%%
%% To remove the tags, specify a list of tag keys.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
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
