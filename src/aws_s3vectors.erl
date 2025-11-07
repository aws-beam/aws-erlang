%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon S3 vector buckets are a bucket type to store and search
%% vectors with sub-second search times.
%%
%% They are designed to provide dedicated API operations for you to interact
%% with vectors to do similarity search. Within a vector bucket, you use a
%% vector index to organize and logically group your vector data. When you
%% make a write or read request, you direct it to a single vector index. You
%% store your vector data as vectors. A vector contains a key (a name that
%% you assign), a multi-dimensional vector, and, optionally, metadata that
%% describes a vector. The key uniquely identifies the vector in a vector
%% index.
-module(aws_s3vectors).

-export([create_index/2,
         create_index/3,
         create_vector_bucket/2,
         create_vector_bucket/3,
         delete_index/2,
         delete_index/3,
         delete_vector_bucket/2,
         delete_vector_bucket/3,
         delete_vector_bucket_policy/2,
         delete_vector_bucket_policy/3,
         delete_vectors/2,
         delete_vectors/3,
         get_index/2,
         get_index/3,
         get_vector_bucket/2,
         get_vector_bucket/3,
         get_vector_bucket_policy/2,
         get_vector_bucket_policy/3,
         get_vectors/2,
         get_vectors/3,
         list_indexes/2,
         list_indexes/3,
         list_vector_buckets/2,
         list_vector_buckets/3,
         list_vectors/2,
         list_vectors/3,
         put_vector_bucket_policy/2,
         put_vector_bucket_policy/3,
         put_vectors/2,
         put_vectors/3,
         query_vectors/2,
         query_vectors/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_index_output() :: #{
%%   <<"indexArn">> => string()
%% }
-type create_index_output() :: #{binary() => any()}.


%% Example:
%% kms_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_disabled_exception() :: #{binary() => any()}.


%% Example:
%% vector_bucket_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type vector_bucket_summary() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"sseType">> => list(any())
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% get_vector_bucket_policy_output() :: #{
%%   <<"policy">> => string()
%% }
-type get_vector_bucket_policy_output() :: #{binary() => any()}.


%% Example:
%% create_vector_bucket_input() :: #{
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"vectorBucketName">> := string()
%% }
-type create_vector_bucket_input() :: #{binary() => any()}.


%% Example:
%% get_vectors_output() :: #{
%%   <<"vectors">> => list(get_output_vector())
%% }
-type get_vectors_output() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% get_output_vector() :: #{
%%   <<"data">> => list(),
%%   <<"key">> => string(),
%%   <<"metadata">> => any()
%% }
-type get_output_vector() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% query_vectors_input() :: #{
%%   <<"filter">> => [any()],
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"queryVector">> := list(),
%%   <<"returnDistance">> => [boolean()],
%%   <<"returnMetadata">> => [boolean()],
%%   <<"topK">> := integer(),
%%   <<"vectorBucketName">> => string()
%% }
-type query_vectors_input() :: #{binary() => any()}.


%% Example:
%% get_index_output() :: #{
%%   <<"index">> => index()
%% }
-type get_index_output() :: #{binary() => any()}.


%% Example:
%% get_vector_bucket_input() :: #{
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type get_vector_bucket_input() :: #{binary() => any()}.


%% Example:
%% list_vector_buckets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"prefix">> => string()
%% }
-type list_vector_buckets_input() :: #{binary() => any()}.

%% Example:
%% delete_vector_bucket_policy_output() :: #{}
-type delete_vector_bucket_policy_output() :: #{}.

%% Example:
%% put_vectors_output() :: #{}
-type put_vectors_output() :: #{}.


%% Example:
%% put_vectors_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"vectorBucketName">> => string(),
%%   <<"vectors">> := list(put_input_vector())
%% }
-type put_vectors_input() :: #{binary() => any()}.


%% Example:
%% index() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"dataType">> => list(any()),
%%   <<"dimension">> => integer(),
%%   <<"distanceMetric">> => list(any()),
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"metadataConfiguration">> => metadata_configuration(),
%%   <<"vectorBucketName">> => string()
%% }
-type index() :: #{binary() => any()}.


%% Example:
%% query_vectors_output() :: #{
%%   <<"distanceMetric">> => list(any()),
%%   <<"vectors">> => list(query_output_vector())
%% }
-type query_vectors_output() :: #{binary() => any()}.

%% Example:
%% delete_vector_bucket_output() :: #{}
-type delete_vector_bucket_output() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% index_summary() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type index_summary() :: #{binary() => any()}.


%% Example:
%% list_indexes_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"prefix">> => string(),
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type list_indexes_input() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% delete_vector_bucket_policy_input() :: #{
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type delete_vector_bucket_policy_input() :: #{binary() => any()}.


%% Example:
%% list_output_vector() :: #{
%%   <<"data">> => list(),
%%   <<"key">> => string(),
%%   <<"metadata">> => any()
%% }
-type list_output_vector() :: #{binary() => any()}.


%% Example:
%% put_input_vector() :: #{
%%   <<"data">> => list(),
%%   <<"key">> => string(),
%%   <<"metadata">> => any()
%% }
-type put_input_vector() :: #{binary() => any()}.

%% Example:
%% put_vector_bucket_policy_output() :: #{}
-type put_vector_bucket_policy_output() :: #{}.


%% Example:
%% create_vector_bucket_output() :: #{
%%   <<"vectorBucketArn">> => string()
%% }
-type create_vector_bucket_output() :: #{binary() => any()}.


%% Example:
%% delete_vectors_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"keys">> := list(string()),
%%   <<"vectorBucketName">> => string()
%% }
-type delete_vectors_input() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% get_vector_bucket_output() :: #{
%%   <<"vectorBucket">> => vector_bucket()
%% }
-type get_vector_bucket_output() :: #{binary() => any()}.


%% Example:
%% vector_bucket() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type vector_bucket() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_index_output() :: #{}
-type delete_index_output() :: #{}.


%% Example:
%% metadata_configuration() :: #{
%%   <<"nonFilterableMetadataKeys">> => list(string())
%% }
-type metadata_configuration() :: #{binary() => any()}.


%% Example:
%% list_vector_buckets_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vectorBuckets">> => list(vector_bucket_summary())
%% }
-type list_vector_buckets_output() :: #{binary() => any()}.


%% Example:
%% list_vectors_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"returnData">> => [boolean()],
%%   <<"returnMetadata">> => [boolean()],
%%   <<"segmentCount">> => integer(),
%%   <<"segmentIndex">> => integer(),
%%   <<"vectorBucketName">> => string()
%% }
-type list_vectors_input() :: #{binary() => any()}.


%% Example:
%% kms_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_not_found_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_index_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type get_index_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% delete_index_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type delete_index_input() :: #{binary() => any()}.


%% Example:
%% get_vectors_input() :: #{
%%   <<"indexArn">> => string(),
%%   <<"indexName">> => string(),
%%   <<"keys">> := list(string()),
%%   <<"returnData">> => [boolean()],
%%   <<"returnMetadata">> => [boolean()],
%%   <<"vectorBucketName">> => string()
%% }
-type get_vectors_input() :: #{binary() => any()}.


%% Example:
%% get_vector_bucket_policy_input() :: #{
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type get_vector_bucket_policy_input() :: #{binary() => any()}.


%% Example:
%% list_indexes_output() :: #{
%%   <<"indexes">> => list(index_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_indexes_output() :: #{binary() => any()}.


%% Example:
%% delete_vector_bucket_input() :: #{
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type delete_vector_bucket_input() :: #{binary() => any()}.


%% Example:
%% create_index_input() :: #{
%%   <<"dataType">> := list(any()),
%%   <<"dimension">> := integer(),
%%   <<"distanceMetric">> := list(any()),
%%   <<"indexName">> := string(),
%%   <<"metadataConfiguration">> => metadata_configuration(),
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type create_index_input() :: #{binary() => any()}.


%% Example:
%% kms_invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% delete_vectors_output() :: #{}
-type delete_vectors_output() :: #{}.


%% Example:
%% list_vectors_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vectors">> => list(list_output_vector())
%% }
-type list_vectors_output() :: #{binary() => any()}.


%% Example:
%% put_vector_bucket_policy_input() :: #{
%%   <<"policy">> := string(),
%%   <<"vectorBucketArn">> => string(),
%%   <<"vectorBucketName">> => string()
%% }
-type put_vector_bucket_policy_input() :: #{binary() => any()}.


%% Example:
%% kms_invalid_key_usage_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_key_usage_exception() :: #{binary() => any()}.


%% Example:
%% query_output_vector() :: #{
%%   <<"data">> => list(),
%%   <<"distance">> => [float()],
%%   <<"key">> => string(),
%%   <<"metadata">> => any()
%% }
-type query_output_vector() :: #{binary() => any()}.

-type create_index_errors() ::
    service_unavailable_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_vector_bucket_errors() ::
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_index_errors() ::
    service_unavailable_exception().

-type delete_vector_bucket_errors() ::
    service_unavailable_exception() | 
    conflict_exception().

-type delete_vector_bucket_policy_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type delete_vectors_errors() ::
    kms_invalid_key_usage_exception() | 
    kms_invalid_state_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    kms_disabled_exception().

-type get_index_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type get_vector_bucket_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type get_vector_bucket_policy_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type get_vectors_errors() ::
    kms_invalid_key_usage_exception() | 
    kms_invalid_state_exception() | 
    kms_not_found_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    kms_disabled_exception().

-type list_indexes_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type list_vector_buckets_errors() ::
    service_unavailable_exception().

-type list_vectors_errors() ::
    access_denied_exception() | 
    service_unavailable_exception() | 
    not_found_exception().

-type put_vector_bucket_policy_errors() ::
    service_unavailable_exception() | 
    not_found_exception().

-type put_vectors_errors() ::
    kms_invalid_key_usage_exception() | 
    kms_invalid_state_exception() | 
    access_denied_exception() | 
    kms_not_found_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    kms_disabled_exception().

-type query_vectors_errors() ::
    kms_invalid_key_usage_exception() | 
    kms_invalid_state_exception() | 
    kms_not_found_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    kms_disabled_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Creates a vector index within a vector bucket. To specify the vector
%% bucket, you must use either the vector bucket name or the vector bucket
%% Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:CreateIndex' permission to
%% use this operation.
-spec create_index(aws_client:aws_client(), create_index_input()) ->
    {ok, create_index_output(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input) ->
    create_index(Client, Input, []).

-spec create_index(aws_client:aws_client(), create_index_input(), proplists:proplist()) ->
    {ok, create_index_output(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateIndex"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Creates a vector bucket in the Amazon Web Services Region that you want
%% your bucket to be in.
%%
%% Permissions You must have the `s3vectors:CreateVectorBucket'
%% permission to use this operation.
-spec create_vector_bucket(aws_client:aws_client(), create_vector_bucket_input()) ->
    {ok, create_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, create_vector_bucket_errors(), tuple()}.
create_vector_bucket(Client, Input) ->
    create_vector_bucket(Client, Input, []).

-spec create_vector_bucket(aws_client:aws_client(), create_vector_bucket_input(), proplists:proplist()) ->
    {ok, create_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, create_vector_bucket_errors(), tuple()}.
create_vector_bucket(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateVectorBucket"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Deletes a vector index. To specify the vector index, you can either use
%% both the vector bucket name and vector index name, or use the vector index
%% Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:DeleteIndex' permission to
%% use this operation.
-spec delete_index(aws_client:aws_client(), delete_index_input()) ->
    {ok, delete_index_output(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input) ->
    delete_index(Client, Input, []).

-spec delete_index(aws_client:aws_client(), delete_index_input(), proplists:proplist()) ->
    {ok, delete_index_output(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteIndex"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Deletes a vector bucket. All vector indexes in the vector bucket must be
%% deleted before the vector bucket can be deleted. To perform this
%% operation, you must use either the vector bucket name or the vector bucket
%% Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:DeleteVectorBucket'
%% permission to use this operation.
-spec delete_vector_bucket(aws_client:aws_client(), delete_vector_bucket_input()) ->
    {ok, delete_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_bucket_errors(), tuple()}.
delete_vector_bucket(Client, Input) ->
    delete_vector_bucket(Client, Input, []).

-spec delete_vector_bucket(aws_client:aws_client(), delete_vector_bucket_input(), proplists:proplist()) ->
    {ok, delete_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_bucket_errors(), tuple()}.
delete_vector_bucket(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteVectorBucket"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Deletes a vector bucket policy. To specify the bucket, you must use either
%% the vector bucket name or the vector bucket Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:DeleteVectorBucketPolicy'
%% permission to use this operation.
-spec delete_vector_bucket_policy(aws_client:aws_client(), delete_vector_bucket_policy_input()) ->
    {ok, delete_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_bucket_policy_errors(), tuple()}.
delete_vector_bucket_policy(Client, Input) ->
    delete_vector_bucket_policy(Client, Input, []).

-spec delete_vector_bucket_policy(aws_client:aws_client(), delete_vector_bucket_policy_input(), proplists:proplist()) ->
    {ok, delete_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_bucket_policy_errors(), tuple()}.
delete_vector_bucket_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteVectorBucketPolicy"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Deletes one or more vectors in a vector index. To specify the vector
%% index, you can either use both the vector bucket name and vector index
%% name, or use the vector index Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:DeleteVectors' permission to
%% use this operation.
-spec delete_vectors(aws_client:aws_client(), delete_vectors_input()) ->
    {ok, delete_vectors_output(), tuple()} |
    {error, any()} |
    {error, delete_vectors_errors(), tuple()}.
delete_vectors(Client, Input) ->
    delete_vectors(Client, Input, []).

-spec delete_vectors(aws_client:aws_client(), delete_vectors_input(), proplists:proplist()) ->
    {ok, delete_vectors_output(), tuple()} |
    {error, any()} |
    {error, delete_vectors_errors(), tuple()}.
delete_vectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteVectors"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Returns vector index attributes. To specify the vector index, you can
%% either use both the vector bucket name and the vector index name, or use
%% the vector index Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:GetIndex' permission to use
%% this operation.
-spec get_index(aws_client:aws_client(), get_index_input()) ->
    {ok, get_index_output(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, Input) ->
    get_index(Client, Input, []).

-spec get_index(aws_client:aws_client(), get_index_input(), proplists:proplist()) ->
    {ok, get_index_output(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIndex"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Returns vector bucket attributes. To specify the bucket, you must use
%% either the vector bucket name or the vector bucket Amazon Resource Name
%% (ARN).
%%
%% Permissions You must have the `s3vectors:GetVectorBucket' permission
%% to use this operation.
-spec get_vector_bucket(aws_client:aws_client(), get_vector_bucket_input()) ->
    {ok, get_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, get_vector_bucket_errors(), tuple()}.
get_vector_bucket(Client, Input) ->
    get_vector_bucket(Client, Input, []).

-spec get_vector_bucket(aws_client:aws_client(), get_vector_bucket_input(), proplists:proplist()) ->
    {ok, get_vector_bucket_output(), tuple()} |
    {error, any()} |
    {error, get_vector_bucket_errors(), tuple()}.
get_vector_bucket(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetVectorBucket"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Gets details about a vector bucket policy. To specify the bucket, you must
%% use either the vector bucket name or the vector bucket Amazon Resource
%% Name (ARN).
%%
%% Permissions You must have the `s3vectors:GetVectorBucketPolicy'
%% permission to use this operation.
-spec get_vector_bucket_policy(aws_client:aws_client(), get_vector_bucket_policy_input()) ->
    {ok, get_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, get_vector_bucket_policy_errors(), tuple()}.
get_vector_bucket_policy(Client, Input) ->
    get_vector_bucket_policy(Client, Input, []).

-spec get_vector_bucket_policy(aws_client:aws_client(), get_vector_bucket_policy_input(), proplists:proplist()) ->
    {ok, get_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, get_vector_bucket_policy_errors(), tuple()}.
get_vector_bucket_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetVectorBucketPolicy"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Returns vector attributes. To specify the vector index, you can either use
%% both the vector bucket name and the vector index name, or use the vector
%% index Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:GetVectors' permission to use
%% this operation.
-spec get_vectors(aws_client:aws_client(), get_vectors_input()) ->
    {ok, get_vectors_output(), tuple()} |
    {error, any()} |
    {error, get_vectors_errors(), tuple()}.
get_vectors(Client, Input) ->
    get_vectors(Client, Input, []).

-spec get_vectors(aws_client:aws_client(), get_vectors_input(), proplists:proplist()) ->
    {ok, get_vectors_output(), tuple()} |
    {error, any()} |
    {error, get_vectors_errors(), tuple()}.
get_vectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetVectors"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Returns a list of all the vector indexes within the specified vector
%% bucket. To specify the bucket, you must use either the vector bucket name
%% or the vector bucket Amazon Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:ListIndexes' permission to
%% use this operation.
-spec list_indexes(aws_client:aws_client(), list_indexes_input()) ->
    {ok, list_indexes_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_errors(), tuple()}.
list_indexes(Client, Input) ->
    list_indexes(Client, Input, []).

-spec list_indexes(aws_client:aws_client(), list_indexes_input(), proplists:proplist()) ->
    {ok, list_indexes_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_errors(), tuple()}.
list_indexes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIndexes"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Returns a list of all the vector buckets that are owned by the
%% authenticated sender of the request.
%%
%% Permissions You must have the `s3vectors:ListVectorBuckets' permission
%% to use this operation.
-spec list_vector_buckets(aws_client:aws_client(), list_vector_buckets_input()) ->
    {ok, list_vector_buckets_output(), tuple()} |
    {error, any()} |
    {error, list_vector_buckets_errors(), tuple()}.
list_vector_buckets(Client, Input) ->
    list_vector_buckets(Client, Input, []).

-spec list_vector_buckets(aws_client:aws_client(), list_vector_buckets_input(), proplists:proplist()) ->
    {ok, list_vector_buckets_output(), tuple()} |
    {error, any()} |
    {error, list_vector_buckets_errors(), tuple()}.
list_vector_buckets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListVectorBuckets"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% List vectors in the specified vector index. To specify the vector index,
%% you can either use both the vector bucket name and the vector index name,
%% or use the vector index Amazon Resource Name (ARN).
%%
%% `ListVectors' operations proceed sequentially; however, for faster
%% performance on a large number of vectors in a vector index, applications
%% can request a parallel `ListVectors' operation by providing the
%% `segmentCount' and `segmentIndex' parameters.
%%
%% Permissions You must have the `s3vectors:ListVectors' permission to
%% use this operation. Additional permissions are required based on the
%% request parameters you specify:
%%
%% With only `s3vectors:ListVectors' permission, you can list vector keys
%% when `returnData' and `returnMetadata' are both set to false or
%% not specified..
%%
%% If you set `returnData' or `returnMetadata' to true, you must have
%% both `s3vectors:ListVectors' and `s3vectors:GetVectors'
%% permissions. The request fails with a `403 Forbidden' error if you
%% request vector data or metadata without the `s3vectors:GetVectors'
%% permission.
-spec list_vectors(aws_client:aws_client(), list_vectors_input()) ->
    {ok, list_vectors_output(), tuple()} |
    {error, any()} |
    {error, list_vectors_errors(), tuple()}.
list_vectors(Client, Input) ->
    list_vectors(Client, Input, []).

-spec list_vectors(aws_client:aws_client(), list_vectors_input(), proplists:proplist()) ->
    {ok, list_vectors_output(), tuple()} |
    {error, any()} |
    {error, list_vectors_errors(), tuple()}.
list_vectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListVectors"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Creates a bucket policy for a vector bucket. To specify the bucket, you
%% must use either the vector bucket name or the vector bucket Amazon
%% Resource Name (ARN).
%%
%% Permissions You must have the `s3vectors:PutVectorBucketPolicy'
%% permission to use this operation.
-spec put_vector_bucket_policy(aws_client:aws_client(), put_vector_bucket_policy_input()) ->
    {ok, put_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, put_vector_bucket_policy_errors(), tuple()}.
put_vector_bucket_policy(Client, Input) ->
    put_vector_bucket_policy(Client, Input, []).

-spec put_vector_bucket_policy(aws_client:aws_client(), put_vector_bucket_policy_input(), proplists:proplist()) ->
    {ok, put_vector_bucket_policy_output(), tuple()} |
    {error, any()} |
    {error, put_vector_bucket_policy_errors(), tuple()}.
put_vector_bucket_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutVectorBucketPolicy"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Adds one or more vectors to a vector index. To specify the vector index,
%% you can either use both the vector bucket name and the vector index name,
%% or use the vector index Amazon Resource Name (ARN).
%%
%% For more information about limits, see Limitations and restrictions:
%% https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html
%% in the Amazon S3 User Guide.
%%
%% When inserting vector data into your vector index, you must provide the
%% vector data as `float32' (32-bit floating point) values. If you pass
%% higher-precision values to an Amazon Web Services SDK, S3 Vectors converts
%% the values to 32-bit floating point before storing them, and
%% `GetVectors', `ListVectors', and `QueryVectors' operations
%% return the float32 values. Different Amazon Web Services SDKs may have
%% different default numeric types, so ensure your vectors are properly
%% formatted as `float32' values regardless of which SDK you're
%% using. For example, in Python, use `numpy.float32' or explicitly cast
%% your values.
%%
%% Permissions You must have the `s3vectors:PutVectors' permission to use
%% this operation.
-spec put_vectors(aws_client:aws_client(), put_vectors_input()) ->
    {ok, put_vectors_output(), tuple()} |
    {error, any()} |
    {error, put_vectors_errors(), tuple()}.
put_vectors(Client, Input) ->
    put_vectors(Client, Input, []).

-spec put_vectors(aws_client:aws_client(), put_vectors_input(), proplists:proplist()) ->
    {ok, put_vectors_output(), tuple()} |
    {error, any()} |
    {error, put_vectors_errors(), tuple()}.
put_vectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutVectors"],
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

%% @doc Amazon S3 Vectors is in preview release for Amazon S3 and is subject
%% to change.
%%
%% Performs an approximate nearest neighbor search query in a vector index
%% using a query vector. By default, it returns the keys of approximate
%% nearest neighbors. You can optionally include the computed distance
%% (between the query vector and each vector in the response), the vector
%% data, and metadata of each vector in the response.
%%
%% To specify the vector index, you can either use both the vector bucket
%% name and the vector index name, or use the vector index Amazon Resource
%% Name (ARN).
%%
%% Permissions You must have the `s3vectors:QueryVectors' permission to
%% use this operation. Additional permissions are required based on the
%% request parameters you specify:
%%
%% With only `s3vectors:QueryVectors' permission, you can retrieve vector
%% keys of approximate nearest neighbors and computed distances between these
%% vectors. This permission is sufficient only when you don't set any
%% metadata filters and don't request vector data or metadata (by keeping
%% the `returnMetadata' parameter set to `false' or not specified).
%%
%% If you specify a metadata filter or set `returnMetadata' to true, you
%% must have both `s3vectors:QueryVectors' and `s3vectors:GetVectors'
%% permissions. The request fails with a `403 Forbidden error' if you
%% request metadata filtering, vector data, or metadata without the
%% `s3vectors:GetVectors' permission.
-spec query_vectors(aws_client:aws_client(), query_vectors_input()) ->
    {ok, query_vectors_output(), tuple()} |
    {error, any()} |
    {error, query_vectors_errors(), tuple()}.
query_vectors(Client, Input) ->
    query_vectors(Client, Input, []).

-spec query_vectors(aws_client:aws_client(), query_vectors_input(), proplists:proplist()) ->
    {ok, query_vectors_output(), tuple()} |
    {error, any()} |
    {error, query_vectors_errors(), tuple()}.
query_vectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/QueryVectors"],
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
    Client1 = Client#{service => <<"s3vectors">>},
    Host = build_host(<<"s3vectors">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
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
