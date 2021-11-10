%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Systems Manager Incident Manager is an incident management console
%% designed to help users mitigate and recover from incidents affecting their
%% Amazon Web Services-hosted applications.
%%
%% An incident is any unplanned interruption or reduction in quality of
%% services.
%%
%% Incident Manager increases incident resolution by notifying responders of
%% impact, highlighting relevant troubleshooting data, and providing
%% collaboration tools to get services back up and running. To achieve the
%% primary goal of reducing the time-to-resolution of critical incidents,
%% Incident Manager automates response plans and enables responder team
%% escalation.
-module(aws_ssm_incidents).

-export([create_replication_set/2,
         create_replication_set/3,
         create_response_plan/2,
         create_response_plan/3,
         create_timeline_event/2,
         create_timeline_event/3,
         delete_incident_record/2,
         delete_incident_record/3,
         delete_replication_set/2,
         delete_replication_set/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_response_plan/2,
         delete_response_plan/3,
         delete_timeline_event/2,
         delete_timeline_event/3,
         get_incident_record/2,
         get_incident_record/4,
         get_incident_record/5,
         get_replication_set/2,
         get_replication_set/4,
         get_replication_set/5,
         get_resource_policies/2,
         get_resource_policies/3,
         get_response_plan/2,
         get_response_plan/4,
         get_response_plan/5,
         get_timeline_event/3,
         get_timeline_event/5,
         get_timeline_event/6,
         list_incident_records/2,
         list_incident_records/3,
         list_related_items/2,
         list_related_items/3,
         list_replication_sets/2,
         list_replication_sets/3,
         list_response_plans/2,
         list_response_plans/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_timeline_events/2,
         list_timeline_events/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_incident/2,
         start_incident/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_deletion_protection/2,
         update_deletion_protection/3,
         update_incident_record/2,
         update_incident_record/3,
         update_related_items/2,
         update_related_items/3,
         update_replication_set/2,
         update_replication_set/3,
         update_response_plan/2,
         update_response_plan/3,
         update_timeline_event/2,
         update_timeline_event/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc A replication set replicates and encrypts your data to the provided
%% Regions with the provided KMS key.
create_replication_set(Client, Input) ->
    create_replication_set(Client, Input, []).
create_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createReplicationSet"],
    SuccessStatusCode = 201,
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

%% @doc Creates a response plan that automates the initial response to
%% incidents.
%%
%% A response plan engages contacts, starts chat channel collaboration, and
%% initiates runbooks at the beginning of an incident.
create_response_plan(Client, Input) ->
    create_response_plan(Client, Input, []).
create_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createResponsePlan"],
    SuccessStatusCode = 201,
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

%% @doc Creates a custom timeline event on the incident details page of an
%% incident record.
%%
%% Timeline events are automatically created by Incident Manager, marking key
%% moment during an incident. You can create custom timeline events to mark
%% important events that are automatically detected by Incident Manager.
create_timeline_event(Client, Input) ->
    create_timeline_event(Client, Input, []).
create_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createTimelineEvent"],
    SuccessStatusCode = 201,
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

%% @doc Delete an incident record from Incident Manager.
delete_incident_record(Client, Input) ->
    delete_incident_record(Client, Input, []).
delete_incident_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteIncidentRecord"],
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

%% @doc Deletes all Regions in your replication set.
%%
%% Deleting the replication set deletes all Incident Manager data.
delete_replication_set(Client, Input) ->
    delete_replication_set(Client, Input, []).
delete_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteReplicationSet"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"arn">>, <<"arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource policy that Resource Access Manager uses to
%% share your Incident Manager resource.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteResourcePolicy"],
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

%% @doc Deletes the specified response plan.
%%
%% Deleting a response plan stops all linked CloudWatch alarms and
%% EventBridge events from creating an incident with this response plan.
delete_response_plan(Client, Input) ->
    delete_response_plan(Client, Input, []).
delete_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteResponsePlan"],
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

%% @doc Deletes a timeline event from an incident.
delete_timeline_event(Client, Input) ->
    delete_timeline_event(Client, Input, []).
delete_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteTimelineEvent"],
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

%% @doc Returns the details for the specified incident record.
get_incident_record(Client, Arn)
  when is_map(Client) ->
    get_incident_record(Client, Arn, #{}, #{}).

get_incident_record(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_incident_record(Client, Arn, QueryMap, HeadersMap, []).

get_incident_record(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getIncidentRecord"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve your Incident Manager replication set.
get_replication_set(Client, Arn)
  when is_map(Client) ->
    get_replication_set(Client, Arn, #{}, #{}).

get_replication_set(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_replication_set(Client, Arn, QueryMap, HeadersMap, []).

get_replication_set(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getReplicationSet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the resource policies attached to the specified response
%% plan.
get_resource_policies(Client, Input) ->
    get_resource_policies(Client, Input, []).
get_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getResourcePolicies"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified response plan.
get_response_plan(Client, Arn)
  when is_map(Client) ->
    get_response_plan(Client, Arn, #{}, #{}).

get_response_plan(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_response_plan(Client, Arn, QueryMap, HeadersMap, []).

get_response_plan(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getResponsePlan"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a timeline event based on its ID and incident record.
get_timeline_event(Client, EventId, IncidentRecordArn)
  when is_map(Client) ->
    get_timeline_event(Client, EventId, IncidentRecordArn, #{}, #{}).

get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap, []).

get_timeline_event(Client, EventId, IncidentRecordArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getTimelineEvent"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"eventId">>, EventId},
        {<<"incidentRecordArn">>, IncidentRecordArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all incident records in your account.
%%
%% Use this command to retrieve the Amazon Resource Name (ARN) of the
%% incident record you want to update.
list_incident_records(Client, Input) ->
    list_incident_records(Client, Input, []).
list_incident_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listIncidentRecords"],
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

%% @doc List all related items for an incident record.
list_related_items(Client, Input) ->
    list_related_items(Client, Input, []).
list_related_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRelatedItems"],
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

%% @doc Lists details about the replication set configured in your account.
list_replication_sets(Client, Input) ->
    list_replication_sets(Client, Input, []).
list_replication_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listReplicationSets"],
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

%% @doc Lists all response plans in your account.
list_response_plans(Client, Input) ->
    list_response_plans(Client, Input, []).
list_response_plans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listResponsePlans"],
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

%% @doc Lists the tags that are attached to the specified response plan.
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

%% @doc Lists timeline events for the specified incident record.
list_timeline_events(Client, Input) ->
    list_timeline_events(Client, Input, []).
list_timeline_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTimelineEvents"],
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

%% @doc Adds a resource policy to the specified response plan.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/putResourcePolicy"],
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

%% @doc Used to start an incident from CloudWatch alarms, EventBridge events,
%% or manually.
start_incident(Client, Input) ->
    start_incident(Client, Input, []).
start_incident(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startIncident"],
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

%% @doc Adds a tag to a response plan.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update deletion protection to either allow or deny deletion of the
%% final Region in a replication set.
update_deletion_protection(Client, Input) ->
    update_deletion_protection(Client, Input, []).
update_deletion_protection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDeletionProtection"],
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

%% @doc Update the details of an incident record.
%%
%% You can use this operation to update an incident record from the defined
%% chat channel. For more information about using actions in chat channels,
%% see Interacting through chat.
update_incident_record(Client, Input) ->
    update_incident_record(Client, Input, []).
update_incident_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateIncidentRecord"],
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

%% @doc Add or remove related items from the related items tab of an incident
%% record.
update_related_items(Client, Input) ->
    update_related_items(Client, Input, []).
update_related_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateRelatedItems"],
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

%% @doc Add or delete Regions from your replication set.
update_replication_set(Client, Input) ->
    update_replication_set(Client, Input, []).
update_replication_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateReplicationSet"],
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

%% @doc Updates the specified response plan.
update_response_plan(Client, Input) ->
    update_response_plan(Client, Input, []).
update_response_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateResponsePlan"],
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

%% @doc Updates a timeline event.
%%
%% You can update events of type `Custom Event'.
update_timeline_event(Client, Input) ->
    update_timeline_event(Client, Input, []).
update_timeline_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateTimelineEvent"],
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
    Client1 = Client#{service => <<"ssm-incidents">>},
    Host = build_host(<<"ssm-incidents">>, Client1),
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
