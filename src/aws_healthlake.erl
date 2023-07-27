%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS HealthLake is a HIPAA eligibile service that allows customers to
%% store, transform, query, and analyze their FHIR-formatted data in a
%% consistent fashion in the cloud.
-module(aws_healthlake).

-export([create_fhir_datastore/2,
         create_fhir_datastore/3,
         delete_fhir_datastore/2,
         delete_fhir_datastore/3,
         describe_fhir_datastore/2,
         describe_fhir_datastore/3,
         describe_fhir_export_job/2,
         describe_fhir_export_job/3,
         describe_fhir_import_job/2,
         describe_fhir_import_job/3,
         list_fhir_datastores/2,
         list_fhir_datastores/3,
         list_fhir_export_jobs/2,
         list_fhir_export_jobs/3,
         list_fhir_import_jobs/2,
         list_fhir_import_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_fhir_export_job/2,
         start_fhir_export_job/3,
         start_fhir_import_job/2,
         start_fhir_import_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a data store that can ingest and export FHIR formatted data.
create_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fhir_datastore(Client, Input, []).
create_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFHIRDatastore">>, Input, Options).

%% @doc Deletes a data store.
delete_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fhir_datastore(Client, Input, []).
delete_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFHIRDatastore">>, Input, Options).

%% @doc Gets the properties associated with the FHIR data store, including
%% the data store ID, data store ARN, data store name, data store status,
%% when the data store was created, data store type version, and the data
%% store's endpoint.
describe_fhir_datastore(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_datastore(Client, Input, []).
describe_fhir_datastore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRDatastore">>, Input, Options).

%% @doc Displays the properties of a FHIR export job, including the ID, ARN,
%% name, and the status of the job.
describe_fhir_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_export_job(Client, Input, []).
describe_fhir_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRExportJob">>, Input, Options).

%% @doc Displays the properties of a FHIR import job, including the ID, ARN,
%% name, and the status of the job.
describe_fhir_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fhir_import_job(Client, Input, []).
describe_fhir_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFHIRImportJob">>, Input, Options).

%% @doc Lists all FHIR data stores that are in the user’s account, regardless
%% of data store status.
list_fhir_datastores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_datastores(Client, Input, []).
list_fhir_datastores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRDatastores">>, Input, Options).

%% @doc Lists all FHIR export jobs associated with an account and their
%% statuses.
list_fhir_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_export_jobs(Client, Input, []).
list_fhir_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRExportJobs">>, Input, Options).

%% @doc Lists all FHIR import jobs associated with an account and their
%% statuses.
list_fhir_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fhir_import_jobs(Client, Input, []).
list_fhir_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFHIRImportJobs">>, Input, Options).

%% @doc Returns a list of all existing tags associated with a data store.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Begins a FHIR export job.
start_fhir_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fhir_export_job(Client, Input, []).
start_fhir_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFHIRExportJob">>, Input, Options).

%% @doc Begins a FHIR Import job.
start_fhir_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fhir_import_job(Client, Input, []).
start_fhir_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFHIRImportJob">>, Input, Options).

%% @doc Adds a user specified key and value tag to a data store.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from a data store.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
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
    Client1 = Client#{service => <<"healthlake">>},
    Host = build_host(<<"healthlake">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"HealthLake.", Action/binary>>}
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
