%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR Serverless is a new deployment option for Amazon EMR.
%%
%% EMR Serverless provides a serverless runtime environment that simplifies
%% running analytics applications using the latest open source frameworks
%% such as Apache Spark and Apache Hive. With EMR Serverless, you don’t have
%% to configure, optimize, secure, or operate clusters to run applications
%% with these frameworks.
%%
%% The API reference to Amazon EMR Serverless is `emr-serverless'. The
%% `emr-serverless' prefix is used in the following scenarios:
%%
%% <ul> <li> It is the prefix in the CLI commands for Amazon EMR Serverless.
%% For example, `aws emr-serverless start-job-run'.
%%
%% </li> <li> It is the prefix before IAM policy actions for Amazon EMR
%% Serverless. For example, `"Action": ["emr-serverless:StartJobRun"]'. For
%% more information, see Policy actions for Amazon EMR Serverless.
%%
%% </li> <li> It is the prefix used in Amazon EMR Serverless service
%% endpoints. For example, `emr-serverless.us-east-2.amazonaws.com'.
%%
%% </li> </ul>
-module(aws_emr_serverless).

-export([cancel_job_run/4,
         cancel_job_run/5,
         create_application/2,
         create_application/3,
         delete_application/3,
         delete_application/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_dashboard_for_job_run/3,
         get_dashboard_for_job_run/5,
         get_dashboard_for_job_run/6,
         get_job_run/3,
         get_job_run/5,
         get_job_run/6,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_job_runs/2,
         list_job_runs/4,
         list_job_runs/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_application/3,
         start_application/4,
         start_job_run/3,
         start_job_run/4,
         stop_application/3,
         stop_application/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a job run.
cancel_job_run(Client, ApplicationId, JobRunId, Input) ->
    cancel_job_run(Client, ApplicationId, JobRunId, Input, []).
cancel_job_run(Client, ApplicationId, JobRunId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), ""],
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

%% @doc Creates an application.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Deletes an application.
%%
%% An application has to be in a stopped or created state in order to be
%% deleted.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Displays detailed information about a specified application.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a URL to access the job run dashboard.
get_dashboard_for_job_run(Client, ApplicationId, JobRunId)
  when is_map(Client) ->
    get_dashboard_for_job_run(Client, ApplicationId, JobRunId, #{}, #{}).

get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, []).

get_dashboard_for_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), "/dashboard"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays detailed information about a job run.
get_job_run(Client, ApplicationId, JobRunId)
  when is_map(Client) ->
    get_job_run(Client, ApplicationId, JobRunId, #{}, #{}).

get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, []).

get_job_run(Client, ApplicationId, JobRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns/", aws_util:encode_uri(JobRunId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists applications based on a set of parameters.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job runs based on a set of parameters.
list_job_runs(Client, ApplicationId)
  when is_map(Client) ->
    list_job_runs(Client, ApplicationId, #{}, #{}).

list_job_runs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, ApplicationId, QueryMap, HeadersMap, []).

list_job_runs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdAtAfter">>, maps:get(<<"createdAtAfter">>, QueryMap, undefined)},
        {<<"createdAtBefore">>, maps:get(<<"createdAtBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to the resources.
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

%% @doc Starts a specified application and initializes initial capacity if
%% configured.
start_application(Client, ApplicationId, Input) ->
    start_application(Client, ApplicationId, Input, []).
start_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/start"],
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

%% @doc Starts a job run.
start_job_run(Client, ApplicationId, Input) ->
    start_job_run(Client, ApplicationId, Input, []).
start_job_run(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/jobruns"],
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

%% @doc Stops a specified application and releases initial capacity if
%% configured.
%%
%% All scheduled and running jobs must be completed or cancelled before
%% stopping an application.
stop_application(Client, ApplicationId, Input) ->
    stop_application(Client, ApplicationId, Input, []).
stop_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/stop"],
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

%% @doc Assigns tags to resources.
%%
%% A tag is a label that you assign to an AWS resource. Each tag consists of
%% a key and an optional value, both of which you define. Tags enable you to
%% categorize your AWS resources by attributes such as purpose, owner, or
%% environment. When you have many resources of the same type, you can
%% quickly identify a specific resource based on the tags you've assigned to
%% it.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from resources.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Updates a specified application.
%%
%% An application has to be in a stopped or created state in order to be
%% updated.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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
    Client1 = Client#{service => <<"emr-serverless">>},
    Host = build_host(<<"emr-serverless">>, Client1),
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
