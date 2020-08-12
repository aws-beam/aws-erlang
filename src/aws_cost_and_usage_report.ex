%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Cost and Usage Report API enables you to programmatically
%% create, query, and delete AWS Cost and Usage report definitions.
%%
%% AWS Cost and Usage reports track the monthly AWS costs and usage
%% associated with your AWS account. The report contains line items for each
%% unique combination of AWS product, usage type, and operation that your AWS
%% account uses. You can configure the AWS Cost and Usage report to show only
%% the data that you want, using the AWS Cost and Usage API.
%%
%% Service Endpoint
%%
%% The AWS Cost and Usage Report API provides the following endpoint:
%%
%% <ul> <li> cur.us-east-1.amazonaws.com
%%
%% </li> </ul>
-module(aws_cost_and_usage_report).

-export([delete_report_definition/2,
         delete_report_definition/3,
         describe_report_definitions/2,
         describe_report_definitions/3,
         modify_report_definition/2,
         modify_report_definition/3,
         put_report_definition/2,
         put_report_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified report.
delete_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report_definition(Client, Input, []).
delete_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReportDefinition">>, Input, Options).

%% @doc Lists the AWS Cost and Usage reports available to this account.
describe_report_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_report_definitions(Client, Input, []).
describe_report_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReportDefinitions">>, Input, Options).

%% @doc Allows you to programatically update your report preferences.
modify_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_report_definition(Client, Input, []).
modify_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReportDefinition">>, Input, Options).

%% @doc Creates a new report using the description that you provide.
put_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_report_definition(Client, Input, []).
put_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutReportDefinition">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"cur">>},
    Host = get_host(<<"cur">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWSOrigamiServiceGatewayService.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
