%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the API reference for AWS Data Exchange.
-module(aws_dataexchange).

-export([cancel_job/3,
         cancel_job/4,
         create_data_set/2,
         create_data_set/3,
         create_job/2,
         create_job/3,
         create_revision/3,
         create_revision/4,
         delete_asset/5,
         delete_asset/6,
         delete_data_set/3,
         delete_data_set/4,
         delete_revision/4,
         delete_revision/5,
         get_asset/4,
         get_asset/6,
         get_asset/7,
         get_data_set/2,
         get_data_set/4,
         get_data_set/5,
         get_job/2,
         get_job/4,
         get_job/5,
         get_revision/3,
         get_revision/5,
         get_revision/6,
         list_data_set_revisions/2,
         list_data_set_revisions/4,
         list_data_set_revisions/5,
         list_data_sets/1,
         list_data_sets/3,
         list_data_sets/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_revision_assets/3,
         list_revision_assets/5,
         list_revision_assets/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_job/3,
         start_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_asset/5,
         update_asset/6,
         update_data_set/3,
         update_data_set/4,
         update_revision/4,
         update_revision/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation cancels a job.
%%
%% Jobs can be cancelled only when they are in the WAITING state.
cancel_job(Client, JobId, Input) ->
    cancel_job(Client, JobId, Input, []).
cancel_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc This operation creates a data set.
create_data_set(Client, Input) ->
    create_data_set(Client, Input, []).
create_data_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates a job.
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/jobs"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates a revision for a data set.
create_revision(Client, DataSetId, Input) ->
    create_revision(Client, DataSetId, Input, []).
create_revision(Client, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions"],
    SuccessStatusCode = 201,
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

%% @doc This operation deletes an asset.
delete_asset(Client, AssetId, DataSetId, RevisionId, Input) ->
    delete_asset(Client, AssetId, DataSetId, RevisionId, Input, []).
delete_asset(Client, AssetId, DataSetId, RevisionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
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

%% @doc This operation deletes a data set.
delete_data_set(Client, DataSetId, Input) ->
    delete_data_set(Client, DataSetId, Input, []).
delete_data_set(Client, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc This operation deletes a revision.
delete_revision(Client, DataSetId, RevisionId, Input) ->
    delete_revision(Client, DataSetId, RevisionId, Input, []).
delete_revision(Client, DataSetId, RevisionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
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

%% @doc This operation returns information about an asset.
get_asset(Client, AssetId, DataSetId, RevisionId)
  when is_map(Client) ->
    get_asset(Client, AssetId, DataSetId, RevisionId, #{}, #{}).

get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap, []).

get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a data set.
get_data_set(Client, DataSetId)
  when is_map(Client) ->
    get_data_set(Client, DataSetId, #{}, #{}).

get_data_set(Client, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set(Client, DataSetId, QueryMap, HeadersMap, []).

get_data_set(Client, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a job.
get_job(Client, JobId)
  when is_map(Client) ->
    get_job(Client, JobId, #{}, #{}).

get_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, JobId, QueryMap, HeadersMap, []).

get_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a revision.
get_revision(Client, DataSetId, RevisionId)
  when is_map(Client) ->
    get_revision(Client, DataSetId, RevisionId, #{}, #{}).

get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap, []).

get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists a data set's revisions sorted by CreatedAt in
%% descending order.
list_data_set_revisions(Client, DataSetId)
  when is_map(Client) ->
    list_data_set_revisions(Client, DataSetId, #{}, #{}).

list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap, []).

list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists your data sets.
%%
%% When listing by origin OWNED, results are sorted by CreatedAt in
%% descending order. When listing by origin ENTITLED, there is no order and
%% the maxResults parameter is ignored.
list_data_sets(Client)
  when is_map(Client) ->
    list_data_sets(Client, #{}, #{}).

list_data_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, QueryMap, HeadersMap, []).

list_data_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists your jobs sorted by CreatedAt in descending
%% order.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dataSetId">>, maps:get(<<"dataSetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"revisionId">>, maps:get(<<"revisionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists a revision's assets sorted alphabetically in
%% descending order.
list_revision_assets(Client, DataSetId, RevisionId)
  when is_map(Client) ->
    list_revision_assets(Client, DataSetId, RevisionId, #{}, #{}).

list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap, []).

list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists the tags on the resource.
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

%% @doc This operation starts a job.
start_job(Client, JobId, Input) ->
    start_job(Client, JobId, Input, []).
start_job(Client, JobId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 202,
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

%% @doc This operation tags a resource.
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

%% @doc This operation removes one or more tags from a resource.
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

%% @doc This operation updates an asset.
update_asset(Client, AssetId, DataSetId, RevisionId, Input) ->
    update_asset(Client, AssetId, DataSetId, RevisionId, Input, []).
update_asset(Client, AssetId, DataSetId, RevisionId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
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

%% @doc This operation updates a data set.
update_data_set(Client, DataSetId, Input) ->
    update_data_set(Client, DataSetId, Input, []).
update_data_set(Client, DataSetId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc This operation updates a revision.
update_revision(Client, DataSetId, RevisionId, Input) ->
    update_revision(Client, DataSetId, RevisionId, Input, []).
update_revision(Client, DataSetId, RevisionId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"dataexchange">>},
    Host = build_host(<<"dataexchange">>, Client1),
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
