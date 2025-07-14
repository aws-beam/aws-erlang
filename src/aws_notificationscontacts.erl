%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS User Notifications Contacts is a service that allows you to
%% create and manage email contacts for AWS User Notifications.
%%
%% The AWS User Notifications Contacts API Reference provides descriptions,
%% API request parameters, and the JSON response for all email contact
%% related API actions.
-module(aws_notificationscontacts).

-export([activate_email_contact/4,
         activate_email_contact/5,
         create_email_contact/2,
         create_email_contact/3,
         delete_email_contact/3,
         delete_email_contact/4,
         get_email_contact/2,
         get_email_contact/4,
         get_email_contact/5,
         list_email_contacts/1,
         list_email_contacts/3,
         list_email_contacts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         send_activation_code/3,
         send_activation_code/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% activate_email_contact_request() :: #{}
-type activate_email_contact_request() :: #{}.

%% Example:
%% activate_email_contact_response() :: #{}
-type activate_email_contact_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_email_contact_request() :: #{
%%   <<"emailAddress">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_email_contact_request() :: #{binary() => any()}.


%% Example:
%% create_email_contact_response() :: #{
%%   <<"arn">> => string()
%% }
-type create_email_contact_response() :: #{binary() => any()}.

%% Example:
%% delete_email_contact_request() :: #{}
-type delete_email_contact_request() :: #{}.

%% Example:
%% delete_email_contact_response() :: #{}
-type delete_email_contact_response() :: #{}.


%% Example:
%% email_contact() :: #{
%%   <<"address">> => string(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => non_neg_integer()
%% }
-type email_contact() :: #{binary() => any()}.

%% Example:
%% get_email_contact_request() :: #{}
-type get_email_contact_request() :: #{}.


%% Example:
%% get_email_contact_response() :: #{
%%   <<"emailContact">> => email_contact()
%% }
-type get_email_contact_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_email_contacts_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_email_contacts_request() :: #{binary() => any()}.


%% Example:
%% list_email_contacts_response() :: #{
%%   <<"emailContacts">> => list(email_contact()),
%%   <<"nextToken">> => [string()]
%% }
-type list_email_contacts_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% send_activation_code_request() :: #{}
-type send_activation_code_request() :: #{}.

%% Example:
%% send_activation_code_response() :: #{}
-type send_activation_code_response() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type activate_email_contact_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_email_contact_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_email_contact_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_email_contact_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_email_contacts_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type send_activation_code_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates an email contact using an activation code.
%%
%% This code is in the activation email sent to the email address associated
%% with this email contact.
-spec activate_email_contact(aws_client:aws_client(), binary() | list(), binary() | list(), activate_email_contact_request()) ->
    {ok, activate_email_contact_response(), tuple()} |
    {error, any()} |
    {error, activate_email_contact_errors(), tuple()}.
activate_email_contact(Client, Arn, Code, Input) ->
    activate_email_contact(Client, Arn, Code, Input, []).

-spec activate_email_contact(aws_client:aws_client(), binary() | list(), binary() | list(), activate_email_contact_request(), proplists:proplist()) ->
    {ok, activate_email_contact_response(), tuple()} |
    {error, any()} |
    {error, activate_email_contact_errors(), tuple()}.
activate_email_contact(Client, Arn, Code, Input0, Options0) ->
    Method = put,
    Path = ["/emailcontacts/", aws_util:encode_uri(Arn), "/activate/", aws_util:encode_uri(Code), ""],
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

%% @doc Creates an email contact for the provided email address.
-spec create_email_contact(aws_client:aws_client(), create_email_contact_request()) ->
    {ok, create_email_contact_response(), tuple()} |
    {error, any()} |
    {error, create_email_contact_errors(), tuple()}.
create_email_contact(Client, Input) ->
    create_email_contact(Client, Input, []).

-spec create_email_contact(aws_client:aws_client(), create_email_contact_request(), proplists:proplist()) ->
    {ok, create_email_contact_response(), tuple()} |
    {error, any()} |
    {error, create_email_contact_errors(), tuple()}.
create_email_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-09-19/emailcontacts"],
    SuccessStatusCode = 201,
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

%% @doc Deletes an email contact.
%%
%% Deleting an email contact removes it from all associated notification
%% configurations.
-spec delete_email_contact(aws_client:aws_client(), binary() | list(), delete_email_contact_request()) ->
    {ok, delete_email_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_email_contact_errors(), tuple()}.
delete_email_contact(Client, Arn, Input) ->
    delete_email_contact(Client, Arn, Input, []).

-spec delete_email_contact(aws_client:aws_client(), binary() | list(), delete_email_contact_request(), proplists:proplist()) ->
    {ok, delete_email_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_email_contact_errors(), tuple()}.
delete_email_contact(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/emailcontacts/", aws_util:encode_uri(Arn), ""],
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

%% @doc Returns an email contact.
-spec get_email_contact(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_contact_response(), tuple()} |
    {error, any()} |
    {error, get_email_contact_errors(), tuple()}.
get_email_contact(Client, Arn)
  when is_map(Client) ->
    get_email_contact(Client, Arn, #{}, #{}).

-spec get_email_contact(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_contact_response(), tuple()} |
    {error, any()} |
    {error, get_email_contact_errors(), tuple()}.
get_email_contact(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_contact(Client, Arn, QueryMap, HeadersMap, []).

-spec get_email_contact(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_contact_response(), tuple()} |
    {error, any()} |
    {error, get_email_contact_errors(), tuple()}.
get_email_contact(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/emailcontacts/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all email contacts created under the Account.
-spec list_email_contacts(aws_client:aws_client()) ->
    {ok, list_email_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_email_contacts_errors(), tuple()}.
list_email_contacts(Client)
  when is_map(Client) ->
    list_email_contacts(Client, #{}, #{}).

-spec list_email_contacts(aws_client:aws_client(), map(), map()) ->
    {ok, list_email_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_email_contacts_errors(), tuple()}.
list_email_contacts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_contacts(Client, QueryMap, HeadersMap, []).

-spec list_email_contacts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_email_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_email_contacts_errors(), tuple()}.
list_email_contacts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/emailcontacts"],
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

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The resource can be a user, server, or role.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends an activation email to the email address associated with the
%% specified email contact.
%%
%% It might take a few minutes for the activation email to arrive. If it
%% doesn't arrive, check in your spam folder or try sending another
%% activation email.
-spec send_activation_code(aws_client:aws_client(), binary() | list(), send_activation_code_request()) ->
    {ok, send_activation_code_response(), tuple()} |
    {error, any()} |
    {error, send_activation_code_errors(), tuple()}.
send_activation_code(Client, Arn, Input) ->
    send_activation_code(Client, Arn, Input, []).

-spec send_activation_code(aws_client:aws_client(), binary() | list(), send_activation_code_request(), proplists:proplist()) ->
    {ok, send_activation_code_response(), tuple()} |
    {error, any()} |
    {error, send_activation_code_errors(), tuple()}.
send_activation_code(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/2022-10-31/emailcontacts/", aws_util:encode_uri(Arn), "/activate/send"],
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

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN).
%%
%% Taggable resources in AWS User Notifications Contacts include email
%% contacts.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Detaches a key-value pair from a resource, as identified by its
%% Amazon Resource Name (ARN).
%%
%% Taggable resources in AWS User Notifications Contacts include email
%% contacts..
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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
    Client1 = Client#{service => <<"notifications-contacts">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"notifications-contacts">>, Client1),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
