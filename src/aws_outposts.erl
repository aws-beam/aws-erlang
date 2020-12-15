%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Outposts is a fully-managed service that extends AWS
%% infrastructure, APIs, and tools to customer premises.
%%
%% By providing local access to AWS-managed infrastructure, AWS Outposts
%% enables customers to build and run applications on premises using the same
%% programming interfaces as in AWS Regions, while using local compute and
%% storage resources for lower latency and local data processing needs.
-module(aws_outposts).

-export([create_outpost/2,
         create_outpost/3,
         delete_outpost/3,
         delete_outpost/4,
         delete_site/3,
         delete_site/4,
         get_outpost/2,
         get_outpost/3,
         get_outpost_instance_types/4,
         get_outpost_instance_types/5,
         list_outposts/3,
         list_outposts/4,
         list_sites/3,
         list_sites/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Outpost.
create_outpost(Client, Input) ->
    create_outpost(Client, Input, []).
create_outpost(Client, Input0, Options) ->
    Method = post,
    Path = ["/outposts"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Outpost.
delete_outpost(Client, OutpostId, Input) ->
    delete_outpost(Client, OutpostId, Input, []).
delete_outpost(Client, OutpostId, Input0, Options) ->
    Method = delete,
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the site.
delete_site(Client, SiteId, Input) ->
    delete_site(Client, SiteId, Input, []).
delete_site(Client, SiteId, Input0, Options) ->
    Method = delete,
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the specified Outpost.
get_outpost(Client, OutpostId)
  when is_map(Client) ->
    get_outpost(Client, OutpostId, []).
get_outpost(Client, OutpostId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the instance types for the specified Outpost.
get_outpost_instance_types(Client, OutpostId, MaxResults, NextToken)
  when is_map(Client) ->
    get_outpost_instance_types(Client, OutpostId, MaxResults, NextToken, []).
get_outpost_instance_types(Client, OutpostId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), "/instanceTypes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the Outposts for your AWS account.
list_outposts(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_outposts(Client, MaxResults, NextToken, []).
list_outposts(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/outposts"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the sites for the specified AWS account.
list_sites(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_sites(Client, MaxResults, NextToken, []).
list_sites(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/sites"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
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
    Client1 = Client#{service => <<"outposts">>},
    Host = build_host(<<"outposts">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
          encode_payload(Input)
      end,

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
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
