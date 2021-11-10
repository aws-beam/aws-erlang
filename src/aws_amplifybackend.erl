%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Amplify Admin API
-module(aws_amplifybackend).

-export([clone_backend/4,
         clone_backend/5,
         create_backend/2,
         create_backend/3,
         create_backend_api/3,
         create_backend_api/4,
         create_backend_auth/3,
         create_backend_auth/4,
         create_backend_config/3,
         create_backend_config/4,
         create_token/3,
         create_token/4,
         delete_backend/4,
         delete_backend/5,
         delete_backend_api/4,
         delete_backend_api/5,
         delete_backend_auth/4,
         delete_backend_auth/5,
         delete_token/4,
         delete_token/5,
         generate_backend_api_models/4,
         generate_backend_api_models/5,
         get_backend/3,
         get_backend/4,
         get_backend_api/4,
         get_backend_api/5,
         get_backend_api_models/4,
         get_backend_api_models/5,
         get_backend_auth/4,
         get_backend_auth/5,
         get_backend_job/4,
         get_backend_job/6,
         get_backend_job/7,
         get_token/3,
         get_token/5,
         get_token/6,
         import_backend_auth/4,
         import_backend_auth/5,
         list_backend_jobs/4,
         list_backend_jobs/5,
         remove_all_backends/3,
         remove_all_backends/4,
         remove_backend_config/3,
         remove_backend_config/4,
         update_backend_api/4,
         update_backend_api/5,
         update_backend_auth/4,
         update_backend_auth/5,
         update_backend_config/3,
         update_backend_config/4,
         update_backend_job/5,
         update_backend_job/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation clones an existing backend.
clone_backend(Client, AppId, BackendEnvironmentName, Input) ->
    clone_backend(Client, AppId, BackendEnvironmentName, Input, []).
clone_backend(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/environments/", aws_util:encode_uri(BackendEnvironmentName), "/clone"],
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

%% @doc This operation creates a backend for an Amplify app.
%%
%% Backends are automatically created at the time of app creation.
create_backend(Client, Input) ->
    create_backend(Client, Input, []).
create_backend(Client, Input0, Options0) ->
    Method = post,
    Path = ["/backend"],
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

%% @doc Creates a new backend API resource.
create_backend_api(Client, AppId, Input) ->
    create_backend_api(Client, AppId, Input, []).
create_backend_api(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api"],
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

%% @doc Creates a new backend authentication resource.
create_backend_auth(Client, AppId, Input) ->
    create_backend_auth(Client, AppId, Input, []).
create_backend_auth(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth"],
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

%% @doc Creates a config object for a backend.
create_backend_config(Client, AppId, Input) ->
    create_backend_config(Client, AppId, Input, []).
create_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config"],
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

%% @doc Generates a one-time challenge code to authenticate a user into your
%% Amplify Admin UI.
create_token(Client, AppId, Input) ->
    create_token(Client, AppId, Input, []).
create_token(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge"],
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

%% @doc Removes an existing environment from your Amplify project.
delete_backend(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend(Client, AppId, BackendEnvironmentName, Input, []).
delete_backend(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/environments/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes an existing backend API resource.
delete_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend_api(Client, AppId, BackendEnvironmentName, Input, []).
delete_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes an existing backend authentication resource.
delete_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    delete_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).
delete_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/remove"],
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

%% @doc Deletes the challenge token based on the given appId and sessionId.
delete_token(Client, AppId, SessionId, Input) ->
    delete_token(Client, AppId, SessionId, Input, []).
delete_token(Client, AppId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge/", aws_util:encode_uri(SessionId), "/remove"],
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

%% @doc Generates a model schema for an existing backend API resource.
generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input) ->
    generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input, []).
generate_backend_api_models(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/generateModels"],
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

%% @doc Provides project-level details for your Amplify UI project.
get_backend(Client, AppId, Input) ->
    get_backend(Client, AppId, Input, []).
get_backend(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/details"],
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

%% @doc Gets the details for a backend API.
get_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_api(Client, AppId, BackendEnvironmentName, Input, []).
get_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/details"],
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

%% @doc Generates a model schema for existing backend API resource.
get_backend_api_models(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_api_models(Client, AppId, BackendEnvironmentName, Input, []).
get_backend_api_models(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), "/getModels"],
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

%% @doc Gets a backend auth details.
get_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    get_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).
get_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/details"],
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

%% @doc Returns information about a specific job.
get_backend_job(Client, AppId, BackendEnvironmentName, JobId)
  when is_map(Client) ->
    get_backend_job(Client, AppId, BackendEnvironmentName, JobId, #{}, #{}).

get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap, []).

get_backend_job(Client, AppId, BackendEnvironmentName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), "/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the challenge token based on the given appId and sessionId.
get_token(Client, AppId, SessionId)
  when is_map(Client) ->
    get_token(Client, AppId, SessionId, #{}, #{}).

get_token(Client, AppId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_token(Client, AppId, SessionId, QueryMap, HeadersMap, []).

get_token(Client, AppId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/backend/", aws_util:encode_uri(AppId), "/challenge/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports an existing backend authentication resource.
import_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    import_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).
import_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), "/import"],
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

%% @doc Lists the jobs for the backend of an Amplify app.
list_backend_jobs(Client, AppId, BackendEnvironmentName, Input) ->
    list_backend_jobs(Client, AppId, BackendEnvironmentName, Input, []).
list_backend_jobs(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc Removes all backend environments from your Amplify project.
remove_all_backends(Client, AppId, Input) ->
    remove_all_backends(Client, AppId, Input, []).
remove_all_backends(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/remove"],
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

%% @doc Removes the AWS resources required to access the Amplify Admin UI.
remove_backend_config(Client, AppId, Input) ->
    remove_backend_config(Client, AppId, Input, []).
remove_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config/remove"],
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

%% @doc Updates an existing backend API resource.
update_backend_api(Client, AppId, BackendEnvironmentName, Input) ->
    update_backend_api(Client, AppId, BackendEnvironmentName, Input, []).
update_backend_api(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/api/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc Updates an existing backend authentication resource.
update_backend_auth(Client, AppId, BackendEnvironmentName, Input) ->
    update_backend_auth(Client, AppId, BackendEnvironmentName, Input, []).
update_backend_auth(Client, AppId, BackendEnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/auth/", aws_util:encode_uri(BackendEnvironmentName), ""],
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

%% @doc Updates the AWS resources required to access the Amplify Admin UI.
update_backend_config(Client, AppId, Input) ->
    update_backend_config(Client, AppId, Input, []).
update_backend_config(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/config/update"],
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

%% @doc Updates a specific job.
update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input) ->
    update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input, []).
update_backend_job(Client, AppId, BackendEnvironmentName, JobId, Input0, Options0) ->
    Method = post,
    Path = ["/backend/", aws_util:encode_uri(AppId), "/job/", aws_util:encode_uri(BackendEnvironmentName), "/", aws_util:encode_uri(JobId), ""],
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
    Client1 = Client#{service => <<"amplifybackend">>},
    Host = build_host(<<"amplifybackend">>, Client1),
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
