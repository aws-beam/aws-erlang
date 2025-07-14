%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Introduction
%%
%% The Amazon IVS Chat control-plane API enables you to create and manage
%% Amazon IVS Chat
%% resources.
%%
%% You also need to integrate with the Amazon IVS Chat Messaging
%% API:
%% https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html,
%% to enable users to interact with chat rooms in real time.
%%
%% The API is an AWS regional service. For a list of supported regions and
%% Amazon IVS Chat
%% HTTPS service endpoints, see the Amazon IVS Chat information on the Amazon
%% IVS page: https://docs.aws.amazon.com/general/latest/gr/ivs.html in the
%% AWS General Reference.
%%
%% This document describes HTTP operations. There is a separate messaging API
%% for managing Chat resources; see the Amazon IVS Chat Messaging API
%% Reference:
%% https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html.
%%
%% Notes on terminology:
%%
%% You create service applications using the Amazon IVS Chat API. We refer to
%% these as
%% applications.
%%
%% You create front-end client applications (browser and Android/iOS apps)
%% using the
%% Amazon IVS Chat Messaging API. We refer to these as clients.
%%
%% Resources
%%
%% The following resources are part of Amazon IVS Chat:
%%
%% LoggingConfiguration — A configuration that allows customers to store and
%% record sent messages in a chat room. See the Logging Configuration
%% endpoints for more information.
%%
%% Room — The central Amazon IVS Chat resource through
%% which clients connect to and exchange chat messages. See the Room
%% endpoints for more
%% information.
%%
%% Tagging
%%
%% A tag is a metadata label that you assign to an AWS resource. A tag
%% comprises a key and a value, both set by you. For
%% example, you might set a tag as `topic:nature' to label a particular
%% video
%% category. See Best practices and strategies:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
%% in Tagging Amazon Web Services Resources and Tag Editor for details,
%% including restrictions that apply to tags and &quot;Tag naming limits and
%% requirements&quot;; Amazon IVS Chat has no service-specific
%% constraints beyond what is documented there.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the
%% same tag for different resources to indicate that they are related. You
%% can also use tags to
%% manage access (see Access Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
%%
%% The Amazon IVS Chat API has these tag-related operations:
%% `TagResource', `UntagResource', and
%% `ListTagsForResource'. The following resource supports tagging: Room.
%%
%% At most 50 tags can be applied to a resource.
%%
%% API Access Security
%%
%% Your Amazon IVS Chat applications (service applications and clients) must
%% be authenticated
%% and authorized to access Amazon IVS Chat resources. Note the differences
%% between these
%% concepts:
%%
%% Authentication is about verifying identity. Requests to the
%% Amazon IVS Chat API must be signed to verify your identity.
%%
%% Authorization is about granting permissions. Your IAM roles need
%% to have permissions for Amazon IVS Chat API requests.
%%
%% Users (viewers) connect to a room using secure access tokens that you
%% create using the
%% `CreateChatToken' operation through the AWS SDK. You call
%% CreateChatToken for
%% every user’s chat session, passing identity and authorization information
%% about the
%% user.
%%
%% Signing API Requests
%%
%% HTTP API requests must be signed with an AWS SigV4 signature using your
%% AWS security
%% credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take
%% care of signing the
%% underlying API calls for you. However, if your application calls the
%% Amazon IVS Chat HTTP API
%% directly, it’s your responsibility to sign the requests.
%%
%% You generate a signature using valid AWS credentials for an IAM role that
%% has permission
%% to perform the requested action. For example, DeleteMessage requests must
%% be made using an IAM
%% role that has the `ivschat:DeleteMessage' permission.
%%
%% For more information:
%%
%% Authentication and generating signatures — See Authenticating Requests
%% (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the Amazon Web Services
%% General Reference.
%%
%% Managing Amazon IVS permissions — See Identity and Access Management:
%% https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html on
%% the Security page of the Amazon IVS User Guide.
%%
%% Amazon Resource Names (ARNs)
%%
%% ARNs uniquely identify AWS resources. An ARN is required when you need to
%% specify a
%% resource unambiguously across all of AWS, such as in IAM policies and API
%% calls. For more
%% information, see Amazon Resource Names:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the AWS General
%% Reference.
-module(aws_ivschat).

-export([create_chat_token/2,
         create_chat_token/3,
         create_logging_configuration/2,
         create_logging_configuration/3,
         create_room/2,
         create_room/3,
         delete_logging_configuration/2,
         delete_logging_configuration/3,
         delete_message/2,
         delete_message/3,
         delete_room/2,
         delete_room/3,
         disconnect_user/2,
         disconnect_user/3,
         get_logging_configuration/2,
         get_logging_configuration/3,
         get_room/2,
         get_room/3,
         list_logging_configurations/2,
         list_logging_configurations/3,
         list_rooms/2,
         list_rooms/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         send_event/2,
         send_event/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_logging_configuration/2,
         update_logging_configuration/3,
         update_room/2,
         update_room/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% delete_room_request() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_room_request() :: #{binary() => any()}.


%% Example:
%% delete_message_response() :: #{
%%   <<"id">> => string()
%% }
-type delete_message_response() :: #{binary() => any()}.


%% Example:
%% list_rooms_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"rooms">> := list(room_summary())
%% }
-type list_rooms_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% disconnect_user_response() :: #{}
-type disconnect_user_response() :: #{}.


%% Example:
%% create_chat_token_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"capabilities">> => list(string()),
%%   <<"roomIdentifier">> := string(),
%%   <<"sessionDurationInMinutes">> => integer(),
%%   <<"userId">> := string()
%% }
-type create_chat_token_request() :: #{binary() => any()}.


%% Example:
%% delete_message_request() :: #{
%%   <<"id">> := string(),
%%   <<"reason">> => string(),
%%   <<"roomIdentifier">> := string()
%% }
-type delete_message_request() :: #{binary() => any()}.


%% Example:
%% disconnect_user_request() :: #{
%%   <<"reason">> => string(),
%%   <<"roomIdentifier">> := string(),
%%   <<"userId">> := string()
%% }
-type disconnect_user_request() :: #{binary() => any()}.


%% Example:
%% update_logging_configuration_request() :: #{
%%   <<"destinationConfiguration">> => list(),
%%   <<"identifier">> := string(),
%%   <<"name">> => string()
%% }
-type update_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_room_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"maximumMessageLength">> => integer(),
%%   <<"maximumMessageRatePerSecond">> => integer(),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type update_room_response() :: #{binary() => any()}.


%% Example:
%% create_logging_configuration_request() :: #{
%%   <<"destinationConfiguration">> := list(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% send_event_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"eventName">> := string(),
%%   <<"roomIdentifier">> := string()
%% }
-type send_event_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_logging_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"destinationConfiguration">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type create_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_event_response() :: #{
%%   <<"id">> => string()
%% }
-type send_event_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"limit">> => integer(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_logging_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"destinationConfiguration">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type get_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% s3_destination_configuration() :: #{
%%   <<"bucketName">> => string()
%% }
-type s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_chat_token_response() :: #{
%%   <<"sessionExpirationTime">> => non_neg_integer(),
%%   <<"token">> => string(),
%%   <<"tokenExpirationTime">> => non_neg_integer()
%% }
-type create_chat_token_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% get_logging_configuration_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_room_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_room_request() :: #{binary() => any()}.


%% Example:
%% list_logging_configurations_response() :: #{
%%   <<"loggingConfigurations">> := list(logging_configuration_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_logging_configurations_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_room_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"maximumMessageLength">> => integer(),
%%   <<"maximumMessageRatePerSecond">> => integer(),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type get_room_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% create_room_request() :: #{
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"maximumMessageLength">> => integer(),
%%   <<"maximumMessageRatePerSecond">> => integer(),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_room_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"limit">> => integer(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_rooms_request() :: #{
%%   <<"loggingConfigurationIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"messageReviewHandlerUri">> => string(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_rooms_request() :: #{binary() => any()}.


%% Example:
%% list_logging_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_logging_configurations_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_destination_configuration() :: #{
%%   <<"logGroupName">> => string()
%% }
-type cloud_watch_logs_destination_configuration() :: #{binary() => any()}.


%% Example:
%% firehose_destination_configuration() :: #{
%%   <<"deliveryStreamName">> => string()
%% }
-type firehose_destination_configuration() :: #{binary() => any()}.


%% Example:
%% delete_logging_configuration_request() :: #{
%%   <<"identifier">> := string()
%% }
-type delete_logging_configuration_request() :: #{binary() => any()}.


%% Example:
%% room_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type room_summary() :: #{binary() => any()}.


%% Example:
%% update_logging_configuration_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"destinationConfiguration">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type update_logging_configuration_response() :: #{binary() => any()}.


%% Example:
%% logging_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"destinationConfiguration">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type logging_configuration_summary() :: #{binary() => any()}.


%% Example:
%% update_room_request() :: #{
%%   <<"identifier">> := string(),
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"maximumMessageLength">> => integer(),
%%   <<"maximumMessageRatePerSecond">> => integer(),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string()
%% }
-type update_room_request() :: #{binary() => any()}.


%% Example:
%% create_room_response() :: #{
%%   <<"arn">> => string(),
%%   <<"createTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"loggingConfigurationIdentifiers">> => list(string()),
%%   <<"maximumMessageLength">> => integer(),
%%   <<"maximumMessageRatePerSecond">> => integer(),
%%   <<"messageReviewHandler">> => message_review_handler(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type create_room_response() :: #{binary() => any()}.


%% Example:
%% pending_verification() :: #{
%%   <<"message">> => string()
%% }
-type pending_verification() :: #{binary() => any()}.


%% Example:
%% message_review_handler() :: #{
%%   <<"fallbackResult">> => string(),
%%   <<"uri">> => string()
%% }
-type message_review_handler() :: #{binary() => any()}.

-type create_chat_token_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_logging_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_room_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_logging_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_message_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_room_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disconnect_user_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_logging_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_room_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_logging_configurations_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_rooms_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_event_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_logging_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_room_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an encrypted token that is used by a chat participant to
%% establish an individual
%% WebSocket chat connection to a room.
%%
%% When the token is used to connect to chat, the
%% connection is valid for the session duration specified in the request. The
%% token becomes
%% invalid at the token-expiration timestamp included in the response.
%%
%% Use the `capabilities' field to permit an end user to send messages or
%% moderate a room.
%%
%% The `attributes' field securely attaches structured data to the chat
%% session; the data is
%% included within each message sent by the end user and received by other
%% participants in the
%% room. Common use cases for attributes include passing end-user profile
%% data like an icon,
%% display name, colors, badges, and other display features.
%%
%% Encryption keys are owned by Amazon IVS Chat and never used directly by
%% your
%% application.
-spec create_chat_token(aws_client:aws_client(), create_chat_token_request()) ->
    {ok, create_chat_token_response(), tuple()} |
    {error, any()} |
    {error, create_chat_token_errors(), tuple()}.
create_chat_token(Client, Input) ->
    create_chat_token(Client, Input, []).

-spec create_chat_token(aws_client:aws_client(), create_chat_token_request(), proplists:proplist()) ->
    {ok, create_chat_token_response(), tuple()} |
    {error, any()} |
    {error, create_chat_token_errors(), tuple()}.
create_chat_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateChatToken"],
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

%% @doc Creates a logging configuration that allows clients to store and
%% record sent
%% messages.
-spec create_logging_configuration(aws_client:aws_client(), create_logging_configuration_request()) ->
    {ok, create_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_logging_configuration_errors(), tuple()}.
create_logging_configuration(Client, Input) ->
    create_logging_configuration(Client, Input, []).

-spec create_logging_configuration(aws_client:aws_client(), create_logging_configuration_request(), proplists:proplist()) ->
    {ok, create_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_logging_configuration_errors(), tuple()}.
create_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLoggingConfiguration"],
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

%% @doc Creates a room that allows clients to connect and pass messages.
-spec create_room(aws_client:aws_client(), create_room_request()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, Input) ->
    create_room(Client, Input, []).

-spec create_room(aws_client:aws_client(), create_room_request(), proplists:proplist()) ->
    {ok, create_room_response(), tuple()} |
    {error, any()} |
    {error, create_room_errors(), tuple()}.
create_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateRoom"],
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

%% @doc Deletes the specified logging configuration.
-spec delete_logging_configuration(aws_client:aws_client(), delete_logging_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, Input) ->
    delete_logging_configuration(Client, Input, []).

-spec delete_logging_configuration(aws_client:aws_client(), delete_logging_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLoggingConfiguration"],
    SuccessStatusCode = 204,
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

%% @doc Sends an event to a specific room which directs clients to delete a
%% specific message;
%% that is, unrender it from view and delete it from the client’s chat
%% history.
%%
%% This event’s
%% `EventName' is `aws:DELETE_MESSAGE'. This replicates the
%% DeleteMessage:
%% https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html
%% WebSocket operation in the Amazon IVS Chat Messaging API.
-spec delete_message(aws_client:aws_client(), delete_message_request()) ->
    {ok, delete_message_response(), tuple()} |
    {error, any()} |
    {error, delete_message_errors(), tuple()}.
delete_message(Client, Input) ->
    delete_message(Client, Input, []).

-spec delete_message(aws_client:aws_client(), delete_message_request(), proplists:proplist()) ->
    {ok, delete_message_response(), tuple()} |
    {error, any()} |
    {error, delete_message_errors(), tuple()}.
delete_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteMessage"],
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

%% @doc Deletes the specified room.
-spec delete_room(aws_client:aws_client(), delete_room_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, Input) ->
    delete_room(Client, Input, []).

-spec delete_room(aws_client:aws_client(), delete_room_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_room_errors(), tuple()}.
delete_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRoom"],
    SuccessStatusCode = 204,
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

%% @doc Disconnects all connections using a specified user ID from a room.
%%
%% This replicates the
%%
%% DisconnectUser:
%% https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html
%% WebSocket operation in the Amazon IVS Chat Messaging API.
-spec disconnect_user(aws_client:aws_client(), disconnect_user_request()) ->
    {ok, disconnect_user_response(), tuple()} |
    {error, any()} |
    {error, disconnect_user_errors(), tuple()}.
disconnect_user(Client, Input) ->
    disconnect_user(Client, Input, []).

-spec disconnect_user(aws_client:aws_client(), disconnect_user_request(), proplists:proplist()) ->
    {ok, disconnect_user_response(), tuple()} |
    {error, any()} |
    {error, disconnect_user_errors(), tuple()}.
disconnect_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectUser"],
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

%% @doc Gets the specified logging configuration.
-spec get_logging_configuration(aws_client:aws_client(), get_logging_configuration_request()) ->
    {ok, get_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_logging_configuration_errors(), tuple()}.
get_logging_configuration(Client, Input) ->
    get_logging_configuration(Client, Input, []).

-spec get_logging_configuration(aws_client:aws_client(), get_logging_configuration_request(), proplists:proplist()) ->
    {ok, get_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_logging_configuration_errors(), tuple()}.
get_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLoggingConfiguration"],
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

%% @doc Gets the specified room.
-spec get_room(aws_client:aws_client(), get_room_request()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, Input) ->
    get_room(Client, Input, []).

-spec get_room(aws_client:aws_client(), get_room_request(), proplists:proplist()) ->
    {ok, get_room_response(), tuple()} |
    {error, any()} |
    {error, get_room_errors(), tuple()}.
get_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRoom"],
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

%% @doc Gets summary information about all your logging configurations in the
%% AWS region where
%% the API request is processed.
-spec list_logging_configurations(aws_client:aws_client(), list_logging_configurations_request()) ->
    {ok, list_logging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_logging_configurations_errors(), tuple()}.
list_logging_configurations(Client, Input) ->
    list_logging_configurations(Client, Input, []).

-spec list_logging_configurations(aws_client:aws_client(), list_logging_configurations_request(), proplists:proplist()) ->
    {ok, list_logging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_logging_configurations_errors(), tuple()}.
list_logging_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLoggingConfigurations"],
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

%% @doc Gets summary information about all your rooms in the AWS region where
%% the API request is
%% processed.
%%
%% Results are sorted in descending order of `updateTime'.
-spec list_rooms(aws_client:aws_client(), list_rooms_request()) ->
    {ok, list_rooms_response(), tuple()} |
    {error, any()} |
    {error, list_rooms_errors(), tuple()}.
list_rooms(Client, Input) ->
    list_rooms(Client, Input, []).

-spec list_rooms(aws_client:aws_client(), list_rooms_request(), proplists:proplist()) ->
    {ok, list_rooms_response(), tuple()} |
    {error, any()} |
    {error, list_rooms_errors(), tuple()}.
list_rooms(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListRooms"],
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

%% @doc Gets information about AWS tags for the specified ARN.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends an event to a room.
%%
%% Use this within your application’s business logic to send
%% events to clients of a room; e.g., to notify clients to change the way the
%% chat UI is
%% rendered.
-spec send_event(aws_client:aws_client(), send_event_request()) ->
    {ok, send_event_response(), tuple()} |
    {error, any()} |
    {error, send_event_errors(), tuple()}.
send_event(Client, Input) ->
    send_event(Client, Input, []).

-spec send_event(aws_client:aws_client(), send_event_request(), proplists:proplist()) ->
    {ok, send_event_response(), tuple()} |
    {error, any()} |
    {error, send_event_errors(), tuple()}.
send_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SendEvent"],
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

%% @doc Adds or updates tags for the AWS resource with the specified ARN.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from the resource with the specified ARN.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a specified logging configuration.
-spec update_logging_configuration(aws_client:aws_client(), update_logging_configuration_request()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, Input) ->
    update_logging_configuration(Client, Input, []).

-spec update_logging_configuration(aws_client:aws_client(), update_logging_configuration_request(), proplists:proplist()) ->
    {ok, update_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_logging_configuration_errors(), tuple()}.
update_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLoggingConfiguration"],
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

%% @doc Updates a room’s configuration.
-spec update_room(aws_client:aws_client(), update_room_request()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, Input) ->
    update_room(Client, Input, []).

-spec update_room(aws_client:aws_client(), update_room_request(), proplists:proplist()) ->
    {ok, update_room_response(), tuple()} |
    {error, any()} |
    {error, update_room_errors(), tuple()}.
update_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateRoom"],
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
    Client1 = Client#{service => <<"ivschat">>},
    Host = build_host(<<"ivschat">>, Client1),
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
