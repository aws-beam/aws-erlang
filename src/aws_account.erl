%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Operations for Amazon Web Services Account Management
-module(aws_account).

-export([delete_alternate_contact/2,
         delete_alternate_contact/3,
         get_alternate_contact/2,
         get_alternate_contact/3,
         get_contact_information/2,
         get_contact_information/3,
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
%% see Access or updating the alternate contacts.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management.
delete_alternate_contact(Client, Input) ->
    delete_alternate_contact(Client, Input, []).
delete_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteAlternateContact"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% see Access or updating the alternate contacts.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management.
get_alternate_contact(Client, Input) ->
    get_alternate_contact(Client, Input, []).
get_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getAlternateContact"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% Update the primary and alternate contact information.
get_contact_information(Client, Input) ->
    get_contact_information(Client, Input, []).
get_contact_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getContactInformation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% see Access or updating the alternate contacts.
%%
%% Before you can update the alternate contact information for an Amazon Web
%% Services account that is managed by Organizations, you must first enable
%% integration between Amazon Web Services Account Management and
%% Organizations. For more information, see Enabling trusted access for
%% Amazon Web Services Account Management.
put_alternate_contact(Client, Input) ->
    put_alternate_contact(Client, Input, []).
put_alternate_contact(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putAlternateContact"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
%% Update the primary and alternate contact information.
put_contact_information(Client, Input) ->
    put_contact_information(Client, Input, []).
put_contact_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putContactInformation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
