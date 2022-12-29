%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK meetings APIs in this section allow software
%% developers to create Amazon Chime SDK meetings, set the AWS Regions for
%% meetings, create and manage users, and send and receive meeting
%% notifications.
%%
%% For more information about the meeting APIs, see Amazon Chime SDK
%% meetings.
-module(aws_chime_sdk_meetings).

-export([batch_create_attendee/3,
         batch_create_attendee/4,
         batch_update_attendee_capabilities_except/3,
         batch_update_attendee_capabilities_except/4,
         create_attendee/3,
         create_attendee/4,
         create_meeting/2,
         create_meeting/3,
         create_meeting_with_attendees/2,
         create_meeting_with_attendees/3,
         delete_attendee/4,
         delete_attendee/5,
         delete_meeting/3,
         delete_meeting/4,
         get_attendee/3,
         get_attendee/5,
         get_attendee/6,
         get_meeting/2,
         get_meeting/4,
         get_meeting/5,
         list_attendees/2,
         list_attendees/4,
         list_attendees/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_meeting_transcription/3,
         start_meeting_transcription/4,
         stop_meeting_transcription/3,
         stop_meeting_transcription/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_attendee_capabilities/4,
         update_attendee_capabilities/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates up to 100 attendees for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
batch_create_attendee(Client, MeetingId, Input) ->
    batch_create_attendee(Client, MeetingId, Input, []).
batch_create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees?operation=batch-create"],
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

%% @doc Updates `AttendeeCapabilities' except the capabilities listed in an
%% `ExcludedAttendeeIds' table.
%%
%% You use the capabilities with a set of values that control what the
%% capabilities can do, such as `SendReceive' data. For more information
%% about those values, see .
%%
%% When using capabilities, be aware of these corner cases:
%%
%% <ul> <li> You can't set `content' capabilities to `SendReceive' or
%% `Receive' unless you also set `video' capabilities to `SendReceive' or
%% `Receive'. If you don't set the `video' capability to receive, the
%% response will contain an HTTP 400 Bad Request status code. However, you
%% can set your `video' capability to receive and you set your `content'
%% capability to not receive.
%%
%% </li> <li> When you change an `audio' capability from `None' or `Receive'
%% to `Send' or `SendReceive' , and if the attendee left their microphone
%% unmuted, audio will flow from the attendee to the other meeting
%% participants.
%%
%% </li> <li> When you change a `video' or `content' capability from `None'
%% or `Receive' to `Send' or `SendReceive' , and if the attendee turned on
%% their video or content streams, remote attendess can receive those
%% streams, but only after media renegotiation between the client and the
%% Amazon Chime back-end server.
%%
%% </li> </ul>
batch_update_attendee_capabilities_except(Client, MeetingId, Input) ->
    batch_update_attendee_capabilities_except(Client, MeetingId, Input, []).
batch_update_attendee_capabilities_except(Client, MeetingId, Input0, Options0) ->
    Method = put,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/capabilities?operation=batch-update-except"],
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

%% @doc Creates a new attendee for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
create_attendee(Client, MeetingId, Input) ->
    create_attendee(Client, MeetingId, Input, []).
create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region
%% with no initial attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide. For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide.
create_meeting(Client, Input) ->
    create_meeting(Client, Input, []).
create_meeting(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region,
%% with attendees.
%%
%% For more information about specifying media Regions, see Amazon Chime SDK
%% Media Regions in the Amazon Chime Developer Guide. For more information
%% about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
%% Chime Developer Guide.
create_meeting_with_attendees(Client, Input) ->
    create_meeting_with_attendees(Client, Input, []).
create_meeting_with_attendees(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings?operation=create-attendees"],
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

%% @doc Deletes an attendee from the specified Amazon Chime SDK meeting and
%% deletes their `JoinToken'.
%%
%% Attendees are automatically deleted when a Amazon Chime SDK meeting is
%% deleted. For more information about the Amazon Chime SDK, see Using the
%% Amazon Chime SDK in the Amazon Chime Developer Guide.
delete_attendee(Client, AttendeeId, MeetingId, Input) ->
    delete_attendee(Client, AttendeeId, MeetingId, Input, []).
delete_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified Amazon Chime SDK meeting.
%%
%% The operation deletes all attendees, disconnects all clients, and prevents
%% new clients from joining the meeting. For more information about the
%% Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime
%% Developer Guide.
delete_meeting(Client, MeetingId, Input) ->
    delete_meeting(Client, MeetingId, Input, []).
delete_meeting(Client, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
    SuccessStatusCode = 204,
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

%% @doc Gets the Amazon Chime SDK attendee details for a specified meeting ID
%% and attendee ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
get_attendee(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    get_attendee(Client, AttendeeId, MeetingId, #{}, #{}).

get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK meeting details for the specified meeting
%% ID.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
get_meeting(Client, MeetingId)
  when is_map(Client) ->
    get_meeting(Client, MeetingId, #{}, #{}).

get_meeting(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_meeting(Client, MeetingId, QueryMap, HeadersMap, []).

get_meeting(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the attendees for the specified Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see Using the Amazon
%% Chime SDK in the Amazon Chime Developer Guide.
list_attendees(Client, MeetingId)
  when is_map(Client) ->
    list_attendees(Client, MeetingId, #{}, #{}).

list_attendees(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendees(Client, MeetingId, QueryMap, HeadersMap, []).

list_attendees(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags available for the specified resource.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts transcription for the specified `meetingId'.
start_meeting_transcription(Client, MeetingId, Input) ->
    start_meeting_transcription(Client, MeetingId, Input, []).
start_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=start"],
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

%% @doc Stops transcription for the specified `meetingId'.
stop_meeting_transcription(Client, MeetingId, Input) ->
    stop_meeting_transcription(Client, MeetingId, Input, []).
stop_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=stop"],
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

%% @doc The resource that supports tags.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,
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

%% @doc Removes the specified tags from the specified resources.
%%
%% When you specify a tag key, the action removes both that key and its
%% associated value. The operation succeeds even if you attempt to remove
%% tags from a resource that were already removed. Note the following:
%%
%% <ul> <li> To remove tags from a resource, you need the necessary
%% permissions for the service that the resource belongs to as well as
%% permissions for removing tags. For more information, see the documentation
%% for the service whose resource you want to untag.
%%
%% </li> <li> You can only tag resources that are located in the specified
%% AWS Region for the calling AWS account.
%%
%% </li> </ul> Minimum permissions
%%
%% In addition to the `tag:UntagResources' permission required by this
%% operation, you must also have the remove tags permission defined by the
%% service that created the resource. For example, to remove the tags from an
%% Amazon EC2 instance using the `UntagResources' operation, you must have
%% both of the following permissions:
%%
%% `tag:UntagResource'
%%
%% `ChimeSDKMeetings:DeleteTags'
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,
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

%% @doc The capabilties that you want to update.
%%
%% You use the capabilities with a set of values that control what the
%% capabilities can do, such as `SendReceive' data. For more information
%% about those values, see .
%%
%% When using capabilities, be aware of these corner cases:
%%
%% <ul> <li> You can't set `content' capabilities to `SendReceive' or
%% `Receive' unless you also set `video' capabilities to `SendReceive' or
%% `Receive'. If you don't set the `video' capability to receive, the
%% response will contain an HTTP 400 Bad Request status code. However, you
%% can set your `video' capability to receive and you set your `content'
%% capability to not receive.
%%
%% </li> <li> When you change an `audio' capability from `None' or `Receive'
%% to `Send' or `SendReceive' , and if the attendee left their microphone
%% unmuted, audio will flow from the attendee to the other meeting
%% participants.
%%
%% </li> <li> When you change a `video' or `content' capability from `None'
%% or `Receive' to `Send' or `SendReceive' , and if the attendee turned on
%% their video or content streams, remote attendess can receive those
%% streams, but only after media renegotiation between the client and the
%% Amazon Chime back-end server.
%%
%% </li> </ul>
update_attendee_capabilities(Client, AttendeeId, MeetingId, Input) ->
    update_attendee_capabilities(Client, AttendeeId, MeetingId, Input, []).
update_attendee_capabilities(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = put,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/capabilities"],
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"meetings-chime">>, Client1),
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
