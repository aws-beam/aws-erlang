%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Contact Lens actions:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Contact_Lens.html
%%
%% Contact Lens data types:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Contact_Lens.html
%%
%% Amazon Connect Contact Lens enables you to analyze conversations between
%% customer and agents, by using
%% speech transcription, natural language processing, and intelligent search
%% capabilities.
%%
%% It performs sentiment analysis, detects issues, and enables you to
%% automatically
%% categorize contacts.
%%
%% Amazon Connect Contact Lens provides both real-time and post-call
%% analytics of customer-agent
%% conversations. For more information, see Analyze conversations
%% using speech analytics:
%% https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html
%% in the Amazon Connect Administrator
%% Guide.
-module(aws_connect_contact_lens).

-export([list_realtime_contact_analysis_segments/2,
         list_realtime_contact_analysis_segments/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% categories() :: #{
%%   <<"MatchedCategories">> => list(string()),
%%   <<"MatchedDetails">> => map()
%% }
-type categories() :: #{binary() => any()}.


%% Example:
%% category_details() :: #{
%%   <<"PointsOfInterest">> => list(point_of_interest())
%% }
-type category_details() :: #{binary() => any()}.


%% Example:
%% character_offsets() :: #{
%%   <<"BeginOffsetChar">> => integer(),
%%   <<"EndOffsetChar">> => integer()
%% }
-type character_offsets() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% issue_detected() :: #{
%%   <<"CharacterOffsets">> => character_offsets()
%% }
-type issue_detected() :: #{binary() => any()}.


%% Example:
%% list_realtime_contact_analysis_segments_request() :: #{
%%   <<"ContactId">> := string(),
%%   <<"InstanceId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_realtime_contact_analysis_segments_request() :: #{binary() => any()}.


%% Example:
%% list_realtime_contact_analysis_segments_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Segments">> => list(realtime_contact_analysis_segment())
%% }
-type list_realtime_contact_analysis_segments_response() :: #{binary() => any()}.


%% Example:
%% point_of_interest() :: #{
%%   <<"BeginOffsetMillis">> => integer(),
%%   <<"EndOffsetMillis">> => integer()
%% }
-type point_of_interest() :: #{binary() => any()}.


%% Example:
%% post_contact_summary() :: #{
%%   <<"Content">> => string(),
%%   <<"FailureCode">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type post_contact_summary() :: #{binary() => any()}.


%% Example:
%% realtime_contact_analysis_segment() :: #{
%%   <<"Categories">> => categories(),
%%   <<"PostContactSummary">> => post_contact_summary(),
%%   <<"Transcript">> => transcript()
%% }
-type realtime_contact_analysis_segment() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% transcript() :: #{
%%   <<"BeginOffsetMillis">> => integer(),
%%   <<"Content">> => string(),
%%   <<"EndOffsetMillis">> => integer(),
%%   <<"Id">> => string(),
%%   <<"IssuesDetected">> => list(issue_detected()),
%%   <<"ParticipantId">> => string(),
%%   <<"ParticipantRole">> => string(),
%%   <<"Sentiment">> => list(any())
%% }
-type transcript() :: #{binary() => any()}.

-type list_realtime_contact_analysis_segments_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_service_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Provides a list of analysis segments for a real-time analysis
%% session.
-spec list_realtime_contact_analysis_segments(aws_client:aws_client(), list_realtime_contact_analysis_segments_request()) ->
    {ok, list_realtime_contact_analysis_segments_response(), tuple()} |
    {error, any()} |
    {error, list_realtime_contact_analysis_segments_errors(), tuple()}.
list_realtime_contact_analysis_segments(Client, Input) ->
    list_realtime_contact_analysis_segments(Client, Input, []).

-spec list_realtime_contact_analysis_segments(aws_client:aws_client(), list_realtime_contact_analysis_segments_request(), proplists:proplist()) ->
    {ok, list_realtime_contact_analysis_segments_response(), tuple()} |
    {error, any()} |
    {error, list_realtime_contact_analysis_segments_errors(), tuple()}.
list_realtime_contact_analysis_segments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/realtime-contact-analysis/analysis-segments"],
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
    Client1 = Client#{service => <<"connect">>},
    Host = build_host(<<"contact-lens">>, Client1),
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
