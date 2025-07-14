%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Participant Service actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Participant_Service.html
%%
%% Participant Service data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Participant_Service.html
%%
%% Amazon Connect is an easy-to-use omnichannel cloud contact center service
%% that
%% enables companies of any size to deliver superior customer service at a
%% lower cost.
%%
%% Amazon Connect communications capabilities make it easy for companies to
%% deliver
%% personalized interactions across communication channels, including chat.
%%
%% Use the Amazon Connect Participant Service to manage participants (for
%% example,
%% agents, customers, and managers listening in), and to send messages and
%% events within a
%% chat contact. The APIs in the service enable the following: sending chat
%% messages,
%% attachment sharing, managing a participant's connection state and
%% message events, and
%% retrieving chat transcripts.
-module(aws_connectparticipant).

-export([cancel_participant_authentication/2,
         cancel_participant_authentication/3,
         complete_attachment_upload/2,
         complete_attachment_upload/3,
         create_participant_connection/2,
         create_participant_connection/3,
         describe_view/3,
         describe_view/5,
         describe_view/6,
         disconnect_participant/2,
         disconnect_participant/3,
         get_attachment/2,
         get_attachment/3,
         get_authentication_url/2,
         get_authentication_url/3,
         get_transcript/2,
         get_transcript/3,
         send_event/2,
         send_event/3,
         send_message/2,
         send_message/3,
         start_attachment_upload/2,
         start_attachment_upload/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% cancel_participant_authentication_request() :: #{
%%   <<"ConnectionToken">> := string(),
%%   <<"SessionId">> := string()
%% }
-type cancel_participant_authentication_request() :: #{binary() => any()}.


%% Example:
%% view() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => view_content(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> => integer()
%% }
-type view() :: #{binary() => any()}.


%% Example:
%% get_authentication_url_response() :: #{
%%   <<"AuthenticationUrl">> => string()
%% }
-type get_authentication_url_response() :: #{binary() => any()}.

%% Example:
%% disconnect_participant_response() :: #{}
-type disconnect_participant_response() :: #{}.


%% Example:
%% receipt() :: #{
%%   <<"DeliveredTimestamp">> => string(),
%%   <<"ReadTimestamp">> => string(),
%%   <<"RecipientParticipantId">> => string()
%% }
-type receipt() :: #{binary() => any()}.


%% Example:
%% start_position() :: #{
%%   <<"AbsoluteTime">> => string(),
%%   <<"Id">> => string(),
%%   <<"MostRecent">> => integer()
%% }
-type start_position() :: #{binary() => any()}.


%% Example:
%% websocket() :: #{
%%   <<"ConnectionExpiry">> => string(),
%%   <<"Url">> => string()
%% }
-type websocket() :: #{binary() => any()}.


%% Example:
%% complete_attachment_upload_request() :: #{
%%   <<"AttachmentIds">> := list(string()),
%%   <<"ClientToken">> := string(),
%%   <<"ConnectionToken">> := string()
%% }
-type complete_attachment_upload_request() :: #{binary() => any()}.


%% Example:
%% send_event_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionToken">> := string(),
%%   <<"Content">> => string(),
%%   <<"ContentType">> := string()
%% }
-type send_event_request() :: #{binary() => any()}.


%% Example:
%% describe_view_response() :: #{
%%   <<"View">> => view()
%% }
-type describe_view_response() :: #{binary() => any()}.


%% Example:
%% item() :: #{
%%   <<"AbsoluteTime">> => string(),
%%   <<"Attachments">> => list(attachment_item()),
%%   <<"ContactId">> => string(),
%%   <<"Content">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Id">> => string(),
%%   <<"MessageMetadata">> => message_metadata(),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"RelatedContactId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type item() :: #{binary() => any()}.


%% Example:
%% disconnect_participant_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionToken">> := string()
%% }
-type disconnect_participant_request() :: #{binary() => any()}.


%% Example:
%% view_content() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"InputSchema">> => string(),
%%   <<"Template">> => string()
%% }
-type view_content() :: #{binary() => any()}.


%% Example:
%% create_participant_connection_request() :: #{
%%   <<"ConnectParticipant">> => boolean(),
%%   <<"ParticipantToken">> := string(),
%%   <<"Type">> => list(list(any())())
%% }
-type create_participant_connection_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_event_response() :: #{
%%   <<"AbsoluteTime">> => string(),
%%   <<"Id">> => string()
%% }
-type send_event_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% attachment_item() :: #{
%%   <<"AttachmentId">> => string(),
%%   <<"AttachmentName">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"Status">> => list(any())
%% }
-type attachment_item() :: #{binary() => any()}.


%% Example:
%% get_authentication_url_request() :: #{
%%   <<"ConnectionToken">> := string(),
%%   <<"RedirectUri">> := string(),
%%   <<"SessionId">> := string()
%% }
-type get_authentication_url_request() :: #{binary() => any()}.


%% Example:
%% describe_view_request() :: #{
%%   <<"ConnectionToken">> := string()
%% }
-type describe_view_request() :: #{binary() => any()}.


%% Example:
%% get_attachment_response() :: #{
%%   <<"AttachmentSizeInBytes">> => float(),
%%   <<"Url">> => string(),
%%   <<"UrlExpiry">> => string()
%% }
-type get_attachment_response() :: #{binary() => any()}.


%% Example:
%% message_metadata() :: #{
%%   <<"MessageId">> => string(),
%%   <<"Receipts">> => list(receipt())
%% }
-type message_metadata() :: #{binary() => any()}.


%% Example:
%% start_attachment_upload_response() :: #{
%%   <<"AttachmentId">> => string(),
%%   <<"UploadMetadata">> => upload_metadata()
%% }
-type start_attachment_upload_response() :: #{binary() => any()}.


%% Example:
%% get_transcript_request() :: #{
%%   <<"ConnectionToken">> := string(),
%%   <<"ContactId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScanDirection">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StartPosition">> => start_position()
%% }
-type get_transcript_request() :: #{binary() => any()}.


%% Example:
%% get_attachment_request() :: #{
%%   <<"AttachmentId">> := string(),
%%   <<"ConnectionToken">> := string(),
%%   <<"UrlExpiryInSeconds">> => integer()
%% }
-type get_attachment_request() :: #{binary() => any()}.


%% Example:
%% connection_credentials() :: #{
%%   <<"ConnectionToken">> => string(),
%%   <<"Expiry">> => string()
%% }
-type connection_credentials() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% start_attachment_upload_request() :: #{
%%   <<"AttachmentName">> := string(),
%%   <<"AttachmentSizeInBytes">> := float(),
%%   <<"ClientToken">> := string(),
%%   <<"ConnectionToken">> := string(),
%%   <<"ContentType">> := string()
%% }
-type start_attachment_upload_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% complete_attachment_upload_response() :: #{}
-type complete_attachment_upload_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_transcript_response() :: #{
%%   <<"InitialContactId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Transcript">> => list(item())
%% }
-type get_transcript_response() :: #{binary() => any()}.


%% Example:
%% send_message_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionToken">> := string(),
%%   <<"Content">> := string(),
%%   <<"ContentType">> := string()
%% }
-type send_message_request() :: #{binary() => any()}.

%% Example:
%% cancel_participant_authentication_response() :: #{}
-type cancel_participant_authentication_response() :: #{}.


%% Example:
%% send_message_response() :: #{
%%   <<"AbsoluteTime">> => string(),
%%   <<"Id">> => string()
%% }
-type send_message_response() :: #{binary() => any()}.


%% Example:
%% upload_metadata() :: #{
%%   <<"HeadersToInclude">> => map(),
%%   <<"Url">> => string(),
%%   <<"UrlExpiry">> => string()
%% }
-type upload_metadata() :: #{binary() => any()}.


%% Example:
%% create_participant_connection_response() :: #{
%%   <<"ConnectionCredentials">> => connection_credentials(),
%%   <<"Websocket">> => websocket()
%% }
-type create_participant_connection_response() :: #{binary() => any()}.

-type cancel_participant_authentication_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type complete_attachment_upload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_participant_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type describe_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disconnect_participant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_attachment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_authentication_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_transcript_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type send_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type send_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type start_attachment_upload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the authentication session.
%%
%% The opted out branch of the Authenticate Customer
%% flow block will be taken.
%%
%% The current supported channel is chat. This API is not supported for Apple
%% Messages for Business, WhatsApp, or SMS chats.
-spec cancel_participant_authentication(aws_client:aws_client(), cancel_participant_authentication_request()) ->
    {ok, cancel_participant_authentication_response(), tuple()} |
    {error, any()} |
    {error, cancel_participant_authentication_errors(), tuple()}.
cancel_participant_authentication(Client, Input) ->
    cancel_participant_authentication(Client, Input, []).

-spec cancel_participant_authentication(aws_client:aws_client(), cancel_participant_authentication_request(), proplists:proplist()) ->
    {ok, cancel_participant_authentication_response(), tuple()} |
    {error, any()} |
    {error, cancel_participant_authentication_errors(), tuple()}.
cancel_participant_authentication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/cancel-authentication"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows you to confirm that the attachment has been uploaded using the
%% pre-signed URL
%% provided in StartAttachmentUpload API.
%%
%% A conflict exception is thrown when an attachment
%% with that identifier is already being uploaded.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec complete_attachment_upload(aws_client:aws_client(), complete_attachment_upload_request()) ->
    {ok, complete_attachment_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_attachment_upload_errors(), tuple()}.
complete_attachment_upload(Client, Input) ->
    complete_attachment_upload(Client, Input, []).

-spec complete_attachment_upload(aws_client:aws_client(), complete_attachment_upload_request(), proplists:proplist()) ->
    {ok, complete_attachment_upload_response(), tuple()} |
    {error, any()} |
    {error, complete_attachment_upload_errors(), tuple()}.
complete_attachment_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/complete-attachment-upload"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the participant's connection.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ParticipantToken' is used for invoking this API instead of
%% `ConnectionToken'.
%%
%% The participant token is valid for the lifetime of the participant – until
%% they are
%% part of a contact.
%%
%% The response URL for `WEBSOCKET' Type has a connect expiry timeout of
%% 100s.
%% Clients must manually connect to the returned websocket URL and subscribe
%% to the desired
%% topic.
%%
%% For chat, you need to publish the following on the established websocket
%% connection:
%%
%% `{&quot;topic&quot;:&quot;aws/subscribe&quot;,&quot;content&quot;:{&quot;topics&quot;:[&quot;aws/chat&quot;]}}'
%%
%% Upon websocket URL expiry, as specified in the response ConnectionExpiry
%% parameter,
%% clients need to call this API again to obtain a new websocket URL and
%% perform the same
%% steps as before.
%%
%% Message streaming support: This API can also be used
%% together with the StartContactStreaming:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
%% API to create a participant connection for chat
%% contacts that are not using a websocket. For more information about
%% message streaming,
%% Enable real-time chat
%% message streaming:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
%% in the Amazon Connect Administrator
%% Guide.
%%
%% Feature specifications: For information about feature
%% specifications, such as the allowed number of open websocket connections
%% per
%% participant, see Feature specifications:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
%% in the Amazon Connect Administrator
%% Guide.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec create_participant_connection(aws_client:aws_client(), create_participant_connection_request()) ->
    {ok, create_participant_connection_response(), tuple()} |
    {error, any()} |
    {error, create_participant_connection_errors(), tuple()}.
create_participant_connection(Client, Input) ->
    create_participant_connection(Client, Input, []).

-spec create_participant_connection(aws_client:aws_client(), create_participant_connection_request(), proplists:proplist()) ->
    {ok, create_participant_connection_response(), tuple()} |
    {error, any()} |
    {error, create_participant_connection_errors(), tuple()}.
create_participant_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/connection"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ParticipantToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the view for the specified view token.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, ViewToken, ConnectionToken)
  when is_map(Client) ->
    describe_view(Client, ViewToken, ConnectionToken, #{}, #{}).

-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap, []).

-spec describe_view(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_view_response(), tuple()} |
    {error, any()} |
    {error, describe_view_errors(), tuple()}.
describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/participant/views/", aws_util:encode_uri(ViewToken), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"X-Amz-Bearer">>, ConnectionToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disconnects a participant.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec disconnect_participant(aws_client:aws_client(), disconnect_participant_request()) ->
    {ok, disconnect_participant_response(), tuple()} |
    {error, any()} |
    {error, disconnect_participant_errors(), tuple()}.
disconnect_participant(Client, Input) ->
    disconnect_participant(Client, Input, []).

-spec disconnect_participant(aws_client:aws_client(), disconnect_participant_request(), proplists:proplist()) ->
    {ok, disconnect_participant_response(), tuple()} |
    {error, any()} |
    {error, disconnect_participant_errors(), tuple()}.
disconnect_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/disconnect"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides a pre-signed URL for download of a completed attachment.
%%
%% This is an
%% asynchronous API for use with active contacts.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec get_attachment(aws_client:aws_client(), get_attachment_request()) ->
    {ok, get_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_attachment_errors(), tuple()}.
get_attachment(Client, Input) ->
    get_attachment(Client, Input, []).

-spec get_attachment(aws_client:aws_client(), get_attachment_request(), proplists:proplist()) ->
    {ok, get_attachment_response(), tuple()} |
    {error, any()} |
    {error, get_attachment_errors(), tuple()}.
get_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/attachment"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the AuthenticationUrl for the current authentication
%% session for the
%% AuthenticateCustomer flow block.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% This API can only be called within one minute of receiving the
%% authenticationInitiated event.
%%
%% The current supported channel is chat. This API is not supported for Apple
%% Messages for Business, WhatsApp, or SMS chats.
-spec get_authentication_url(aws_client:aws_client(), get_authentication_url_request()) ->
    {ok, get_authentication_url_response(), tuple()} |
    {error, any()} |
    {error, get_authentication_url_errors(), tuple()}.
get_authentication_url(Client, Input) ->
    get_authentication_url(Client, Input, []).

-spec get_authentication_url(aws_client:aws_client(), get_authentication_url_request(), proplists:proplist()) ->
    {ok, get_authentication_url_response(), tuple()} |
    {error, any()} |
    {error, get_authentication_url_errors(), tuple()}.
get_authentication_url(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/authentication-url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a transcript of the session, including details about any
%% attachments.
%%
%% For
%% information about accessing past chat contact transcripts for a persistent
%% chat, see
%% Enable persistent chat:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% If you have a process that consumes events in the transcript of an chat
%% that has
%% ended, note that chat transcripts contain the following event content
%% types if the event
%% has occurred during the chat session:
%%
%% `application/vnd.amazonaws.connect.event.participant.left'
%%
%% `application/vnd.amazonaws.connect.event.participant.joined'
%%
%% `application/vnd.amazonaws.connect.event.chat.ended'
%%
%% `application/vnd.amazonaws.connect.event.transfer.succeeded'
%%
%% `application/vnd.amazonaws.connect.event.transfer.failed'
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec get_transcript(aws_client:aws_client(), get_transcript_request()) ->
    {ok, get_transcript_response(), tuple()} |
    {error, any()} |
    {error, get_transcript_errors(), tuple()}.
get_transcript(Client, Input) ->
    get_transcript(Client, Input, []).

-spec get_transcript(aws_client:aws_client(), get_transcript_request(), proplists:proplist()) ->
    {ok, get_transcript_response(), tuple()} |
    {error, any()} |
    {error, get_transcript_errors(), tuple()}.
get_transcript(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/transcript"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% The `application/vnd.amazonaws.connect.event.connection.acknowledged'
%% ContentType will no longer be supported starting December 31, 2024.
%%
%% This event has
%% been migrated to the CreateParticipantConnection:
%% https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
%% API using the
%% `ConnectParticipant' field.
%%
%% Sends an event. Message receipts are not supported when there are more
%% than two active
%% participants in the chat. Using the SendEvent API for message receipts
%% when a supervisor
%% is barged-in will result in a conflict exception.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
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
    Path = ["/participant/event"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a message.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec send_message(aws_client:aws_client(), send_message_request()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, Input) ->
    send_message(Client, Input, []).

-spec send_message(aws_client:aws_client(), send_message_request(), proplists:proplist()) ->
    {ok, send_message_response(), tuple()} |
    {error, any()} |
    {error, send_message_errors(), tuple()}.
send_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/message"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides a pre-signed Amazon S3 URL in response for uploading the
%% file directly to
%% S3.
%%
%% For security recommendations, see Amazon Connect Chat security best
%% practices:
%% https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
-spec start_attachment_upload(aws_client:aws_client(), start_attachment_upload_request()) ->
    {ok, start_attachment_upload_response(), tuple()} |
    {error, any()} |
    {error, start_attachment_upload_errors(), tuple()}.
start_attachment_upload(Client, Input) ->
    start_attachment_upload(Client, Input, []).

-spec start_attachment_upload(aws_client:aws_client(), start_attachment_upload_request(), proplists:proplist()) ->
    {ok, start_attachment_upload_response(), tuple()} |
    {error, any()} |
    {error, start_attachment_upload_errors(), tuple()}.
start_attachment_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/start-attachment-upload"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
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
    Client1 = Client#{service => <<"execute-api">>},
    Host = build_host(<<"participant.connect">>, Client1),
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
