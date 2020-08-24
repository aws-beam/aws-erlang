%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <p/>
-module(aws_kinesis_video_media).

-export([get_media/2,
         get_media/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Use this API to retrieve media content from a Kinesis video stream.
%% In the request, you identify the stream name or stream Amazon Resource
%% Name (ARN), and the starting chunk. Kinesis Video Streams then returns a
%% stream of chunks in order by fragment number.
%%
%% <note> You must first call the <code>GetDataEndpoint</code> API to get an
%% endpoint. Then send the <code>GetMedia</code> requests to this endpoint
%% using the <a
%% href="https://docs.aws.amazon.com/cli/latest/reference/">--endpoint-url
%% parameter</a>.
%%
%% </note> When you put media data (fragments) on a stream, Kinesis Video
%% Streams stores each incoming fragment and related metadata in what is
%% called a "chunk." For more information, see <a
%% href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html">PutMedia</a>.
%% The <code>GetMedia</code> API returns a stream of these chunks starting
%% from the chunk that you specify in the request.
%%
%% The following limits apply when using the <code>GetMedia</code> API:
%%
%% <ul> <li> A client can call <code>GetMedia</code> up to five times per
%% second per stream.
%%
%% </li> <li> Kinesis Video Streams sends media data at a rate of up to 25
%% megabytes per second (or 200 megabits per second) during a
%% <code>GetMedia</code> session.
%%
%% </li> </ul> <note> If an error is thrown after invoking a Kinesis Video
%% Streams media API, in addition to the HTTP status code and the response
%% body, it includes the following pieces of information:
%%
%% <ul> <li> <code>x-amz-ErrorType</code> HTTP header – contains a more
%% specific error type in addition to what the HTTP status code provides.
%%
%% </li> <li> <code>x-amz-RequestId</code> HTTP header – if you want to
%% report an issue to AWS, the support team can better diagnose the problem
%% if given the Request Id.
%%
%% </li> </ul> Both the HTTP status code and the ErrorType header can be
%% utilized to make programmatic decisions about whether errors are
%% retry-able and under what conditions, as well as provide information on
%% what actions the client programmer might need to take in order to
%% successfully try again.
%%
%% For more information, see the <b>Errors</b> section at the bottom of this
%% topic, as well as <a
%% href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common
%% Errors</a>.
%%
%% </note>
get_media(Client, Input) ->
    get_media(Client, Input, []).
get_media(Client, Input0, Options) ->
    Method = post,
    Path = ["/getMedia"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
