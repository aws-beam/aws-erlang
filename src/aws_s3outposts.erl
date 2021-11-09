%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon S3 on Outposts provides access to S3 on Outposts operations.
-module(aws_s3outposts).

-export([create_endpoint/2,
         create_endpoint/3,
         delete_endpoint/2,
         delete_endpoint/3,
         list_endpoints/1,
         list_endpoints/3,
         list_endpoints/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Amazon S3 on Outposts Access Points simplify managing data access at
%% scale for shared datasets in S3 on Outposts.
%%
%% S3 on Outposts uses endpoints to connect to Outposts buckets so that you
%% can perform actions within your virtual private cloud (VPC). For more
%% information, see Accessing S3 on Outposts using VPC only access points.
%%
%% This action creates an endpoint and associates it with the specified
%% Outposts.
%%
%% It can take up to 5 minutes for this action to complete.
%%
%% Related actions include:
%%
%% <ul> <li> DeleteEndpoint
%%
%% </li> <li> ListEndpoints
%%
%% </li> </ul>
create_endpoint(Client, Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/S3Outposts/CreateEndpoint"],
    SuccessStatusCode = undefined,
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

%% @doc Amazon S3 on Outposts Access Points simplify managing data access at
%% scale for shared datasets in S3 on Outposts.
%%
%% S3 on Outposts uses endpoints to connect to Outposts buckets so that you
%% can perform actions within your virtual private cloud (VPC). For more
%% information, see Accessing S3 on Outposts using VPC only access points.
%%
%% This action deletes an endpoint.
%%
%% It can take up to 5 minutes for this action to complete.
%%
%% Related actions include:
%%
%% <ul> <li> CreateEndpoint
%%
%% </li> <li> ListEndpoints
%%
%% </li> </ul>
delete_endpoint(Client, Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/S3Outposts/DeleteEndpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"endpointId">>, <<"EndpointId">>},
                     {<<"outpostId">>, <<"OutpostId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Amazon S3 on Outposts Access Points simplify managing data access at
%% scale for shared datasets in S3 on Outposts.
%%
%% S3 on Outposts uses endpoints to connect to Outposts buckets so that you
%% can perform actions within your virtual private cloud (VPC). For more
%% information, see Accessing S3 on Outposts using VPC only access points.
%%
%% This action lists endpoints associated with the Outposts.
%%
%% Related actions include:
%%
%% <ul> <li> CreateEndpoint
%%
%% </li> <li> DeleteEndpoint
%%
%% </li> </ul>
list_endpoints(Client)
  when is_map(Client) ->
    list_endpoints(Client, #{}, #{}).

list_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_endpoints(Client, QueryMap, HeadersMap, []).

list_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/S3Outposts/ListEndpoints"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"s3-outposts">>},
    Host = build_host(<<"s3-outposts">>, Client1),
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
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
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
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
