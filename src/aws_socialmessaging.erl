%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon Web Services End User Messaging Social, also referred to as Social
%% messaging, is a messaging service that enables
%% application developers to incorporate WhatsApp into their existing
%% workflows.
%%
%% The Amazon Web Services End User Messaging Social API provides information
%% about the
%% Amazon Web Services End User Messaging Social API resources, including
%% supported HTTP methods, parameters, and schemas.
%%
%% The Amazon Web Services End User Messaging Social API provides
%% programmatic access to options that are unique to the WhatsApp Business
%% Platform.
%%
%% If you're new to the Amazon Web Services End User Messaging Social
%% API, it's also helpful to review What is
%% Amazon Web Services End User Messaging Social:
%% https://docs.aws.amazon.com/sms-voice/latest/userguide/what-is-service.html
%% in the Amazon Web Services End User Messaging Social User Guide. The
%% Amazon Web Services End User Messaging Social User Guide provides
%% tutorials, code samples, and procedures that demonstrate how to use
%% Amazon Web Services End User Messaging Social API features
%% programmatically and how to integrate functionality into applications.
%% The guide also provides key information, such as integration with other
%% Amazon Web Services
%% services, and the quotas that apply to use of the service.
%%
%% Regional availability
%%
%% The Amazon Web Services End User Messaging Social API is available across
%% several Amazon Web Services Regions and it provides a dedicated endpoint
%% for each of these Regions. For a list of
%% all the Regions and endpoints where the API is currently available, see
%% Amazon Web Services Service Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region
%% and Amazon Web Services End User Messaging endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html in
%% the Amazon Web Services General Reference. To learn more about Amazon Web
%% Services Regions, see
%% Managing
%% Amazon Web Services Regions:
%% https://docs.aws.amazon.com/general/latest/gr/rande-manage.html in the
%% Amazon Web Services General
%% Reference.
%%
%% In each Region, Amazon Web Services maintains multiple Availability Zones.
%% These
%% Availability Zones are physically isolated from each other, but are united
%% by private,
%% low-latency, high-throughput, and highly redundant network connections.
%% These Availability
%% Zones enable us to provide very high levels of availability and
%% redundancy, while also
%% minimizing latency. To learn more about the number of Availability Zones
%% that are available
%% in each Region, see Amazon Web Services Global Infrastructure.:
%% https://aws.amazon.com/about-aws/global-infrastructure/
-module(aws_socialmessaging).

-export([associate_whats_app_business_account/2,
         associate_whats_app_business_account/3,
         delete_whats_app_message_media/2,
         delete_whats_app_message_media/3,
         disassociate_whats_app_business_account/2,
         disassociate_whats_app_business_account/3,
         get_linked_whats_app_business_account/2,
         get_linked_whats_app_business_account/4,
         get_linked_whats_app_business_account/5,
         get_linked_whats_app_business_account_phone_number/2,
         get_linked_whats_app_business_account_phone_number/4,
         get_linked_whats_app_business_account_phone_number/5,
         get_whats_app_message_media/2,
         get_whats_app_message_media/3,
         list_linked_whats_app_business_accounts/1,
         list_linked_whats_app_business_accounts/3,
         list_linked_whats_app_business_accounts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         post_whats_app_message_media/2,
         post_whats_app_message_media/3,
         put_whats_app_business_account_event_destinations/2,
         put_whats_app_business_account_event_destinations/3,
         send_whats_app_message/2,
         send_whats_app_message/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_linked_whats_app_business_account_output() :: #{
%%   <<"account">> => linked_whats_app_business_account()
%% }
-type get_linked_whats_app_business_account_output() :: #{binary() => any()}.


%% Example:
%% send_whats_app_message_output() :: #{
%%   <<"messageId">> => [string()]
%% }
-type send_whats_app_message_output() :: #{binary() => any()}.


%% Example:
%% associate_whats_app_business_account_output() :: #{
%%   <<"signupCallbackResult">> => whats_app_signup_callback_result(),
%%   <<"statusCode">> => [integer()]
%% }
-type associate_whats_app_business_account_output() :: #{binary() => any()}.


%% Example:
%% get_whats_app_message_media_output() :: #{
%%   <<"fileSize">> => [float()],
%%   <<"mimeType">> => [string()]
%% }
-type get_whats_app_message_media_output() :: #{binary() => any()}.


%% Example:
%% dependency_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependency_exception() :: #{binary() => any()}.


%% Example:
%% whats_app_signup_callback_result() :: #{
%%   <<"associateInProgressToken">> => string(),
%%   <<"linkedAccountsWithIncompleteSetup">> => map()
%% }
-type whats_app_signup_callback_result() :: #{binary() => any()}.


%% Example:
%% get_linked_whats_app_business_account_phone_number_output() :: #{
%%   <<"linkedWhatsAppBusinessAccountId">> => string(),
%%   <<"phoneNumber">> => whats_app_phone_number_detail()
%% }
-type get_linked_whats_app_business_account_phone_number_output() :: #{binary() => any()}.


%% Example:
%% access_denied_by_meta_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_by_meta_exception() :: #{binary() => any()}.


%% Example:
%% delete_whats_app_message_media_input() :: #{
%%   <<"mediaId">> := string(),
%%   <<"originationPhoneNumberId">> := string()
%% }
-type delete_whats_app_message_media_input() :: #{binary() => any()}.


%% Example:
%% put_whats_app_business_account_event_destinations_input() :: #{
%%   <<"eventDestinations">> := list(whats_app_business_account_event_destination()()),
%%   <<"id">> := string()
%% }
-type put_whats_app_business_account_event_destinations_input() :: #{binary() => any()}.


%% Example:
%% linked_whats_app_business_account_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"eventDestinations">> => list(whats_app_business_account_event_destination()()),
%%   <<"id">> => string(),
%%   <<"linkDate">> => non_neg_integer(),
%%   <<"registrationStatus">> => list(any()),
%%   <<"wabaId">> => string(),
%%   <<"wabaName">> => string()
%% }
-type linked_whats_app_business_account_summary() :: #{binary() => any()}.


%% Example:
%% list_linked_whats_app_business_accounts_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_linked_whats_app_business_accounts_input() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"statusCode">> => [integer()],
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% associate_whats_app_business_account_input() :: #{
%%   <<"setupFinalization">> => whats_app_setup_finalization(),
%%   <<"signupCallback">> => whats_app_signup_callback()
%% }
-type associate_whats_app_business_account_input() :: #{binary() => any()}.


%% Example:
%% s3_file() :: #{
%%   <<"bucketName">> => [string()],
%%   <<"key">> => [string()]
%% }
-type s3_file() :: #{binary() => any()}.


%% Example:
%% disassociate_whats_app_business_account_input() :: #{
%%   <<"id">> := string()
%% }
-type disassociate_whats_app_business_account_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_linked_whats_app_business_account_input() :: #{
%%   <<"id">> := string()
%% }
-type get_linked_whats_app_business_account_input() :: #{binary() => any()}.


%% Example:
%% linked_whats_app_business_account() :: #{
%%   <<"arn">> => string(),
%%   <<"eventDestinations">> => list(whats_app_business_account_event_destination()()),
%%   <<"id">> => string(),
%%   <<"linkDate">> => non_neg_integer(),
%%   <<"phoneNumbers">> => list(whats_app_phone_number_summary()()),
%%   <<"registrationStatus">> => list(any()),
%%   <<"wabaId">> => string(),
%%   <<"wabaName">> => string()
%% }
-type linked_whats_app_business_account() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [string()]
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% waba_phone_number_setup_finalization() :: #{
%%   <<"dataLocalizationRegion">> => string(),
%%   <<"id">> => string(),
%%   <<"tags">> => list(tag()()),
%%   <<"twoFactorPin">> => string()
%% }
-type waba_phone_number_setup_finalization() :: #{binary() => any()}.


%% Example:
%% throttled_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttled_request_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameters_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameters_exception() :: #{binary() => any()}.


%% Example:
%% send_whats_app_message_input() :: #{
%%   <<"message">> := binary(),
%%   <<"metaApiVersion">> := [string()],
%%   <<"originationPhoneNumberId">> := string()
%% }
-type send_whats_app_message_input() :: #{binary() => any()}.


%% Example:
%% whats_app_setup_finalization() :: #{
%%   <<"associateInProgressToken">> => string(),
%%   <<"phoneNumberParent">> => string(),
%%   <<"phoneNumbers">> => list(waba_phone_number_setup_finalization()()),
%%   <<"waba">> => waba_setup_finalization()
%% }
-type whats_app_setup_finalization() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% post_whats_app_message_media_output() :: #{
%%   <<"mediaId">> => string()
%% }
-type post_whats_app_message_media_output() :: #{binary() => any()}.

%% Example:
%% put_whats_app_business_account_event_destinations_output() :: #{}
-type put_whats_app_business_account_event_destinations_output() :: #{}.


%% Example:
%% get_whats_app_message_media_input() :: #{
%%   <<"destinationS3File">> => s3_file(),
%%   <<"destinationS3PresignedUrl">> => s3_presigned_url(),
%%   <<"mediaId">> := string(),
%%   <<"metadataOnly">> => [boolean()],
%%   <<"originationPhoneNumberId">> := string()
%% }
-type get_whats_app_message_media_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_output() :: #{
%%   <<"statusCode">> => [integer()]
%% }
-type tag_resource_output() :: #{binary() => any()}.


%% Example:
%% delete_whats_app_message_media_output() :: #{
%%   <<"success">> => [boolean()]
%% }
-type delete_whats_app_message_media_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% disassociate_whats_app_business_account_output() :: #{}
-type disassociate_whats_app_business_account_output() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_output() :: #{
%%   <<"statusCode">> => [integer()]
%% }
-type untag_resource_output() :: #{binary() => any()}.


%% Example:
%% linked_whats_app_business_account_id_meta_data() :: #{
%%   <<"accountName">> => string(),
%%   <<"registrationStatus">> => list(any()),
%%   <<"unregisteredWhatsAppPhoneNumbers">> => list(whats_app_phone_number_detail()()),
%%   <<"wabaId">> => string()
%% }
-type linked_whats_app_business_account_id_meta_data() :: #{binary() => any()}.


%% Example:
%% whats_app_phone_number_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"displayPhoneNumber">> => string(),
%%   <<"displayPhoneNumberName">> => string(),
%%   <<"metaPhoneNumberId">> => string(),
%%   <<"phoneNumber">> => string(),
%%   <<"phoneNumberId">> => string(),
%%   <<"qualityRating">> => string()
%% }
-type whats_app_phone_number_detail() :: #{binary() => any()}.


%% Example:
%% whats_app_phone_number_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"displayPhoneNumber">> => string(),
%%   <<"displayPhoneNumberName">> => string(),
%%   <<"metaPhoneNumberId">> => string(),
%%   <<"phoneNumber">> => string(),
%%   <<"phoneNumberId">> => string(),
%%   <<"qualityRating">> => string()
%% }
-type whats_app_phone_number_summary() :: #{binary() => any()}.


%% Example:
%% whats_app_business_account_event_destination() :: #{
%%   <<"eventDestinationArn">> => string(),
%%   <<"roleArn">> => string()
%% }
-type whats_app_business_account_event_destination() :: #{binary() => any()}.


%% Example:
%% whats_app_signup_callback() :: #{
%%   <<"accessToken">> => [string()]
%% }
-type whats_app_signup_callback() :: #{binary() => any()}.


%% Example:
%% post_whats_app_message_media_input() :: #{
%%   <<"originationPhoneNumberId">> := string(),
%%   <<"sourceS3File">> => s3_file(),
%%   <<"sourceS3PresignedUrl">> => s3_presigned_url()
%% }
-type post_whats_app_message_media_input() :: #{binary() => any()}.


%% Example:
%% list_linked_whats_app_business_accounts_output() :: #{
%%   <<"linkedAccounts">> => list(linked_whats_app_business_account_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_linked_whats_app_business_accounts_output() :: #{binary() => any()}.


%% Example:
%% s3_presigned_url() :: #{
%%   <<"headers">> => map(),
%%   <<"url">> => [string()]
%% }
-type s3_presigned_url() :: #{binary() => any()}.


%% Example:
%% get_linked_whats_app_business_account_phone_number_input() :: #{
%%   <<"id">> := string()
%% }
-type get_linked_whats_app_business_account_phone_number_input() :: #{binary() => any()}.


%% Example:
%% waba_setup_finalization() :: #{
%%   <<"eventDestinations">> => list(whats_app_business_account_event_destination()()),
%%   <<"id">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type waba_setup_finalization() :: #{binary() => any()}.

-type associate_whats_app_business_account_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    dependency_exception().

-type delete_whats_app_message_media_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    access_denied_by_meta_exception() | 
    dependency_exception().

-type disassociate_whats_app_business_account_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    dependency_exception().

-type get_linked_whats_app_business_account_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    dependency_exception().

-type get_linked_whats_app_business_account_phone_number_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    dependency_exception().

-type get_whats_app_message_media_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    access_denied_by_meta_exception() | 
    dependency_exception().

-type list_linked_whats_app_business_accounts_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_tags_for_resource_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    internal_service_exception().

-type post_whats_app_message_media_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    access_denied_by_meta_exception() | 
    dependency_exception().

-type put_whats_app_business_account_event_destinations_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    internal_service_exception().

-type send_whats_app_message_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    dependency_exception().

-type tag_resource_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    internal_service_exception().

-type untag_resource_errors() ::
    invalid_parameters_exception() | 
    throttled_request_exception() | 
    internal_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This is only used through the Amazon Web Services console during
%% sign-up to associate your WhatsApp Business Account to your Amazon Web
%% Services account.
-spec associate_whats_app_business_account(aws_client:aws_client(), associate_whats_app_business_account_input()) ->
    {ok, associate_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, associate_whats_app_business_account_errors(), tuple()}.
associate_whats_app_business_account(Client, Input) ->
    associate_whats_app_business_account(Client, Input, []).

-spec associate_whats_app_business_account(aws_client:aws_client(), associate_whats_app_business_account_input(), proplists:proplist()) ->
    {ok, associate_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, associate_whats_app_business_account_errors(), tuple()}.
associate_whats_app_business_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/whatsapp/signup"],
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

%% @doc Delete a media object from the WhatsApp service.
%%
%% If the object is still in an Amazon S3 bucket you should delete it from
%% there too.
-spec delete_whats_app_message_media(aws_client:aws_client(), delete_whats_app_message_media_input()) ->
    {ok, delete_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, delete_whats_app_message_media_errors(), tuple()}.
delete_whats_app_message_media(Client, Input) ->
    delete_whats_app_message_media(Client, Input, []).

-spec delete_whats_app_message_media(aws_client:aws_client(), delete_whats_app_message_media_input(), proplists:proplist()) ->
    {ok, delete_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, delete_whats_app_message_media_errors(), tuple()}.
delete_whats_app_message_media(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/whatsapp/media"],
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
                     {<<"mediaId">>, <<"mediaId">>},
                     {<<"originationPhoneNumberId">>, <<"originationPhoneNumberId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociate a WhatsApp Business Account (WABA) from your Amazon Web
%% Services account.
-spec disassociate_whats_app_business_account(aws_client:aws_client(), disassociate_whats_app_business_account_input()) ->
    {ok, disassociate_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, disassociate_whats_app_business_account_errors(), tuple()}.
disassociate_whats_app_business_account(Client, Input) ->
    disassociate_whats_app_business_account(Client, Input, []).

-spec disassociate_whats_app_business_account(aws_client:aws_client(), disassociate_whats_app_business_account_input(), proplists:proplist()) ->
    {ok, disassociate_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, disassociate_whats_app_business_account_errors(), tuple()}.
disassociate_whats_app_business_account(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/whatsapp/waba/disassociate"],
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
                     {<<"id">>, <<"id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get the details of your linked WhatsApp Business Account.
-spec get_linked_whats_app_business_account(aws_client:aws_client(), binary() | list()) ->
    {ok, get_linked_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_errors(), tuple()}.
get_linked_whats_app_business_account(Client, Id)
  when is_map(Client) ->
    get_linked_whats_app_business_account(Client, Id, #{}, #{}).

-spec get_linked_whats_app_business_account(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_linked_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_errors(), tuple()}.
get_linked_whats_app_business_account(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_linked_whats_app_business_account(Client, Id, QueryMap, HeadersMap, []).

-spec get_linked_whats_app_business_account(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_linked_whats_app_business_account_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_errors(), tuple()}.
get_linked_whats_app_business_account(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/whatsapp/waba/details"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use your WhatsApp phone number id to get the WABA account id and
%% phone number
%% details.
-spec get_linked_whats_app_business_account_phone_number(aws_client:aws_client(), binary() | list()) ->
    {ok, get_linked_whats_app_business_account_phone_number_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_phone_number_errors(), tuple()}.
get_linked_whats_app_business_account_phone_number(Client, Id)
  when is_map(Client) ->
    get_linked_whats_app_business_account_phone_number(Client, Id, #{}, #{}).

-spec get_linked_whats_app_business_account_phone_number(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_linked_whats_app_business_account_phone_number_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_phone_number_errors(), tuple()}.
get_linked_whats_app_business_account_phone_number(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_linked_whats_app_business_account_phone_number(Client, Id, QueryMap, HeadersMap, []).

-spec get_linked_whats_app_business_account_phone_number(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_linked_whats_app_business_account_phone_number_output(), tuple()} |
    {error, any()} |
    {error, get_linked_whats_app_business_account_phone_number_errors(), tuple()}.
get_linked_whats_app_business_account_phone_number(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/whatsapp/waba/phone/details"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a media file from the WhatsApp service.
%%
%% On successful completion the media file is
%% retrieved from Meta and stored in the specified Amazon S3 bucket. Use
%% either
%% `destinationS3File' or `destinationS3PresignedUrl' for the
%% destination. If both are used then an `InvalidParameterException' is
%% returned.
-spec get_whats_app_message_media(aws_client:aws_client(), get_whats_app_message_media_input()) ->
    {ok, get_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, get_whats_app_message_media_errors(), tuple()}.
get_whats_app_message_media(Client, Input) ->
    get_whats_app_message_media(Client, Input, []).

-spec get_whats_app_message_media(aws_client:aws_client(), get_whats_app_message_media_input(), proplists:proplist()) ->
    {ok, get_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, get_whats_app_message_media_errors(), tuple()}.
get_whats_app_message_media(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/whatsapp/media/get"],
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

%% @doc List all WhatsApp Business Accounts linked to your Amazon Web
%% Services account.
-spec list_linked_whats_app_business_accounts(aws_client:aws_client()) ->
    {ok, list_linked_whats_app_business_accounts_output(), tuple()} |
    {error, any()} |
    {error, list_linked_whats_app_business_accounts_errors(), tuple()}.
list_linked_whats_app_business_accounts(Client)
  when is_map(Client) ->
    list_linked_whats_app_business_accounts(Client, #{}, #{}).

-spec list_linked_whats_app_business_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_linked_whats_app_business_accounts_output(), tuple()} |
    {error, any()} |
    {error, list_linked_whats_app_business_accounts_errors(), tuple()}.
list_linked_whats_app_business_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_linked_whats_app_business_accounts(Client, QueryMap, HeadersMap, []).

-spec list_linked_whats_app_business_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_linked_whats_app_business_accounts_output(), tuple()} |
    {error, any()} |
    {error, list_linked_whats_app_business_accounts_errors(), tuple()}.
list_linked_whats_app_business_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/whatsapp/waba/list"],
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

%% @doc List all tags associated with a resource, such as a phone number or
%% WABA.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Upload a media file to the WhatsApp service.
%%
%% Only the specified
%% `originationPhoneNumberId' has the permissions to send the media file
%% when
%% using SendWhatsAppMessage:
%% https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_SendWhatsAppMessage.html.
%% You must use either `sourceS3File'
%% or `sourceS3PresignedUrl' for the source. If both or neither are
%% specified then an
%% `InvalidParameterException' is returned.
-spec post_whats_app_message_media(aws_client:aws_client(), post_whats_app_message_media_input()) ->
    {ok, post_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, post_whats_app_message_media_errors(), tuple()}.
post_whats_app_message_media(Client, Input) ->
    post_whats_app_message_media(Client, Input, []).

-spec post_whats_app_message_media(aws_client:aws_client(), post_whats_app_message_media_input(), proplists:proplist()) ->
    {ok, post_whats_app_message_media_output(), tuple()} |
    {error, any()} |
    {error, post_whats_app_message_media_errors(), tuple()}.
post_whats_app_message_media(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/whatsapp/media"],
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

%% @doc Add an event destination to log event data from WhatsApp for a
%% WhatsApp Business Account (WABA).
%%
%% A WABA can only have one event destination at a time. All resources
%% associated with the WABA use the same event destination.
-spec put_whats_app_business_account_event_destinations(aws_client:aws_client(), put_whats_app_business_account_event_destinations_input()) ->
    {ok, put_whats_app_business_account_event_destinations_output(), tuple()} |
    {error, any()} |
    {error, put_whats_app_business_account_event_destinations_errors(), tuple()}.
put_whats_app_business_account_event_destinations(Client, Input) ->
    put_whats_app_business_account_event_destinations(Client, Input, []).

-spec put_whats_app_business_account_event_destinations(aws_client:aws_client(), put_whats_app_business_account_event_destinations_input(), proplists:proplist()) ->
    {ok, put_whats_app_business_account_event_destinations_output(), tuple()} |
    {error, any()} |
    {error, put_whats_app_business_account_event_destinations_errors(), tuple()}.
put_whats_app_business_account_event_destinations(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/whatsapp/waba/eventdestinations"],
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

%% @doc Send a WhatsApp message.
%%
%% For examples of sending a message using the Amazon Web Services
%% CLI, see Sending messages:
%% https://docs.aws.amazon.com/social-messaging/latest/userguide/send-message.html
%% in the
%%
%% Amazon Web Services End User Messaging Social User Guide
%% .
-spec send_whats_app_message(aws_client:aws_client(), send_whats_app_message_input()) ->
    {ok, send_whats_app_message_output(), tuple()} |
    {error, any()} |
    {error, send_whats_app_message_errors(), tuple()}.
send_whats_app_message(Client, Input) ->
    send_whats_app_message(Client, Input, []).

-spec send_whats_app_message(aws_client:aws_client(), send_whats_app_message_input(), proplists:proplist()) ->
    {ok, send_whats_app_message_output(), tuple()} |
    {error, any()} |
    {error, send_whats_app_message_errors(), tuple()}.
send_whats_app_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/whatsapp/send"],
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

%% @doc Adds or overwrites only the specified tags for the specified
%% resource.
%%
%% When you specify
%% an existing tag key, the value is overwritten with the new value.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/tag-resource"],
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

%% @doc Removes the specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/untag-resource"],
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
    Client1 = Client#{service => <<"social-messaging">>},
    Host = build_host(<<"social-messaging">>, Client1),
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
