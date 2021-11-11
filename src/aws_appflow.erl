%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon AppFlow API reference.
%%
%% This guide is for developers who need detailed information about the
%% Amazon AppFlow API operations, data types, and errors.
%%
%% Amazon AppFlow is a fully managed integration service that enables you to
%% securely transfer data between software as a service (SaaS) applications
%% like Salesforce, Marketo, Slack, and ServiceNow, and Amazon Web Services
%% like Amazon S3 and Amazon Redshift.
%%
%% Use the following links to get started on the Amazon AppFlow API:
%%
%% <ul> <li> Actions: An alphabetical list of all Amazon AppFlow API
%% operations.
%%
%% </li> <li> Data types: An alphabetical list of all Amazon AppFlow data
%% types.
%%
%% </li> <li> Common parameters: Parameters that all Query operations can
%% use.
%%
%% </li> <li> Common errors: Client and server errors that all operations can
%% return.
%%
%% </li> </ul> If you're new to Amazon AppFlow, we recommend that you review
%% the Amazon AppFlow User Guide.
%%
%% Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and
%% include applicable OAuth attributes (such as `auth-code' and
%% `redirecturi') with the connector-specific `ConnectorProfileProperties'
%% when creating a new connector profile using Amazon AppFlow API operations.
%% For example, Salesforce users can refer to the Authorize Apps with OAuth
%% documentation.
-module(aws_appflow).

-export([create_connector_profile/2,
         create_connector_profile/3,
         create_flow/2,
         create_flow/3,
         delete_connector_profile/2,
         delete_connector_profile/3,
         delete_flow/2,
         delete_flow/3,
         describe_connector_entity/2,
         describe_connector_entity/3,
         describe_connector_profiles/2,
         describe_connector_profiles/3,
         describe_connectors/2,
         describe_connectors/3,
         describe_flow/2,
         describe_flow/3,
         describe_flow_execution_records/2,
         describe_flow_execution_records/3,
         list_connector_entities/2,
         list_connector_entities/3,
         list_flows/2,
         list_flows/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_flow/2,
         start_flow/3,
         stop_flow/2,
         stop_flow/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_connector_profile/2,
         update_connector_profile/3,
         update_flow/2,
         update_flow/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new connector profile associated with your Amazon Web
%% Services account.
%%
%% There is a soft quota of 100 connector profiles per Amazon Web Services
%% account. If you need more connector profiles than this quota allows, you
%% can submit a request to the Amazon AppFlow team through the Amazon AppFlow
%% support channel.
create_connector_profile(Client, Input) ->
    create_connector_profile(Client, Input, []).
create_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-connector-profile"],
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

%% @doc Enables your application to create a new flow using Amazon AppFlow.
%%
%% You must create a connector profile before calling this API. Please note
%% that the Request Syntax below shows syntax for multiple destinations,
%% however, you can only transfer data to one item in this list at a time.
%% Amazon AppFlow does not currently support flows to multiple destinations
%% at once.
create_flow(Client, Input) ->
    create_flow(Client, Input, []).
create_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-flow"],
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

%% @doc Enables you to delete an existing connector profile.
delete_connector_profile(Client, Input) ->
    delete_connector_profile(Client, Input, []).
delete_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-connector-profile"],
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

%% @doc Enables your application to delete an existing flow.
%%
%% Before deleting the flow, Amazon AppFlow validates the request by checking
%% the flow configuration and status. You can delete flows one at a time.
delete_flow(Client, Input) ->
    delete_flow(Client, Input, []).
delete_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-flow"],
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

%% @doc Provides details regarding the entity used with the connector, with a
%% description of the data model for each entity.
describe_connector_entity(Client, Input) ->
    describe_connector_entity(Client, Input, []).
describe_connector_entity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connector-entity"],
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

%% @doc Returns a list of `connector-profile' details matching the provided
%% `connector-profile' names and `connector-types'.
%%
%% Both input lists are optional, and you can use them to filter the result.
%%
%% If no names or `connector-types' are provided, returns all connector
%% profiles in a paginated form. If there is no match, this operation returns
%% an empty list.
describe_connector_profiles(Client, Input) ->
    describe_connector_profiles(Client, Input, []).
describe_connector_profiles(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connector-profiles"],
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

%% @doc Describes the connectors vended by Amazon AppFlow for specified
%% connector types.
%%
%% If you don't specify a connector type, this operation describes all
%% connectors vended by Amazon AppFlow. If there are more connectors than can
%% be returned in one page, the response contains a `nextToken' object, which
%% can be be passed in to the next call to the `DescribeConnectors' API
%% operation to retrieve the next page.
describe_connectors(Client, Input) ->
    describe_connectors(Client, Input, []).
describe_connectors(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-connectors"],
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

%% @doc Provides a description of the specified flow.
describe_flow(Client, Input) ->
    describe_flow(Client, Input, []).
describe_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-flow"],
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

%% @doc Fetches the execution history of the flow.
describe_flow_execution_records(Client, Input) ->
    describe_flow_execution_records(Client, Input, []).
describe_flow_execution_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-flow-execution-records"],
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

%% @doc Returns the list of available connector entities supported by Amazon
%% AppFlow.
%%
%% For example, you can query Salesforce for Account and Opportunity
%% entities, or query ServiceNow for the Incident entity.
list_connector_entities(Client, Input) ->
    list_connector_entities(Client, Input, []).
list_connector_entities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-connector-entities"],
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

%% @doc Lists all of the flows associated with your account.
list_flows(Client, Input) ->
    list_flows(Client, Input, []).
list_flows(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-flows"],
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

%% @doc Retrieves the tags that are associated with a specified flow.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Activates an existing flow.
%%
%% For on-demand flows, this operation runs the flow immediately. For
%% schedule and event-triggered flows, this operation activates the flow.
start_flow(Client, Input) ->
    start_flow(Client, Input, []).
start_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-flow"],
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

%% @doc Deactivates the existing flow.
%%
%% For on-demand flows, this operation returns an
%% `unsupportedOperationException' error message. For schedule and
%% event-triggered flows, this operation deactivates the flow.
stop_flow(Client, Input) ->
    stop_flow(Client, Input, []).
stop_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stop-flow"],
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

%% @doc Applies a tag to the specified flow.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from the specified flow.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates a given connector profile associated with your account.
update_connector_profile(Client, Input) ->
    update_connector_profile(Client, Input, []).
update_connector_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-connector-profile"],
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

%% @doc Updates an existing flow.
update_flow(Client, Input) ->
    update_flow(Client, Input, []).
update_flow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-flow"],
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
    Client1 = Client#{service => <<"appflow">>},
    Host = build_host(<<"appflow">>, Client1),
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
