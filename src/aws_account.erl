%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Operations for Amazon Web Services Account Management
-module(aws_account).

-export([delete_alternate_contact/2,
         delete_alternate_contact/3,
         disable_region/2,
         disable_region/3,
         enable_region/2,
         enable_region/3,
         get_alternate_contact/2,
         get_alternate_contact/3,
         get_contact_information/2,
         get_contact_information/3,
         get_region_opt_status/2,
         get_region_opt_status/3,
         list_regions/2,
         list_regions/3,
         put_alternate_contact/2,
         put_alternate_contact/3,
         put_contact_information/2,
         put_contact_information/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified alternate contact from an Amazon Web Services
%% account.
%%
%% For complete details about how to use the alternate contact operations,
%% see Access or updating the alternate contacts:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management:
%% https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html.
delete_alternate_contact(Client, Input) ->
    delete_alternate_contact(Client, Input, []).
delete_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteAlternateContact"],
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

%% @doc Disables (opts-out) a particular Region for an account.
disable_region(Client, Input) ->
    disable_region(Client, Input, []).
disable_region(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disableRegion"],
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

%% @doc Enables (opts-in) a particular Region for an account.
enable_region(Client, Input) ->
    enable_region(Client, Input, []).
enable_region(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enableRegion"],
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

%% @doc Retrieves the specified alternate contact attached to an Amazon Web
%% Services account.
%%
%% For complete details about how to use the alternate contact operations,
%% see Access or updating the alternate contacts:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management:
%% https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html.
get_alternate_contact(Client, Input) ->
    get_alternate_contact(Client, Input, []).
get_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getAlternateContact"],
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

%% @doc Retrieves the primary contact information of an Amazon Web Services
%% account.
%%
%% For complete details about how to use the primary contact operations, see
%% Update the primary and alternate contact information:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html.
get_contact_information(Client, Input) ->
    get_contact_information(Client, Input, []).
get_contact_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getContactInformation"],
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

%% @doc Retrieves the opt-in status of a particular Region.
get_region_opt_status(Client, Input) ->
    get_region_opt_status(Client, Input, []).
get_region_opt_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getRegionOptStatus"],
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

%% @doc Lists all the Regions for a given account and their respective opt-in
%% statuses.
%%
%% Optionally, this list can be filtered by the
%% `region-opt-status-contains' parameter.
list_regions(Client, Input) ->
    list_regions(Client, Input, []).
list_regions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRegions"],
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

%% @doc Modifies the specified alternate contact attached to an Amazon Web
%% Services account.
%%
%% For complete details about how to use the alternate contact operations,
%% see Access or updating the alternate contacts:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management:
%% https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html.
put_alternate_contact(Client, Input) ->
    put_alternate_contact(Client, Input, []).
put_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putAlternateContact"],
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

%% @doc Updates the primary contact information of an Amazon Web Services
%% account.
%%
%% For complete details about how to use the primary contact operations, see
%% Update the primary and alternate contact information:
%% https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html.
put_contact_information(Client, Input) ->
    put_contact_information(Client, Input, []).
put_contact_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putContactInformation"],
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
    Client1 = Client#{service => <<"account">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"account">>, Client1),
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
