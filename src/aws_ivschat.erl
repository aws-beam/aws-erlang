%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Introduction
%%
%% The Amazon IVS Chat control-plane API enables you to create and manage
%% Amazon IVS Chat resources.
%%
%% You also need to integrate with the Amazon IVS Chat Messaging API, to
%% enable users to interact with chat rooms in real time.
%%
%% The API is an AWS regional service. For a list of supported regions and
%% Amazon IVS Chat HTTPS service endpoints, see the Amazon IVS Chat
%% information on the Amazon IVS page in the AWS General Reference.
%%
%% Notes on terminology:
%%
%% <ul> <li> You create service applications using the Amazon IVS Chat API.
%% We refer to these as applications.
%%
%% </li> <li> You create front-end client applications (browser and
%% Android/iOS apps) using the Amazon IVS Chat Messaging API. We refer to
%% these as clients.
%%
%% </li> </ul> Resources
%%
%% The following resources are part of Amazon IVS Chat:
%%
%% <ul> <li> LoggingConfiguration — A configuration that allows customers to
%% store and record sent messages in a chat room. See the Logging
%% Configuration endpoints for more information.
%%
%% </li> <li> Room — The central Amazon IVS Chat resource through which
%% clients connect to and exchange chat messages. See the Room endpoints for
%% more information.
%%
%% </li> </ul> Tagging
%%
%% A tag is a metadata label that you assign to an AWS resource. A tag
%% comprises a key and a value, both set by you. For example, you might set a
%% tag as `topic:nature' to label a particular video category. See
%% Tagging AWS Resources for more information, including restrictions that
%% apply to tags and &quot;Tag naming limits and requirements&quot;; Amazon
%% IVS Chat has no service-specific constraints beyond what is documented
%% there.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the same tag for different resources to indicate that they are
%% related. You can also use tags to manage access (see Access Tags).
%%
%% The Amazon IVS Chat API has these tag-related endpoints:
%% `TagResource', `UntagResource', and `ListTagsForResource'. The
%% following resource supports tagging: Room.
%%
%% At most 50 tags can be applied to a resource.
%%
%% API Access Security
%%
%% Your Amazon IVS Chat applications (service applications and clients) must
%% be authenticated and authorized to access Amazon IVS Chat resources. Note
%% the differences between these concepts:
%%
%% <ul> <li> Authentication is about verifying identity. Requests to the
%% Amazon IVS Chat API must be signed to verify your identity.
%%
%% </li> <li> Authorization is about granting permissions. Your IAM roles
%% need to have permissions for Amazon IVS Chat API requests.
%%
%% </li> </ul> Users (viewers) connect to a room using secure access tokens
%% that you create using the `CreateChatToken' endpoint through the AWS
%% SDK. You call CreateChatToken for every user’s chat session, passing
%% identity and authorization information about the user.
%%
%% Signing API Requests
%%
%% HTTP API requests must be signed with an AWS SigV4 signature using your
%% AWS security credentials. The AWS Command Line Interface (CLI) and the AWS
%% SDKs take care of signing the underlying API calls for you. However, if
%% your application calls the Amazon IVS Chat HTTP API directly, it’s your
%% responsibility to sign the requests.
%%
%% You generate a signature using valid AWS credentials for an IAM role that
%% has permission to perform the requested action. For example, DeleteMessage
%% requests must be made using an IAM role that has the
%% `ivschat:DeleteMessage' permission.
%%
%% For more information:
%%
%% <ul> <li> Authentication and generating signatures — See Authenticating
%% Requests (Amazon Web Services Signature Version 4) in the Amazon Web
%% Services General Reference.
%%
%% </li> <li> Managing Amazon IVS permissions — See Identity and Access
%% Management on the Security page of the Amazon IVS User Guide.
%%
%% </li> </ul> Amazon Resource Names (ARNs)
%%
%% ARNs uniquely identify AWS resources. An ARN is required when you need to
%% specify a resource unambiguously across all of AWS, such as in IAM
%% policies and API calls. For more information, see Amazon Resource Names in
%% the AWS General Reference.
%%
%% Messaging Endpoints
%%
%% <ul> <li> `DeleteMessage' — Sends an event to a specific room which
%% directs clients to delete a specific message; that is, unrender it from
%% view and delete it from the client’s chat history. This event’s
%% `EventName' is `aws:DELETE_MESSAGE'. This replicates the
%% DeleteMessage WebSocket operation in the Amazon IVS Chat Messaging API.
%%
%% </li> <li> `DisconnectUser' — Disconnects all connections using a
%% specified user ID from a room. This replicates the DisconnectUser
%% WebSocket operation in the Amazon IVS Chat Messaging API.
%%
%% </li> <li> `SendEvent' — Sends an event to a room. Use this within
%% your application’s business logic to send events to clients of a room;
%% e.g., to notify clients to change the way the chat UI is rendered.
%%
%% </li> </ul> Chat Token Endpoint
%%
%% <ul> <li> `CreateChatToken' — Creates an encrypted token that is used
%% by a chat participant to establish an individual WebSocket chat connection
%% to a room. When the token is used to connect to chat, the connection is
%% valid for the session duration specified in the request. The token becomes
%% invalid at the token-expiration timestamp included in the response.
%%
%% </li> </ul> Room Endpoints
%%
%% <ul> <li> `CreateRoom' — Creates a room that allows clients to connect
%% and pass messages.
%%
%% </li> <li> `DeleteRoom' — Deletes the specified room.
%%
%% </li> <li> `GetRoom' — Gets the specified room.
%%
%% </li> <li> `ListRooms' — Gets summary information about all your rooms
%% in the AWS region where the API request is processed.
%%
%% </li> <li> `UpdateRoom' — Updates a room’s configuration.
%%
%% </li> </ul> Logging Configuration Endpoints
%%
%% <ul> <li> `CreateLoggingConfiguration' — Creates a logging
%% configuration that allows clients to store and record sent messages.
%%
%% </li> <li> `DeleteLoggingConfiguration' — Deletes the specified
%% logging configuration.
%%
%% </li> <li> `GetLoggingConfiguration' — Gets the specified logging
%% configuration.
%%
%% </li> <li> `ListLoggingConfigurations' — Gets summary information
%% about all your logging configurations in the AWS region where the API
%% request is processed.
%%
%% </li> <li> `UpdateLoggingConfiguration' — Updates a specified logging
%% configuration.
%%
%% </li> </ul> Tags Endpoints
%%
%% <ul> <li> `ListTagsForResource' — Gets information about AWS tags for
%% the specified ARN.
%%
%% </li> <li> `TagResource' — Adds or updates tags for the AWS resource
%% with the specified ARN.
%%
%% </li> <li> `UntagResource' — Removes tags from the resource with the
%% specified ARN.
%%
%% </li> </ul> All the above are HTTP operations. There is a separate
%% messaging API for managing Chat resources; see the Amazon IVS Chat
%% Messaging API Reference.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an encrypted token that is used by a chat participant to
%% establish an individual WebSocket chat connection to a room.
%%
%% When the token is used to connect to chat, the connection is valid for the
%% session duration specified in the request. The token becomes invalid at
%% the token-expiration timestamp included in the response.
%%
%% Use the `capabilities' field to permit an end user to send messages or
%% moderate a room.
%%
%% The `attributes' field securely attaches structured data to the chat
%% session; the data is included within each message sent by the end user and
%% received by other participants in the room. Common use cases for
%% attributes include passing end-user profile data like an icon, display
%% name, colors, badges, and other display features.
%%
%% Encryption keys are owned by Amazon IVS Chat and never used directly by
%% your application.
create_chat_token(Client, Input) ->
    create_chat_token(Client, Input, []).
create_chat_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateChatToken"],
    SuccessStatusCode = 200,
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

%% @doc Creates a logging configuration that allows clients to store and
%% record sent messages.
create_logging_configuration(Client, Input) ->
    create_logging_configuration(Client, Input, []).
create_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLoggingConfiguration"],
    SuccessStatusCode = 200,
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

%% @doc Creates a room that allows clients to connect and pass messages.
create_room(Client, Input) ->
    create_room(Client, Input, []).
create_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateRoom"],
    SuccessStatusCode = 200,
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

%% @doc Deletes the specified logging configuration.
delete_logging_configuration(Client, Input) ->
    delete_logging_configuration(Client, Input, []).
delete_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLoggingConfiguration"],
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

%% @doc Sends an event to a specific room which directs clients to delete a
%% specific message; that is, unrender it from view and delete it from the
%% client’s chat history.
%%
%% This event’s `EventName' is `aws:DELETE_MESSAGE'. This replicates
%% the DeleteMessage WebSocket operation in the Amazon IVS Chat Messaging
%% API.
delete_message(Client, Input) ->
    delete_message(Client, Input, []).
delete_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteMessage"],
    SuccessStatusCode = 200,
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

%% @doc Deletes the specified room.
delete_room(Client, Input) ->
    delete_room(Client, Input, []).
delete_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRoom"],
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

%% @doc Disconnects all connections using a specified user ID from a room.
%%
%% This replicates the DisconnectUser WebSocket operation in the Amazon IVS
%% Chat Messaging API.
disconnect_user(Client, Input) ->
    disconnect_user(Client, Input, []).
disconnect_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectUser"],
    SuccessStatusCode = 200,
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

%% @doc Gets the specified logging configuration.
get_logging_configuration(Client, Input) ->
    get_logging_configuration(Client, Input, []).
get_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLoggingConfiguration"],
    SuccessStatusCode = 200,
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

%% @doc Gets the specified room.
get_room(Client, Input) ->
    get_room(Client, Input, []).
get_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRoom"],
    SuccessStatusCode = 200,
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

%% @doc Gets summary information about all your logging configurations in the
%% AWS region where the API request is processed.
list_logging_configurations(Client, Input) ->
    list_logging_configurations(Client, Input, []).
list_logging_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLoggingConfigurations"],
    SuccessStatusCode = 200,
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

%% @doc Gets summary information about all your rooms in the AWS region where
%% the API request is processed.
%%
%% Results are sorted in descending order of `updateTime'.
list_rooms(Client, Input) ->
    list_rooms(Client, Input, []).
list_rooms(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListRooms"],
    SuccessStatusCode = 200,
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

%% @doc Gets information about AWS tags for the specified ARN.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends an event to a room.
%%
%% Use this within your application’s business logic to send events to
%% clients of a room; e.g., to notify clients to change the way the chat UI
%% is rendered.
send_event(Client, Input) ->
    send_event(Client, Input, []).
send_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SendEvent"],
    SuccessStatusCode = 200,
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

%% @doc Adds or updates tags for the AWS resource with the specified ARN.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Removes tags from the resource with the specified ARN.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a specified logging configuration.
update_logging_configuration(Client, Input) ->
    update_logging_configuration(Client, Input, []).
update_logging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLoggingConfiguration"],
    SuccessStatusCode = 200,
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

%% @doc Updates a room’s configuration.
update_room(Client, Input) ->
    update_room(Client, Input, []).
update_room(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateRoom"],
    SuccessStatusCode = 200,
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
