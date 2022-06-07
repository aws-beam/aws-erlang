%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Import/Export Service
%%
%% AWS Import/Export accelerates transferring large amounts of data between
%% the AWS cloud and portable storage devices that you mail to us.
%%
%% AWS Import/Export transfers data directly onto and off of your storage
%% devices using Amazon's high-speed internal network and bypassing the
%% Internet. For large data sets, AWS Import/Export is often faster than
%% Internet transfer and more cost effective than upgrading your
%% connectivity.
-module(aws_import_export).

-export([cancel_job/2,
         cancel_job/3,
         create_job/2,
         create_job/3,
         get_shipping_label/2,
         get_shipping_label/3,
         get_status/2,
         get_status/3,
         list_jobs/2,
         list_jobs/3,
         update_job/2,
         update_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation cancels a specified job.
%%
%% Only the job owner can cancel it. The operation fails if the job has
%% already started or is complete.
cancel_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_job(Client, Input, []).
cancel_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelJob">>, Input, Options).

%% @doc This operation initiates the process of scheduling an upload or
%% download of your data.
%%
%% You include in the request a manifest that describes the data transfer
%% specifics. The response to the request includes a job ID, which you can
%% use in other operations, a signature that you use to identify your storage
%% device, and the address where you should ship your storage device.
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc This operation generates a pre-paid UPS shipping label that you will
%% use to ship your device to AWS for processing.
get_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_shipping_label(Client, Input, []).
get_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetShippingLabel">>, Input, Options).

%% @doc This operation returns information about a job, including where the
%% job is in the processing pipeline, the status of the results, and the
%% signature value associated with the job.
%%
%% You can only return information about jobs you own.
get_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_status(Client, Input, []).
get_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatus">>, Input, Options).

%% @doc This operation returns the jobs associated with the requester.
%%
%% AWS Import/Export lists the jobs in reverse chronological order based on
%% the date of creation. For example if Job Test1 was created 2009Dec30 and
%% Test2 was created 2010Feb05, the ListJobs operation would return Test2
%% followed by Test1.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc You use this operation to change the parameters specified in the
%% original manifest file by supplying a new manifest file.
%%
%% The manifest file attached to this request replaces the original manifest
%% file. You can only use the operation after a CreateJob request but before
%% the data transfer starts and you can only use it on jobs you own.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).
update_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJob">>, Input, Options).

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
    Client1 = Client#{service => <<"importexport">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"importexport">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-06-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
