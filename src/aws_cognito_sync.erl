%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Cognito Sync</fullname>
%%
%% Amazon Cognito Sync provides an AWS service and client library that enable
%% cross-device syncing of application-related user data. High-level client
%% libraries are available for both iOS and Android. You can use these
%% libraries to persist data locally so that it's available even if the
%% device is offline. Developer credentials don't need to be stored on the
%% mobile device to access the service. You can use Amazon Cognito to obtain
%% a normalized user ID and credentials. User data is persisted in a dataset
%% that can store up to 1 MB of key-value pairs, and you can have up to 20
%% datasets per user identity.
%%
%% With Amazon Cognito Sync, the data stored for each identity is accessible
%% only to credentials assigned to that identity. In order to use the Cognito
%% Sync service, you need to make API calls using credentials retrieved with
%% <a
%% href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html">Amazon
%% Cognito Identity service</a>.
%%
%% If you want to use Cognito Sync in an Android or iOS application, you will
%% probably want to make API calls via the AWS Mobile SDK. To learn more, see
%% the <a
%% href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html">Developer
%% Guide for Android</a> and the <a
%% href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html">Developer
%% Guide for iOS</a>.
-module(aws_cognito_sync).

-export([bulk_publish/3,
         bulk_publish/4,
         delete_dataset/5,
         delete_dataset/6,
         describe_dataset/4,
         describe_dataset/5,
         describe_identity_pool_usage/2,
         describe_identity_pool_usage/3,
         describe_identity_usage/3,
         describe_identity_usage/4,
         get_bulk_publish_details/3,
         get_bulk_publish_details/4,
         get_cognito_events/2,
         get_cognito_events/3,
         get_identity_pool_configuration/2,
         get_identity_pool_configuration/3,
         list_datasets/3,
         list_datasets/4,
         list_identity_pool_usage/1,
         list_identity_pool_usage/2,
         list_records/4,
         list_records/5,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Initiates a bulk publish of all existing datasets for an Identity
%% Pool to the configured stream. Customers are limited to one successful
%% bulk publish per 24 hours. Bulk publish is an asynchronous request,
%% customers can see the status of the request via the GetBulkPublishDetails
%% operation.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
bulk_publish(Client, IdentityPoolId, Input) ->
    bulk_publish(Client, IdentityPoolId, Input, []).
bulk_publish(Client, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/bulkpublish"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specific dataset. The dataset will be deleted
%% permanently, and the action can't be undone. Datasets that this dataset
%% was merged with will no longer report the merge. Any subsequent operation
%% on this dataset will result in a ResourceNotFoundException.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials.
delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input) ->
    delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input, []).
delete_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Input0, Options) ->
    Method = delete,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets meta data about a dataset by identity and dataset name. With
%% Amazon Cognito Sync, each identity has access only to its own data. Thus,
%% the credentials used to make this API call need to have access to the
%% identity data.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials. You should use Cognito Identity
%% credentials to make this API call.
describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, []).
describe_dataset(Client, DatasetName, IdentityId, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets usage details (for example, data storage) about a particular
%% identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
describe_identity_pool_usage(Client, IdentityPoolId)
  when is_map(Client) ->
    describe_identity_pool_usage(Client, IdentityPoolId, []).
describe_identity_pool_usage(Client, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets usage information for an identity, including number of datasets
%% and data usage.
%%
%% This API can be called with temporary user credentials provided by Cognito
%% Identity or with developer credentials.
describe_identity_usage(Client, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    describe_identity_usage(Client, IdentityId, IdentityPoolId, []).
describe_identity_usage(Client, IdentityId, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), ""],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the status of the last BulkPublish operation for an identity
%% pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
get_bulk_publish_details(Client, IdentityPoolId, Input) ->
    get_bulk_publish_details(Client, IdentityPoolId, Input, []).
get_bulk_publish_details(Client, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/getBulkPublishDetails"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the events and the corresponding Lambda functions associated
%% with an identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
get_cognito_events(Client, IdentityPoolId)
  when is_map(Client) ->
    get_cognito_events(Client, IdentityPoolId, []).
get_cognito_events(Client, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/events"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the configuration settings of an identity pool.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
get_identity_pool_configuration(Client, IdentityPoolId)
  when is_map(Client) ->
    get_identity_pool_configuration(Client, IdentityPoolId, []).
get_identity_pool_configuration(Client, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/configuration"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists datasets for an identity. With Amazon Cognito Sync, each
%% identity has access only to its own data. Thus, the credentials used to
%% make this API call need to have access to the identity data.
%%
%% ListDatasets can be called with temporary user credentials provided by
%% Cognito Identity or with developer credentials. You should use the Cognito
%% Identity credentials to make this API call.
list_datasets(Client, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    list_datasets(Client, IdentityId, IdentityPoolId, []).
list_datasets(Client, IdentityId, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of identity pools registered with Cognito.
%%
%% ListIdentityPoolUsage can only be called with developer credentials. You
%% cannot make this API call with the temporary user credentials provided by
%% Cognito Identity.
list_identity_pool_usage(Client)
  when is_map(Client) ->
    list_identity_pool_usage(Client, []).
list_identity_pool_usage(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets paginated records, optionally changed after a particular sync
%% count for a dataset and identity. With Amazon Cognito Sync, each identity
%% has access only to its own data. Thus, the credentials used to make this
%% API call need to have access to the identity data.
%%
%% ListRecords can be called with temporary user credentials provided by
%% Cognito Identity or with developer credentials. You should use Cognito
%% Identity credentials to make this API call.
list_records(Client, DatasetName, IdentityId, IdentityPoolId)
  when is_map(Client) ->
    list_records(Client, DatasetName, IdentityId, IdentityPoolId, []).
list_records(Client, DatasetName, IdentityId, IdentityPoolId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), "/records"],
    SuccessStatusCode = 200,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Registers a device to receive push sync notifications.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
register_device(Client, IdentityId, IdentityPoolId, Input) ->
    register_device(Client, IdentityId, IdentityPoolId, Input, []).
register_device(Client, IdentityId, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identity/", http_uri:encode(IdentityId), "/device"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the AWS Lambda function for a given event type for an identity
%% pool. This request only updates the key/value pair specified. Other
%% key/values pairs are not updated. To remove a key value pair, pass a empty
%% value for the particular key.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
set_cognito_events(Client, IdentityPoolId, Input) ->
    set_cognito_events(Client, IdentityPoolId, Input, []).
set_cognito_events(Client, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/events"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the necessary configuration for push sync.
%%
%% This API can only be called with developer credentials. You cannot call
%% this API with the temporary user credentials provided by Cognito Identity.
set_identity_pool_configuration(Client, IdentityPoolId, Input) ->
    set_identity_pool_configuration(Client, IdentityPoolId, Input, []).
set_identity_pool_configuration(Client, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/configuration"],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Subscribes to receive notifications when a dataset is modified by
%% another device.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input) ->
    subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input, []).
subscribe_to_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), "/subscriptions/", http_uri:encode(DeviceId), ""],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Unsubscribes from receiving notifications when a dataset is modified
%% by another device.
%%
%% This API can only be called with temporary credentials provided by Cognito
%% Identity. You cannot call this API with developer credentials.
unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input) ->
    unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input, []).
unsubscribe_from_dataset(Client, DatasetName, DeviceId, IdentityId, IdentityPoolId, Input0, Options) ->
    Method = delete,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), "/subscriptions/", http_uri:encode(DeviceId), ""],
    SuccessStatusCode = 200,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

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
update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input) ->
    update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input, []).
update_records(Client, DatasetName, IdentityId, IdentityPoolId, Input0, Options) ->
    Method = post,
    Path = ["/identitypools/", http_uri:encode(IdentityPoolId), "/identities/", http_uri:encode(IdentityId), "/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = 200,
    
    HeadersMapping = [
                       {<<"x-amz-Client-Context">>, <<"ClientContext">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"cognito-sync">>},
    Host = get_host(<<"cognito-sync">>, Client1),
    URL = get_url(Host, Path, Client1),
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
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
