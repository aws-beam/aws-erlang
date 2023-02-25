%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream Query
-module(aws_timestream_query).

-export([cancel_query/2,
         cancel_query/3,
         create_scheduled_query/2,
         create_scheduled_query/3,
         delete_scheduled_query/2,
         delete_scheduled_query/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_scheduled_query/2,
         describe_scheduled_query/3,
         execute_scheduled_query/2,
         execute_scheduled_query/3,
         list_scheduled_queries/2,
         list_scheduled_queries/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         prepare_query/2,
         prepare_query/3,
         query/2,
         query/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_scheduled_query/2,
         update_scheduled_query/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a query that has been issued.
%%
%% Cancellation is provided only if the query has not completed running
%% before the cancellation request was issued. Because cancellation is an
%% idempotent operation, subsequent cancellation requests will return a
%% `CancellationMessage', indicating that the query has already been
%% canceled. See code sample for details.
cancel_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_query(Client, Input, []).
cancel_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelQuery">>, Input, Options).

%% @doc Create a scheduled query that will be run on your behalf at the
%% configured schedule.
%%
%% Timestream assumes the execution role provided as part of the
%% `ScheduledQueryExecutionRoleArn' parameter to run the query. You can
%% use the `NotificationConfiguration' parameter to configure
%% notification for your scheduled query operations.
create_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_query(Client, Input, []).
create_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledQuery">>, Input, Options).

%% @doc Deletes a given scheduled query.
%%
%% This is an irreversible operation.
delete_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_query(Client, Input, []).
delete_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledQuery">>, Input, Options).

%% @doc DescribeEndpoints returns a list of available endpoints to make
%% Timestream API calls against.
%%
%% This API is available through both Write and Query.
%%
%% Because the Timestream SDKs are designed to transparently work with the
%% service’s architecture, including the management and mapping of the
%% service endpoints, it is not recommended that you use this API unless:
%%
%% <ul> <li> You are using VPC endpoints (Amazon Web Services PrivateLink)
%% with Timestream
%%
%% </li> <li> Your application uses a programming language that does not yet
%% have SDK support
%%
%% </li> <li> You require better control over the client-side implementation
%%
%% </li> </ul> For detailed information on how and when to use and implement
%% DescribeEndpoints, see The Endpoint Discovery Pattern.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Provides detailed information about a scheduled query.
describe_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_query(Client, Input, []).
describe_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledQuery">>, Input, Options).

%% @doc You can use this API to run a scheduled query manually.
execute_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_scheduled_query(Client, Input, []).
execute_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteScheduledQuery">>, Input, Options).

%% @doc Gets a list of all scheduled queries in the caller's Amazon
%% account and Region.
%%
%% `ListScheduledQueries' is eventually consistent.
list_scheduled_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scheduled_queries(Client, Input, []).
list_scheduled_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScheduledQueries">>, Input, Options).

%% @doc List all tags on a Timestream query resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc A synchronous operation that allows you to submit a query with
%% parameters to be stored by Timestream for later running.
%%
%% Timestream only supports using this operation with the
%% `PrepareQueryRequest$ValidateOnly' set to `true'.
prepare_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    prepare_query(Client, Input, []).
prepare_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PrepareQuery">>, Input, Options).

%% @doc `Query' is a synchronous operation that enables you to run a
%% query against your Amazon Timestream data.
%%
%% `Query' will time out after 60 seconds. You must update the default
%% timeout in the SDK to support a timeout of 60 seconds. See the code sample
%% for details.
%%
%% Your query request will fail in the following cases:
%%
%% <ul> <li> If you submit a `Query' request with the same client token
%% outside of the 5-minute idempotency window.
%%
%% </li> <li> If you submit a `Query' request with the same client token,
%% but change other parameters, within the 5-minute idempotency window.
%%
%% </li> <li> If the size of the row (including the query metadata) exceeds 1
%% MB, then the query will fail with the following error message:
%%
%% `Query aborted as max page response size has been exceeded by the output
%% result row'
%%
%% </li> <li> If the IAM principal of the query initiator and the result
%% reader are not the same and/or the query initiator and the result reader
%% do not have the same query string in the query requests, the query will
%% fail with an `Invalid pagination token' error.
%%
%% </li> </ul>
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Associate a set of tags with a Timestream resource.
%%
%% You can then activate these user-defined tags so that they appear on the
%% Billing and Cost Management console for cost allocation tracking.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a Timestream query resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update a scheduled query.
update_scheduled_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scheduled_query(Client, Input, []).
update_scheduled_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScheduledQuery">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"timestream">>},
    Host = build_host(<<"query.timestream">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Timestream_20181101.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
