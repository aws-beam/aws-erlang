%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Lookout for Metrics API Reference.
%%
%% For an introduction to the service with tutorials for getting started,
%% visit Amazon Lookout for Metrics Developer Guide.
-module(aws_lookoutmetrics).

-export([activate_anomaly_detector/2,
         activate_anomaly_detector/3,
         back_test_anomaly_detector/2,
         back_test_anomaly_detector/3,
         create_alert/2,
         create_alert/3,
         create_anomaly_detector/2,
         create_anomaly_detector/3,
         create_metric_set/2,
         create_metric_set/3,
         deactivate_anomaly_detector/2,
         deactivate_anomaly_detector/3,
         delete_alert/2,
         delete_alert/3,
         delete_anomaly_detector/2,
         delete_anomaly_detector/3,
         describe_alert/2,
         describe_alert/3,
         describe_anomaly_detection_executions/2,
         describe_anomaly_detection_executions/3,
         describe_anomaly_detector/2,
         describe_anomaly_detector/3,
         describe_metric_set/2,
         describe_metric_set/3,
         get_anomaly_group/2,
         get_anomaly_group/3,
         get_feedback/2,
         get_feedback/3,
         get_sample_data/2,
         get_sample_data/3,
         list_alerts/2,
         list_alerts/3,
         list_anomaly_detectors/2,
         list_anomaly_detectors/3,
         list_anomaly_group_related_metrics/2,
         list_anomaly_group_related_metrics/3,
         list_anomaly_group_summaries/2,
         list_anomaly_group_summaries/3,
         list_anomaly_group_time_series/2,
         list_anomaly_group_time_series/3,
         list_metric_sets/2,
         list_metric_sets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_feedback/2,
         put_feedback/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_anomaly_detector/2,
         update_anomaly_detector/3,
         update_metric_set/2,
         update_metric_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates an anomaly detector.
activate_anomaly_detector(Client, Input) ->
    activate_anomaly_detector(Client, Input, []).
activate_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ActivateAnomalyDetector"],
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

%% @doc Runs a backtest for anomaly detection for the specified resource.
back_test_anomaly_detector(Client, Input) ->
    back_test_anomaly_detector(Client, Input, []).
back_test_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BackTestAnomalyDetector"],
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

%% @doc Creates an alert for an anomaly detector.
create_alert(Client, Input) ->
    create_alert(Client, Input, []).
create_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateAlert"],
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

%% @doc Creates an anomaly detector.
create_anomaly_detector(Client, Input) ->
    create_anomaly_detector(Client, Input, []).
create_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateAnomalyDetector"],
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

%% @doc Creates a dataset.
create_metric_set(Client, Input) ->
    create_metric_set(Client, Input, []).
create_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateMetricSet"],
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

%% @doc Deactivates an anomaly detector.
deactivate_anomaly_detector(Client, Input) ->
    deactivate_anomaly_detector(Client, Input, []).
deactivate_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeactivateAnomalyDetector"],
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

%% @doc Deletes an alert.
delete_alert(Client, Input) ->
    delete_alert(Client, Input, []).
delete_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteAlert"],
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

%% @doc Deletes a detector.
%%
%% Deleting an anomaly detector will delete all of its corresponding
%% resources including any configured datasets and alerts.
delete_anomaly_detector(Client, Input) ->
    delete_anomaly_detector(Client, Input, []).
delete_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteAnomalyDetector"],
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

%% @doc Describes an alert.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
describe_alert(Client, Input) ->
    describe_alert(Client, Input, []).
describe_alert(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAlert"],
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

%% @doc Returns information about the status of the specified anomaly
%% detection jobs.
describe_anomaly_detection_executions(Client, Input) ->
    describe_anomaly_detection_executions(Client, Input, []).
describe_anomaly_detection_executions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAnomalyDetectionExecutions"],
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

%% @doc Describes a detector.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
describe_anomaly_detector(Client, Input) ->
    describe_anomaly_detector(Client, Input, []).
describe_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeAnomalyDetector"],
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

%% @doc Describes a dataset.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
describe_metric_set(Client, Input) ->
    describe_metric_set(Client, Input, []).
describe_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeMetricSet"],
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

%% @doc Returns details about a group of anomalous metrics.
get_anomaly_group(Client, Input) ->
    get_anomaly_group(Client, Input, []).
get_anomaly_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetAnomalyGroup"],
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

%% @doc Get feedback for an anomaly group.
get_feedback(Client, Input) ->
    get_feedback(Client, Input, []).
get_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetFeedback"],
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

%% @doc Returns a selection of sample records from an Amazon S3 datasource.
get_sample_data(Client, Input) ->
    get_sample_data(Client, Input, []).
get_sample_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSampleData"],
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

%% @doc Lists the alerts attached to a detector.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
list_alerts(Client, Input) ->
    list_alerts(Client, Input, []).
list_alerts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAlerts"],
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

%% @doc Lists the detectors in the current AWS Region.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
list_anomaly_detectors(Client, Input) ->
    list_anomaly_detectors(Client, Input, []).
list_anomaly_detectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyDetectors"],
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

%% @doc Returns a list of measures that are potential causes or effects of an
%% anomaly group.
list_anomaly_group_related_metrics(Client, Input) ->
    list_anomaly_group_related_metrics(Client, Input, []).
list_anomaly_group_related_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupRelatedMetrics"],
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

%% @doc Returns a list of anomaly groups.
list_anomaly_group_summaries(Client, Input) ->
    list_anomaly_group_summaries(Client, Input, []).
list_anomaly_group_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupSummaries"],
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

%% @doc Gets a list of anomalous metrics for a measure in an anomaly group.
list_anomaly_group_time_series(Client, Input) ->
    list_anomaly_group_time_series(Client, Input, []).
list_anomaly_group_time_series(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAnomalyGroupTimeSeries"],
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

%% @doc Lists the datasets in the current AWS Region.
%%
%% Amazon Lookout for Metrics API actions are eventually consistent. If you
%% do a read operation on a resource immediately after creating or modifying
%% it, use retries to allow time for the write operation to complete.
list_metric_sets(Client, Input) ->
    list_metric_sets(Client, Input, []).
list_metric_sets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListMetricSets"],
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

%% @doc Gets a list of tags for a detector, dataset, or alert.
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

%% @doc Add feedback for an anomalous metric.
put_feedback(Client, Input) ->
    put_feedback(Client, Input, []).
put_feedback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutFeedback"],
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

%% @doc Adds tags to a detector, dataset, or alert.
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

%% @doc Removes tags from a detector, dataset, or alert.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a detector.
%%
%% After activation, you can only change a detector's ingestion delay and
%% description.
update_anomaly_detector(Client, Input) ->
    update_anomaly_detector(Client, Input, []).
update_anomaly_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateAnomalyDetector"],
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

%% @doc Updates a dataset.
update_metric_set(Client, Input) ->
    update_metric_set(Client, Input, []).
update_metric_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateMetricSet"],
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
    Client1 = Client#{service => <<"lookoutmetrics">>},
    Host = build_host(<<"lookoutmetrics">>, Client1),
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
