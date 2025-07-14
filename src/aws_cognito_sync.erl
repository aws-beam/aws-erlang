%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Cognito Sync
%%
%% Amazon Cognito Sync provides an AWS service and client library that enable
%% cross-device syncing of
%% application-related user data.
%%
%% High-level client libraries are available for both iOS and
%% Android. You can use these libraries to persist data locally so that
%% it's available even if
%% the device is offline. Developer credentials don't need to be stored
%% on the mobile device
%% to access the service. You can use Amazon Cognito to obtain a normalized
%% user ID and
%% credentials. User data is persisted in a dataset that can store up to 1 MB
%% of key-value
%% pairs, and you can have up to 20 datasets per user identity.
%%
%% With Amazon Cognito Sync, the data stored for each identity is accessible
%% only to
%% credentials assigned to that identity. In order to use the Cognito Sync
%% service, you need
%% to make API calls using credentials retrieved with Amazon Cognito Identity
%% service:
%% http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html.
%%
%% If you want to use Cognito Sync in an Android or iOS application, you will
%% probably want to
%% make API calls via the AWS Mobile SDK. To learn more, see the Developer
%% Guide for Android:
%% http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html
%% and the Developer Guide for iOS:
%% http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html.
-module(aws_cognito_sync).

-export([bulk_publish/3,
         bulk_publish/4,
         delete_dataset/5,
         delete_dataset/6,
         describe_dataset/4,
         describe_dataset/6,
         describe_dataset/7,
         describe_identity_pool_usage/2,
         describe_identity_pool_usage/4,
         describe_identity_pool_usage/5,
         describe_identity_usage/3,
         describe_identity_usage/5,
         describe_identity_usage/6,
         get_bulk_publish_details/3,
         get_bulk_publish_details/4,
         get_cognito_events/2,
         get_cognito_events/4,
         get_cognito_events/5,
         get_identity_pool_configuration/2,
         get_identity_pool_configuration/4,
         get_identity_pool_configuration/5,
         list_datasets/3,
         list_datasets/5,
         list_datasets/6,
         list_identity_pool_usage/1,
         list_identity_pool_usage/3,
         list_identity_pool_usage/4,
         list_records/4,
         list_records/6,
         list_records/7,
         register_device/4,
         register_device/5,
         set_cognito_events/3,
         set_cognito_events/4,
         set_identity_pool_configuration/3,
         set_identity_pool_configuration/4,
         subscribe_to_dataset/6,
         subscribe_to_dataset/7,
         unsubscribe_from_dataset/6,
         unsubscribe_from_dataset/7,
         update_records/5,
         update_records/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% register_device_response() :: #{
%%   <<"DeviceId">> => string()
%% }
-type register_device_response() :: #{binary() => any()}.


%% Example:
%% list_records_response() :: #{
%%   <<"Count">> => integer(),
%%   <<"DatasetDeletedAfterRequestedSyncCount">> => boolean(),
%%   <<"DatasetExists">> => boolean(),
%%   <<"DatasetSyncCount">> => float(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"MergedDatasetNames">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"Records">> => list(record()),
%%   <<"SyncSessionToken">> => string()
%% }
-type list_records_response() :: #{binary() => any()}.

%% Example:
%% describe_identity_pool_usage_request() :: #{}
-type describe_identity_pool_usage_request() :: #{}.


%% Example:
%% record() :: #{
%%   <<"DeviceLastModifiedDate">> => non_neg_integer(),
%%   <<"Key">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"SyncCount">> => float(),
%%   <<"Value">> => string()
%% }
-type record() :: #{binary() => any()}.


%% Example:
%% delete_dataset_response() :: #{
%%   <<"Dataset">> => dataset()
%% }
-type delete_dataset_response() :: #{binary() => any()}.


%% Example:
%% list_identity_pool_usage_response() :: #{
%%   <<"Count">> => integer(),
%%   <<"IdentityPoolUsages">> => list(identity_pool_usage()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_pool_usage_response() :: #{binary() => any()}.

%% Example:
%% get_bulk_publish_details_request() :: #{}
-type get_bulk_publish_details_request() :: #{}.


%% Example:
%% push_sync() :: #{
%%   <<"ApplicationArns">> => list(string()),
%%   <<"RoleArn">> => string()
%% }
-type push_sync() :: #{binary() => any()}.


%% Example:
%% describe_identity_usage_response() :: #{
%%   <<"IdentityUsage">> => identity_usage()
%% }
-type describe_identity_usage_response() :: #{binary() => any()}.


%% Example:
%% bulk_publish_response() :: #{
%%   <<"IdentityPoolId">> => string()
%% }
-type bulk_publish_response() :: #{binary() => any()}.


%% Example:
%% list_identity_pool_usage_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_pool_usage_request() :: #{binary() => any()}.


%% Example:
%% list_datasets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_request() :: #{binary() => any()}.


%% Example:
%% set_identity_pool_configuration_response() :: #{
%%   <<"CognitoStreams">> => cognito_streams(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"PushSync">> => push_sync()
%% }
-type set_identity_pool_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_records_request() :: #{
%%   <<"ClientContext">> => string(),
%%   <<"DeviceId">> => string(),
%%   <<"RecordPatches">> => list(record_patch()),
%%   <<"SyncSessionToken">> := string()
%% }
-type update_records_request() :: #{binary() => any()}.

%% Example:
%% get_cognito_events_request() :: #{}
-type get_cognito_events_request() :: #{}.


%% Example:
%% cognito_streams() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"StreamName">> => string(),
%%   <<"StreamingStatus">> => list(any())
%% }
-type cognito_streams() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% dataset() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DataStorage">> => float(),
%%   <<"DatasetName">> => string(),
%%   <<"IdentityId">> => string(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"NumRecords">> => float()
%% }
-type dataset() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% invalid_lambda_function_output_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_lambda_function_output_exception() :: #{binary() => any()}.


%% Example:
%% already_streamed_exception() :: #{
%%   <<"message">> => string()
%% }
-type already_streamed_exception() :: #{binary() => any()}.

%% Example:
%% bulk_publish_request() :: #{}
-type bulk_publish_request() :: #{}.


%% Example:
%% list_records_request() :: #{
%%   <<"LastSyncCount">> => float(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SyncSessionToken">> => string()
%% }
-type list_records_request() :: #{binary() => any()}.


%% Example:
%% identity_pool_usage() :: #{
%%   <<"DataStorage">> => float(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"SyncSessionsCount">> => float()
%% }
-type identity_pool_usage() :: #{binary() => any()}.


%% Example:
%% duplicate_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type duplicate_request_exception() :: #{binary() => any()}.


%% Example:
%% get_bulk_publish_details_response() :: #{
%%   <<"BulkPublishCompleteTime">> => non_neg_integer(),
%%   <<"BulkPublishStartTime">> => non_neg_integer(),
%%   <<"BulkPublishStatus">> => list(any()),
%%   <<"FailureMessage">> => string(),
%%   <<"IdentityPoolId">> => string()
%% }
-type get_bulk_publish_details_response() :: #{binary() => any()}.

%% Example:
%% unsubscribe_from_dataset_request() :: #{}
-type unsubscribe_from_dataset_request() :: #{}.

%% Example:
%% describe_identity_usage_request() :: #{}
-type describe_identity_usage_request() :: #{}.


%% Example:
%% lambda_throttled_exception() :: #{
%%   <<"message">> => string()
%% }
-type lambda_throttled_exception() :: #{binary() => any()}.


%% Example:
%% not_authorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.


%% Example:
%% set_cognito_events_request() :: #{
%%   <<"Events">> := map()
%% }
-type set_cognito_events_request() :: #{binary() => any()}.


%% Example:
%% get_identity_pool_configuration_response() :: #{
%%   <<"CognitoStreams">> => cognito_streams(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"PushSync">> => push_sync()
%% }
-type get_identity_pool_configuration_response() :: #{binary() => any()}.


%% Example:
%% invalid_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_configuration_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% describe_dataset_response() :: #{
%%   <<"Dataset">> => dataset()
%% }
-type describe_dataset_response() :: #{binary() => any()}.


%% Example:
%% update_records_response() :: #{
%%   <<"Records">> => list(record())
%% }
-type update_records_response() :: #{binary() => any()}.


%% Example:
%% register_device_request() :: #{
%%   <<"Platform">> := list(any()),
%%   <<"Token">> := string()
%% }
-type register_device_request() :: #{binary() => any()}.


%% Example:
%% record_patch() :: #{
%%   <<"DeviceLastModifiedDate">> => non_neg_integer(),
%%   <<"Key">> => string(),
%%   <<"Op">> => list(any()),
%%   <<"SyncCount">> => float(),
%%   <<"Value">> => string()
%% }
-type record_patch() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% set_identity_pool_configuration_request() :: #{
%%   <<"CognitoStreams">> => cognito_streams(),
%%   <<"PushSync">> => push_sync()
%% }
-type set_identity_pool_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_cognito_events_response() :: #{
%%   <<"Events">> => map()
%% }
-type get_cognito_events_response() :: #{binary() => any()}.

%% Example:
%% describe_dataset_request() :: #{}
-type describe_dataset_request() :: #{}.

%% Example:
%% delete_dataset_request() :: #{}
-type delete_dataset_request() :: #{}.


%% Example:
%% list_datasets_response() :: #{
%%   <<"Count">> => integer(),
%%   <<"Datasets">> => list(dataset()),
%%   <<"NextToken">> => string()
%% }
-type list_datasets_response() :: #{binary() => any()}.


%% Example:
%% identity_usage() :: #{
%%   <<"DataStorage">> => float(),
%%   <<"DatasetCount">> => integer(),
%%   <<"IdentityId">> => string(),
%%   <<"IdentityPoolId">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer()
%% }
-type identity_usage() :: #{binary() => any()}.

%% Example:
%% subscribe_to_dataset_request() :: #{}
-type subscribe_to_dataset_request() :: #{}.

%% Example:
%% unsubscribe_from_dataset_response() :: #{}
-type unsubscribe_from_dataset_response() :: #{}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_identity_pool_configuration_request() :: #{}
-type get_identity_pool_configuration_request() :: #{}.


%% Example:
%% internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% subscribe_to_dataset_response() :: #{}
-type subscribe_to_dataset_response() :: #{}.


%% Example:
%% describe_identity_pool_usage_response() :: #{
%%   <<"IdentityPoolUsage">> => identity_pool_usage()
%% }
-type describe_identity_pool_usage_response() :: #{binary() => any()}.

-type bulk_publish_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    duplicate_request_exception() | 
    already_streamed_exception() | 
    resource_not_found_exception().

-type delete_dataset_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_dataset_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_identity_pool_usage_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_identity_usage_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_bulk_publish_details_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception().

-type get_cognito_events_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_identity_pool_configuration_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_datasets_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    too_many_requests_exception().

-type list_identity_pool_usage_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    too_many_requests_exception().

-type list_records_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    too_many_requests_exception().

-type register_device_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_configuration_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_cognito_events_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type set_identity_pool_configuration_errors() ::
    internal_error_exception() | 
    concurrent_modification_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type subscribe_to_dataset_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_configuration_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type unsubscribe_from_dataset_errors() ::
    internal_error_exception() | 
    invalid_parameter_exception() | 
    invalid_configuration_exception() | 
    not_authorized_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_records_errors() ::
    internal_error_exception() | 
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    not_authorized_exception() | 
    lambda_throttled_exception() | 
    invalid_lambda_function_output_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Initiates a bulk publish of all existing datasets for an Identity
%% Pool to the configured stream.
%%
%% Customers are limited to one successful bulk publish per 24 hours. Bulk
%% publish is an asynchronous request, customers can see the status of the
%% request via the GetBulkPublishDetails operation.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
-spec bulk_publish(aws_client:aws_client(), binary() | list(), bulk_publish_request()) ->
    {ok, bulk_publish_response(), tuple()} |
    {error, any()} |
    {error, bulk_publish_errors(), tuple()}.
bulk_publish(Client, IdentityPoolId, Input) ->
    bulk_publish(Client, IdentityPoolId, Input, []).

-spec bulk_publish(aws_client:aws_client(), binary() | list(), bulk_publish_request(), proplists:proplist()) ->
    {ok, bulk_publish_response(), tuple()} |
    {error, any()} |
    {error, bulk_publish_errors(), tuple()}.
bulk_publish(Client, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/bulkpublish"],
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

%% @doc Deletes the specific dataset.
%%
%% The dataset will be deleted permanently, and the action can't
%% be undone. Datasets that this dataset was merged with will no longer
%% report the merge. Any
%% subsequent operation on this dataset will result in a
%% ResourceNotFoundException.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials.
-spec delete_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_dataset_request()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input) ->
    delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input, []).

-spec delete_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_dataset_request(), proplists:proplist()) ->
    {ok, delete_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_dataset_errors(), tuple()}.
delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input0, Options0) ->
    Method = delete,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), ""],
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

%% @doc Gets meta data about a dataset by identity and dataset name.
%%
%% With Amazon Cognito Sync, each
%% identity has access only to its own data. Thus, the credentials used to
%% make this API call
%% need to have access to the identity data.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials. You should use Cognito Identity
%% credentials to make this API call.
-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, #{}, #{}).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap, []).

-spec describe_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dataset_response(), tuple()} |
    {error, any()} |
    {error, describe_dataset_errors(), tuple()}.
describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets usage details (for example, data storage) about a particular
%% identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
%%
%% DescribeIdentityPoolUsage
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 8dc0e749-c8cd-48bd-8520-da6be00d528b
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityPoolUsage
%% HOST: cognito-sync.us-east-1.amazonaws.com:443
%% X-AMZ-DATE: 20141111T205737Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsage&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 8dc0e749-c8cd-48bd-8520-da6be00d528b
%% content-type: application/json
%% content-length: 271
%% date: Tue, 11 Nov 2014 20:57:37 GMT
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsageResponse&quot;,
%% &quot;IdentityPoolUsage&quot;:
%% {
%% &quot;DataStorage&quot;: 0,
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;LastModifiedDate&quot;: 1.413231134115E9,
%% &quot;SyncSessionsCount&quot;: null
%% }
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec describe_identity_pool_usage(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_pool_usage_errors(), tuple()}.
describe_identity_pool_usage(Client, IdentityPoolId)
  when is_map(Client) ->
    describe_identity_pool_usage(Client, IdentityPoolId, #{}, #{}).

-spec describe_identity_pool_usage(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_pool_usage_errors(), tuple()}.
describe_identity_pool_usage(Client, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_identity_pool_usage(Client, IdentityPoolId, QueryMap, HeadersMap, []).

-spec describe_identity_pool_usage(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_pool_usage_errors(), tuple()}.
describe_identity_pool_usage(Client, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets usage information for an identity, including number of datasets
%% and data usage.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials.
%%
%% DescribeIdentityUsage
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityUsage
%% HOST: cognito-sync.us-east-1.amazonaws.com:443
%% X-AMZ-DATE: 20141111T215129Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#DescribeIdentityUsage&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
%% content-type: application/json
%% content-length: 318
%% date: Tue, 11 Nov 2014 21:51:29 GMT
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#DescribeIdentityUsageResponse&quot;,
%% &quot;IdentityUsage&quot;:
%% {
%% &quot;DataStorage&quot;: 16,
%% &quot;DatasetCount&quot;: 1,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;LastModifiedDate&quot;: 1.412974081336E9
%% }
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec describe_identity_usage(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_identity_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_usage_errors(), tuple()}.
describe_identity_usage(Client, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    describe_identity_usage(Client, IdentityId, IdentityPoolId, #{}, #{}).

-spec describe_identity_usage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_identity_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_usage_errors(), tuple()}.
describe_identity_usage(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_identity_usage(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap, []).

-spec describe_identity_usage(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_identity_usage_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_usage_errors(), tuple()}.
describe_identity_usage(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the status of the last BulkPublish operation for an identity
%% pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
-spec get_bulk_publish_details(aws_client:aws_client(), binary() | list(), get_bulk_publish_details_request()) ->
    {ok, get_bulk_publish_details_response(), tuple()} |
    {error, any()} |
    {error, get_bulk_publish_details_errors(), tuple()}.
get_bulk_publish_details(Client, IdentityPoolId, Input) ->
    get_bulk_publish_details(Client, IdentityPoolId, Input, []).

-spec get_bulk_publish_details(aws_client:aws_client(), binary() | list(), get_bulk_publish_details_request(), proplists:proplist()) ->
    {ok, get_bulk_publish_details_response(), tuple()} |
    {error, any()} |
    {error, get_bulk_publish_details_errors(), tuple()}.
get_bulk_publish_details(Client, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/getBulkPublishDetails"],
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

%% @doc Gets the events and the corresponding Lambda functions associated
%% with an identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
-spec get_cognito_events(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cognito_events_response(), tuple()} |
    {error, any()} |
    {error, get_cognito_events_errors(), tuple()}.
get_cognito_events(Client, IdentityPoolId)
  when is_map(Client) ->
    get_cognito_events(Client, IdentityPoolId, #{}, #{}).

-spec get_cognito_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cognito_events_response(), tuple()} |
    {error, any()} |
    {error, get_cognito_events_errors(), tuple()}.
get_cognito_events(Client, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cognito_events(Client, IdentityPoolId, QueryMap, HeadersMap, []).

-spec get_cognito_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cognito_events_response(), tuple()} |
    {error, any()} |
    {error, get_cognito_events_errors(), tuple()}.
get_cognito_events(Client, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the configuration settings of an identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
%%
%% GetIdentityPoolConfiguration
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.GetIdentityPoolConfiguration
%% HOST: cognito-sync.us-east-1.amazonaws.com
%% X-AMZ-DATE: 20141004T195722Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#GetIdentityPoolConfiguration&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
%% date: Sat, 04 Oct 2014 19:57:22 GMT
%% content-type: application/json
%% content-length: 332
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#GetIdentityPoolConfigurationResponse&quot;,
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;PushSync&quot;:
%% {
%% &quot;ApplicationArns&quot;: [&quot;PLATFORMARN1&quot;,
%% &quot;PLATFORMARN2&quot;],
%% &quot;RoleArn&quot;: &quot;ROLEARN&quot;
%% }
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec get_identity_pool_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_identity_pool_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_identity_pool_configuration_errors(), tuple()}.
get_identity_pool_configuration(Client, IdentityPoolId)
  when is_map(Client) ->
    get_identity_pool_configuration(Client, IdentityPoolId, #{}, #{}).

-spec get_identity_pool_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_identity_pool_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_identity_pool_configuration_errors(), tuple()}.
get_identity_pool_configuration(Client, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_pool_configuration(Client, IdentityPoolId, QueryMap, HeadersMap, []).

-spec get_identity_pool_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_identity_pool_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_identity_pool_configuration_errors(), tuple()}.
get_identity_pool_configuration(Client, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists datasets for an identity.
%%
%% With Amazon Cognito Sync, each identity has access only to
%% its own data. Thus, the credentials used to make this API call need to
%% have access to the
%% identity data.
%%
%% ListDatasets can be called with temporary user credentials provided by
%% Cognito
%% Identity or with developer credentials. You should use the Cognito
%% Identity credentials to
%% make this API call.
%%
%% ListDatasets
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 15225768-209f-4078-aaed-7494ace9f2db
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListDatasets
%% HOST: cognito-sync.us-east-1.amazonaws.com:443
%% X-AMZ-DATE: 20141111T215640Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListDatasets&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;MaxResults&quot;: &quot;3&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 15225768-209f-4078-aaed-7494ace9f2db,
%% 15225768-209f-4078-aaed-7494ace9f2db
%% content-type: application/json
%% content-length: 355
%% date: Tue, 11 Nov 2014 21:56:40 GMT
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListDatasetsResponse&quot;,
%% &quot;Count&quot;: 1,
%% &quot;Datasets&quot;: [
%% {
%% &quot;CreationDate&quot;: 1.412974057151E9,
%% &quot;DataStorage&quot;: 16,
%% &quot;DatasetName&quot;: &quot;my_list&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;LastModifiedBy&quot;: &quot;123456789012&quot;,
%% &quot;LastModifiedDate&quot;: 1.412974057244E9,
%% &quot;NumRecords&quot;: 1
%% }],
%% &quot;NextToken&quot;: null
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec list_datasets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    list_datasets(Client, IdentityId, IdentityPoolId, #{}, #{}).

-spec list_datasets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap, []).

-spec list_datasets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_datasets_errors(), tuple()}.
list_datasets(Client, IdentityId, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of identity pools registered with Cognito.
%%
%% ListIdentityPoolUsage can only be called with developer credentials. You
%% cannot make this API call with the temporary user credentials provided by
%% Cognito
%% Identity.
%%
%% ListIdentityPoolUsage
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListIdentityPoolUsage
%% HOST: cognito-sync.us-east-1.amazonaws.com:443
%% X-AMZ-DATE: 20141111T211414Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListIdentityPoolUsage&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;MaxResults&quot;: &quot;2&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
%% content-type: application/json
%% content-length: 519
%% date: Tue, 11 Nov 2014 21:14:14 GMT
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListIdentityPoolUsageResponse&quot;,
%% &quot;Count&quot;: 2,
%% &quot;IdentityPoolUsages&quot;: [
%% {
%% &quot;DataStorage&quot;: 0,
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;LastModifiedDate&quot;: 1.413836234607E9,
%% &quot;SyncSessionsCount&quot;: null
%% },
%% {
%% &quot;DataStorage&quot;: 0,
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;LastModifiedDate&quot;: 1.410892165601E9,
%% &quot;SyncSessionsCount&quot;: null
%% }],
%% &quot;MaxResults&quot;: 2,
%% &quot;NextToken&quot;:
%% &quot;dXMtZWFzdC0xOjBjMWJhMDUyLWUwOTgtNDFmYS1hNzZlLWVhYTJjMTI1Zjg2MQ==&quot;
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec list_identity_pool_usage(aws_client:aws_client()) ->
    {ok, list_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, list_identity_pool_usage_errors(), tuple()}.
list_identity_pool_usage(Client)
  when is_map(Client) ->
    list_identity_pool_usage(Client, #{}, #{}).

-spec list_identity_pool_usage(aws_client:aws_client(), map(), map()) ->
    {ok, list_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, list_identity_pool_usage_errors(), tuple()}.
list_identity_pool_usage(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_pool_usage(Client, QueryMap, HeadersMap, []).

-spec list_identity_pool_usage(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_identity_pool_usage_response(), tuple()} |
    {error, any()} |
    {error, list_identity_pool_usage_errors(), tuple()}.
list_identity_pool_usage(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets paginated records, optionally changed after a particular sync
%% count for a dataset and
%% identity.
%%
%% With Amazon Cognito Sync, each identity has access only to its own data.
%% Thus,
%% the credentials used to make this API call need to have access to the
%% identity data.
%%
%% ListRecords can be called with temporary user credentials provided by
%% Cognito
%% Identity or with developer credentials. You should use Cognito Identity
%% credentials to make
%% this API call.
%%
%% ListRecords
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListRecords
%% HOST: cognito-sync.us-east-1.amazonaws.com:443
%% X-AMZ-DATE: 20141111T183230Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListRecords&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;IDENTITY_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;DatasetName&quot;: &quot;newDataSet&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
%% content-type: application/json
%% content-length: 623
%% date: Tue, 11 Nov 2014 18:32:30 GMT
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#ListRecordsResponse&quot;,
%% &quot;Count&quot;: 0,
%% &quot;DatasetDeletedAfterRequestedSyncCount&quot;: false,
%% &quot;DatasetExists&quot;: false,
%% &quot;DatasetSyncCount&quot;: 0,
%% &quot;LastModifiedBy&quot;: null,
%% &quot;MergedDatasetNames&quot;: null,
%% &quot;NextToken&quot;: null,
%% &quot;Records&quot;: [],
%% &quot;SyncSessionToken&quot;: &quot;SYNC_SESSION_TOKEN&quot;
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec list_records(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_records_response(), tuple()} |
    {error, any()} |
    {error, list_records_errors(), tuple()}.
list_records(Client, DatasetName, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    list_records(Client, DatasetName, IdentityId, IdentityPoolId, #{}, #{}).

-spec list_records(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_records_response(), tuple()} |
    {error, any()} |
    {error, list_records_errors(), tuple()}.
list_records(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_records(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap, []).

-spec list_records(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_records_response(), tuple()} |
    {error, any()} |
    {error, list_records_errors(), tuple()}.
list_records(Client, DatasetName, IdentityId, IdentityPoolId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), "/records"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"lastSyncCount">>, maps:get(<<"lastSyncCount">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"syncSessionToken">>, maps:get(<<"syncSessionToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers a device to receive push sync notifications.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
%%
%% RegisterDevice
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 368f9200-3eca-449e-93b3-7b9c08d8e185
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.RegisterDevice
%% HOST: cognito-sync.us-east-1.amazonaws.com
%% X-AMZ-DATE: 20141004T194643Z
%% X-AMZ-SECURITY-TOKEN:
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#RegisterDevice&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;Platform&quot;: &quot;GCM&quot;,
%% &quot;Token&quot;: &quot;PUSH_TOKEN&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 368f9200-3eca-449e-93b3-7b9c08d8e185
%% date: Sat, 04 Oct 2014 19:46:44 GMT
%% content-type: application/json
%% content-length: 145
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#RegisterDeviceResponse&quot;,
%% &quot;DeviceId&quot;: &quot;5cd28fbe-dd83-47ab-9f83-19093a5fb014&quot;
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec register_device(aws_client:aws_client(), binary() | list(), binary() | list(), register_device_request()) ->
    {ok, register_device_response(), tuple()} |
    {error, any()} |
    {error, register_device_errors(), tuple()}.
register_device(Client, IdentityId, IdentityPoolId, Input) ->
    register_device(Client, IdentityId, IdentityPoolId, Input, []).

-spec register_device(aws_client:aws_client(), binary() | list(), binary() | list(), register_device_request(), proplists:proplist()) ->
    {ok, register_device_response(), tuple()} |
    {error, any()} |
    {error, register_device_errors(), tuple()}.
register_device(Client, IdentityId, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identity/", aws_util:encode_uri(IdentityId), "/device"],
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

%% @doc Sets the AWS Lambda function for a given event type for an identity
%% pool.
%%
%% This request only updates the key/value pair specified. Other key/values
%% pairs are not updated. To remove a key value pair, pass a empty value for
%% the particular key.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
-spec set_cognito_events(aws_client:aws_client(), binary() | list(), set_cognito_events_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_cognito_events_errors(), tuple()}.
set_cognito_events(Client, IdentityPoolId, Input) ->
    set_cognito_events(Client, IdentityPoolId, Input, []).

-spec set_cognito_events(aws_client:aws_client(), binary() | list(), set_cognito_events_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_cognito_events_errors(), tuple()}.
set_cognito_events(Client, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/events"],
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

%% @doc Sets the necessary configuration for push sync.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
%%
%% SetIdentityPoolConfiguration
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: a46db021-f5dd-45d6-af5b-7069fa4a211b
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SetIdentityPoolConfiguration
%% HOST: cognito-sync.us-east-1.amazonaws.com
%% X-AMZ-DATE: 20141004T200006Z
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#SetIdentityPoolConfiguration&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;PushSync&quot;:
%% {
%% &quot;ApplicationArns&quot;: [&quot;PLATFORMARN1&quot;,
%% &quot;PLATFORMARN2&quot;],
%% &quot;RoleArn&quot;: &quot;ROLEARN&quot;
%% }
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: a46db021-f5dd-45d6-af5b-7069fa4a211b
%% date: Sat, 04 Oct 2014 20:00:06 GMT
%% content-type: application/json
%% content-length: 332
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#SetIdentityPoolConfigurationResponse&quot;,
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;PushSync&quot;:
%% {
%% &quot;ApplicationArns&quot;: [&quot;PLATFORMARN1&quot;,
%% &quot;PLATFORMARN2&quot;],
%% &quot;RoleArn&quot;: &quot;ROLEARN&quot;
%% }
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec set_identity_pool_configuration(aws_client:aws_client(), binary() | list(), set_identity_pool_configuration_request()) ->
    {ok, set_identity_pool_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_identity_pool_configuration_errors(), tuple()}.
set_identity_pool_configuration(Client, IdentityPoolId, Input) ->
    set_identity_pool_configuration(Client, IdentityPoolId, Input, []).

-spec set_identity_pool_configuration(aws_client:aws_client(), binary() | list(), set_identity_pool_configuration_request(), proplists:proplist()) ->
    {ok, set_identity_pool_configuration_response(), tuple()} |
    {error, any()} |
    {error, set_identity_pool_configuration_errors(), tuple()}.
set_identity_pool_configuration(Client, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/configuration"],
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

%% @doc Subscribes to receive notifications when a dataset is modified by
%% another device.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
%%
%% SubscribeToDataset
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZN-REQUESTID: 8b9932b7-201d-4418-a960-0a470e11de9f
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SubscribeToDataset
%% HOST: cognito-sync.us-east-1.amazonaws.com
%% X-AMZ-DATE: 20141004T195350Z
%% X-AMZ-SECURITY-TOKEN:
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#SubscribeToDataset&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;DatasetName&quot;: &quot;Rufus&quot;,
%% &quot;DeviceId&quot;: &quot;5cd28fbe-dd83-47ab-9f83-19093a5fb014&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 8b9932b7-201d-4418-a960-0a470e11de9f
%% date: Sat, 04 Oct 2014 19:53:50 GMT
%% content-type: application/json
%% content-length: 99
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#SubscribeToDatasetResponse&quot;
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec subscribe_to_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), subscribe_to_dataset_request()) ->
    {ok, subscribe_to_dataset_response(), tuple()} |
    {error, any()} |
    {error, subscribe_to_dataset_errors(), tuple()}.
subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input) ->
    subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input, []).

-spec subscribe_to_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), subscribe_to_dataset_request(), proplists:proplist()) ->
    {ok, subscribe_to_dataset_response(), tuple()} |
    {error, any()} |
    {error, subscribe_to_dataset_errors(), tuple()}.
subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), "/subscriptions/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Unsubscribes from receiving notifications when a dataset is modified
%% by another device.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
%%
%% UnsubscribeFromDataset
%% The following examples have been edited for readability.
%%
%% POST / HTTP/1.1
%% CONTENT-TYPE: application/json
%% X-AMZ-REQUESTSUPERTRACE: true
%% X-AMZN-REQUESTID: 676896d6-14ca-45b1-8029-6d36b10a077e
%% X-AMZ-TARGET:
%% com.amazonaws.cognito.sync.model.AWSCognitoSyncService.UnsubscribeFromDataset
%% HOST: cognito-sync.us-east-1.amazonaws.com
%% X-AMZ-DATE: 20141004T195446Z
%% X-AMZ-SECURITY-TOKEN:
%% AUTHORIZATION: AWS4-HMAC-SHA256 Credential=,
%% SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
%% Signature=
%%
%% {
%% &quot;Operation&quot;:
%% &quot;com.amazonaws.cognito.sync.model#UnsubscribeFromDataset&quot;,
%% &quot;Service&quot;:
%% &quot;com.amazonaws.cognito.sync.model#AWSCognitoSyncService&quot;,
%% &quot;Input&quot;:
%% {
%% &quot;IdentityPoolId&quot;: &quot;ID_POOL_ID&quot;,
%% &quot;IdentityId&quot;: &quot;IDENTITY_ID&quot;,
%% &quot;DatasetName&quot;: &quot;Rufus&quot;,
%% &quot;DeviceId&quot;: &quot;5cd28fbe-dd83-47ab-9f83-19093a5fb014&quot;
%% }
%% }
%%
%% 1.1 200 OK
%% x-amzn-requestid: 676896d6-14ca-45b1-8029-6d36b10a077e
%% date: Sat, 04 Oct 2014 19:54:46 GMT
%% content-type: application/json
%% content-length: 103
%%
%% {
%% &quot;Output&quot;:
%% {
%% &quot;__type&quot;:
%% &quot;com.amazonaws.cognito.sync.model#UnsubscribeFromDatasetResponse&quot;
%% },
%% &quot;Version&quot;: &quot;1.0&quot;
%% }
-spec unsubscribe_from_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), unsubscribe_from_dataset_request()) ->
    {ok, unsubscribe_from_dataset_response(), tuple()} |
    {error, any()} |
    {error, unsubscribe_from_dataset_errors(), tuple()}.
unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input) ->
    unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input, []).

-spec unsubscribe_from_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), unsubscribe_from_dataset_request(), proplists:proplist()) ->
    {ok, unsubscribe_from_dataset_response(), tuple()} |
    {error, any()} |
    {error, unsubscribe_from_dataset_errors(), tuple()}.
unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input0, Options0) ->
    Method = delete,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), "/subscriptions/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Posts updates to records and adds and deletes records for a dataset
%% and user.
%%
%% The sync count in the record patch is your last known sync count for that
%% record. The server will reject an UpdateRecords request with a
%% ResourceConflictException if you try to patch a record with a new value
%% but a stale sync count.
%%
%% For example, if the sync count on the server is 5 for a key called
%% highScore and you try and submit a new highScore with sync count of 4, the
%% request will be rejected. To obtain the current sync count for a record,
%% call ListRecords. On a successful update of the record, the response
%% returns the new sync count for that record. You should present that sync
%% count the next time you try to update that same record. When the record
%% does not exist, specify the sync count as 0.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials.
-spec update_records(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_records_request()) ->
    {ok, update_records_response(), tuple()} |
    {error, any()} |
    {error, update_records_errors(), tuple()}.
update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input) ->
    update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input, []).

-spec update_records(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_records_request(), proplists:proplist()) ->
    {ok, update_records_response(), tuple()} |
    {error, any()} |
    {error, update_records_errors(), tuple()}.
update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input0, Options0) ->
    Method = post,
    Path = ["/identitypools/", aws_util:encode_uri(IdentityPoolId), "/identities/", aws_util:encode_uri(IdentityId), "/datasets/", aws_util:encode_uri(DatasetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-Client-Context">>, <<"ClientContext">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"cognito-sync">>},
    Host = build_host(<<"cognito-sync">>, Client1),
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
