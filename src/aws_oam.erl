%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use Amazon CloudWatch Observability Access Manager to create and
%% manage links between source accounts and monitoring accounts by using
%% CloudWatch cross-account observability.
%%
%% With CloudWatch cross-account observability, you can monitor and
%% troubleshoot applications that span multiple accounts within a Region.
%% Seamlessly search, visualize, and analyze your metrics, logs, traces, and
%% Application Insights applications in any of the linked accounts without
%% account boundaries.
%%
%% Set up one or more Amazon Web Services accounts as monitoring accounts and
%% link them with multiple source accounts. A monitoring account is a central
%% Amazon Web Services account that can view and interact with observability
%% data generated from source accounts. A source account is an individual
%% Amazon Web Services account that generates observability data for the
%% resources that reside in it. Source accounts share their observability
%% data with the monitoring account. The shared observability data can
%% include metrics in Amazon CloudWatch, logs in Amazon CloudWatch Logs,
%% traces in X-Ray, and applications in Amazon CloudWatch Application
%% Insights.
-module(aws_oam).

-export([create_link/2,
         create_link/3,
         create_sink/2,
         create_sink/3,
         delete_link/2,
         delete_link/3,
         delete_sink/2,
         delete_sink/3,
         get_link/2,
         get_link/3,
         get_sink/2,
         get_sink/3,
         get_sink_policy/2,
         get_sink_policy/3,
         list_attached_links/2,
         list_attached_links/3,
         list_links/2,
         list_links/3,
         list_sinks/2,
         list_sinks/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_sink_policy/2,
         put_sink_policy/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_link/2,
         update_link/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a link between a source account and a sink that you have
%% created in a monitoring account.
%%
%% Before you create a link, you must create a sink in the monitoring account
%% and create a sink policy in that account. The sink policy must permit the
%% source account to link to it. You can grant permission to source accounts
%% by granting permission to an entire organization or to individual
%% accounts.
%%
%% For more information, see CreateSink and PutSinkPolicy.
%%
%% Each monitoring account can be linked to as many as 100,000 source
%% accounts.
%%
%% Each source account can be linked to as many as five monitoring accounts.
create_link(Client, Input) ->
    create_link(Client, Input, []).
create_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLink"],
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

%% @doc Use this to create a sink in the current account, so that it can be
%% used as a monitoring account in CloudWatch cross-account observability.
%%
%% A sink is a resource that represents an attachment point in a monitoring
%% account. Source accounts can link to the sink to send observability data.
%%
%% After you create a sink, you must create a sink policy that allows source
%% accounts to attach to it. For more information, see PutSinkPolicy.
%%
%% Each account can contain one sink. If you delete a sink, you can then
%% create a new one in that account.
create_sink(Client, Input) ->
    create_sink(Client, Input, []).
create_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSink"],
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

%% @doc Deletes a link between a monitoring account sink and a source
%% account.
%%
%% You must run this operation in the source account.
delete_link(Client, Input) ->
    delete_link(Client, Input, []).
delete_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLink"],
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

%% @doc Deletes a sink.
%%
%% You must delete all links to a sink before you can delete that sink.
delete_sink(Client, Input) ->
    delete_sink(Client, Input, []).
delete_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSink"],
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

%% @doc Returns complete information about one link.
%%
%% To use this operation, provide the link ARN. To retrieve a list of link
%% ARNs, use ListLinks.
get_link(Client, Input) ->
    get_link(Client, Input, []).
get_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLink"],
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

%% @doc Returns complete information about one monitoring account sink.
%%
%% To use this operation, provide the sink ARN. To retrieve a list of sink
%% ARNs, use ListSinks.
get_sink(Client, Input) ->
    get_sink(Client, Input, []).
get_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSink"],
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

%% @doc Returns the current sink policy attached to this sink.
%%
%% The sink policy specifies what accounts can attach to this sink as source
%% accounts, and what types of data they can share.
get_sink_policy(Client, Input) ->
    get_sink_policy(Client, Input, []).
get_sink_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSinkPolicy"],
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

%% @doc Returns a list of source account links that are linked to this
%% monitoring account sink.
%%
%% To use this operation, provide the sink ARN. To retrieve a list of sink
%% ARNs, use ListSinks.
%%
%% To find a list of links for one source account, use ListLinks.
list_attached_links(Client, Input) ->
    list_attached_links(Client, Input, []).
list_attached_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAttachedLinks"],
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

%% @doc Use this operation in a source account to return a list of links to
%% monitoring account sinks that this source account has.
%%
%% To find a list of links for one monitoring account sink, use
%% ListAttachedLinks from within the monitoring account.
list_links(Client, Input) ->
    list_links(Client, Input, []).
list_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLinks"],
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

%% @doc Use this operation in a monitoring account to return the list of
%% sinks created in that account.
list_sinks(Client, Input) ->
    list_sinks(Client, Input, []).
list_sinks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSinks"],
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

%% @doc Displays the tags associated with a resource.
%%
%% Both sinks and links support tagging.
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

%% @doc Creates or updates the resource policy that grants permissions to
%% source accounts to link to the monitoring account sink.
%%
%% When you create a sink policy, you can grant permissions to all accounts
%% in an organization or to individual accounts.
%%
%% You can also use a sink policy to limit the types of data that is shared.
%% The three types that you can allow or deny are:
%%
%% <ul> <li> Metrics - Specify with `AWS::CloudWatch::Metric'
%%
%% </li> <li> Log groups - Specify with `AWS::Logs::LogGroup'
%%
%% </li> <li> Traces - Specify with `AWS::XRay::Trace'
%%
%% </li> <li> Application Insights - Applications - Specify with
%% `AWS::ApplicationInsights::Application'
%%
%% </li> </ul> See the examples in this section to see how to specify
%% permitted source accounts and data types.
put_sink_policy(Client, Input) ->
    put_sink_policy(Client, Input, []).
put_sink_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutSinkPolicy"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
%%
%% Both sinks and links can be tagged.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the alarm, this tag is appended to
%% the list of tags associated with the alarm. If you specify a tag key that
%% is already associated with the alarm, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% Unlike tagging permissions in other Amazon Web Services services, to tag
%% or untag links and sinks you must have the `oam:ResourceTag'
%% permission. The `iam:ResourceTag' permission does not allow you to tag
%% and untag links and sinks.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = put,
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

%% @doc Removes one or more tags from the specified resource.
%%
%% Unlike tagging permissions in other Amazon Web Services services, to tag
%% or untag links and sinks you must have the `oam:ResourceTag'
%% permission. The `iam:TagResource' permission does not allow you to tag
%% and untag links and sinks.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this operation to change what types of data are shared from a
%% source account to its linked monitoring account sink.
%%
%% You can't change the sink or change the monitoring account with this
%% operation.
%%
%% To update the list of tags associated with the sink, use TagResource.
update_link(Client, Input) ->
    update_link(Client, Input, []).
update_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLink"],
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
    Client1 = Client#{service => <<"oam">>},
    Host = build_host(<<"oam">>, Client1),
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
