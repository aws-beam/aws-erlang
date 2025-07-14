%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Web Services Cost and Usage Report API to
%% programmatically create, query, and delete
%% Amazon Web Services Cost and Usage Report definitions.
%%
%% Amazon Web Services Cost and Usage Report track the monthly Amazon Web
%% Services costs and usage
%% associated with your Amazon Web Services account.
%%
%% The report contains line items for each unique combination of Amazon Web
%% Services product,
%% usage type, and operation that your Amazon Web Services account uses.
%%
%% You can configure the Amazon Web Services Cost and Usage Report to show
%% only the data that you want, using the
%% Amazon Web Services Cost and Usage Report API.
%%
%% Service Endpoint
%%
%% The Amazon Web Services Cost and Usage Report API provides the following
%% endpoint:
%%
%% cur.us-east-1.amazonaws.com
-module(aws_cost_and_usage_report).

-export([delete_report_definition/2,
         delete_report_definition/3,
         describe_report_definitions/2,
         describe_report_definitions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_report_definition/2,
         modify_report_definition/3,
         put_report_definition/2,
         put_report_definition/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_report_definition_request() :: #{
%%   <<"ReportName">> := string()
%% }
-type delete_report_definition_request() :: #{binary() => any()}.

%% Example:
%% delete_report_definition_response() :: #{
%%   <<"ResponseMessage">> => string()
%% }
-type delete_report_definition_response() :: #{binary() => any()}.

%% Example:
%% describe_report_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_report_definitions_request() :: #{binary() => any()}.

%% Example:
%% describe_report_definitions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReportDefinitions">> => list(report_definition())
%% }
-type describe_report_definitions_response() :: #{binary() => any()}.

%% Example:
%% duplicate_report_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_report_name_exception() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ReportName">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% modify_report_definition_request() :: #{
%%   <<"ReportDefinition">> := report_definition(),
%%   <<"ReportName">> := string()
%% }
-type modify_report_definition_request() :: #{binary() => any()}.

%% Example:
%% modify_report_definition_response() :: #{

%% }
-type modify_report_definition_response() :: #{binary() => any()}.

%% Example:
%% put_report_definition_request() :: #{
%%   <<"ReportDefinition">> := report_definition(),
%%   <<"Tags">> => list(tag())
%% }
-type put_report_definition_request() :: #{binary() => any()}.

%% Example:
%% put_report_definition_response() :: #{

%% }
-type put_report_definition_response() :: #{binary() => any()}.

%% Example:
%% report_definition() :: #{
%%   <<"AdditionalArtifacts">> => list(list(any())()),
%%   <<"AdditionalSchemaElements">> => list(list(any())()),
%%   <<"BillingViewArn">> => string(),
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"RefreshClosedReports">> => boolean(),
%%   <<"ReportName">> => string(),
%%   <<"ReportStatus">> => report_status(),
%%   <<"ReportVersioning">> => list(any()),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"S3Region">> => list(any()),
%%   <<"TimeUnit">> => list(any())
%% }
-type report_definition() :: #{binary() => any()}.

%% Example:
%% report_limit_reached_exception() :: #{
%%   <<"Message">> => string()
%% }
-type report_limit_reached_exception() :: #{binary() => any()}.

%% Example:
%% report_status() :: #{
%%   <<"lastDelivery">> => string(),
%%   <<"lastStatus">> => list(any())
%% }
-type report_status() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ReportName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ReportName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type delete_report_definition_errors() ::
    validation_exception() | 
    internal_error_exception().

-type describe_report_definitions_errors() ::
    internal_error_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_error_exception().

-type modify_report_definition_errors() ::
    validation_exception() | 
    internal_error_exception().

-type put_report_definition_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    report_limit_reached_exception() | 
    internal_error_exception() | 
    duplicate_report_name_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_error_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified report.
%%
%% Any tags associated with the report are also
%% deleted.
-spec delete_report_definition(aws_client:aws_client(), delete_report_definition_request()) ->
    {ok, delete_report_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_report_definition_errors(), tuple()}.
delete_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_report_definition(Client, Input, []).

-spec delete_report_definition(aws_client:aws_client(), delete_report_definition_request(), proplists:proplist()) ->
    {ok, delete_report_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_report_definition_errors(), tuple()}.
delete_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReportDefinition">>, Input, Options).

%% @doc Lists the Amazon Web Services Cost and Usage Report available to this
%% account.
-spec describe_report_definitions(aws_client:aws_client(), describe_report_definitions_request()) ->
    {ok, describe_report_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_report_definitions_errors(), tuple()}.
describe_report_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_report_definitions(Client, Input, []).

-spec describe_report_definitions(aws_client:aws_client(), describe_report_definitions_request(), proplists:proplist()) ->
    {ok, describe_report_definitions_response(), tuple()} |
    {error, any()} |
    {error, describe_report_definitions_errors(), tuple()}.
describe_report_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReportDefinitions">>, Input, Options).

%% @doc Lists the tags associated with the specified report definition.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Allows you to programmatically update your report preferences.
-spec modify_report_definition(aws_client:aws_client(), modify_report_definition_request()) ->
    {ok, modify_report_definition_response(), tuple()} |
    {error, any()} |
    {error, modify_report_definition_errors(), tuple()}.
modify_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_report_definition(Client, Input, []).

-spec modify_report_definition(aws_client:aws_client(), modify_report_definition_request(), proplists:proplist()) ->
    {ok, modify_report_definition_response(), tuple()} |
    {error, any()} |
    {error, modify_report_definition_errors(), tuple()}.
modify_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReportDefinition">>, Input, Options).

%% @doc Creates a new report using the description that you provide.
-spec put_report_definition(aws_client:aws_client(), put_report_definition_request()) ->
    {ok, put_report_definition_response(), tuple()} |
    {error, any()} |
    {error, put_report_definition_errors(), tuple()}.
put_report_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_report_definition(Client, Input, []).

-spec put_report_definition(aws_client:aws_client(), put_report_definition_request(), proplists:proplist()) ->
    {ok, put_report_definition_response(), tuple()} |
    {error, any()} |
    {error, put_report_definition_errors(), tuple()}.
put_report_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutReportDefinition">>, Input, Options).

%% @doc Associates a set of tags with a report definition.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates a set of tags from a report definition.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"cur">>},
    Host = build_host(<<"cur">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSOrigamiServiceGatewayService.", Action/binary>>}
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
