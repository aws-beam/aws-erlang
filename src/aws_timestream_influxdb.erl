%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream for InfluxDB is a managed time-series database
%% engine that makes it easy for application developers and DevOps teams to
%% run InfluxDB databases on AWS for near real-time time-series applications
%% using open-source APIs.
%%
%% With Amazon Timestream for InfluxDB, it is easy to set up, operate, and
%% scale time-series workloads that can answer queries with single-digit
%% millisecond query response time.
-module(aws_timestream_influxdb).

-export([create_db_instance/2,
         create_db_instance/3,
         create_db_parameter_group/2,
         create_db_parameter_group/3,
         delete_db_instance/2,
         delete_db_instance/3,
         get_db_instance/2,
         get_db_instance/3,
         get_db_parameter_group/2,
         get_db_parameter_group/3,
         list_db_instances/2,
         list_db_instances/3,
         list_db_parameter_groups/2,
         list_db_parameter_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_db_instance/2,
         update_db_instance/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Timestream for InfluxDB DB instance.
create_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_instance(Client, Input, []).
create_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDbInstance">>, Input, Options).

%% @doc Creates a new Timestream for InfluxDB DB parameter group to associate
%% with DB instances.
create_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_db_parameter_group(Client, Input, []).
create_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDbParameterGroup">>, Input, Options).

%% @doc Deletes a Timestream for InfluxDB DB instance.
delete_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_db_instance(Client, Input, []).
delete_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDbInstance">>, Input, Options).

%% @doc Returns a Timestream for InfluxDB DB instance.
get_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_instance(Client, Input, []).
get_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbInstance">>, Input, Options).

%% @doc Returns a Timestream for InfluxDB DB parameter group.
get_db_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_db_parameter_group(Client, Input, []).
get_db_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDbParameterGroup">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB DB instances.
list_db_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_instances(Client, Input, []).
list_db_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbInstances">>, Input, Options).

%% @doc Returns a list of Timestream for InfluxDB DB parameter groups.
list_db_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_db_parameter_groups(Client, Input, []).
list_db_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDbParameterGroups">>, Input, Options).

%% @doc A list of tags applied to the resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Tags are composed of a Key/Value pairs.
%%
%% You can use tags to categorize and track your Timestream for InfluxDB
%% resources.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the tag from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a Timestream for InfluxDB DB instance.
update_db_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_db_instance(Client, Input, []).
update_db_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDbInstance">>, Input, Options).

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
    Client1 = Client#{service => <<"timestream-influxdb">>},
    Host = build_host(<<"timestream-influxdb">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AmazonTimestreamInfluxDB.", Action/binary>>}
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
