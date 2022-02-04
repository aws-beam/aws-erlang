%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The FinSpace APIs let you take actions inside the FinSpace.
-module(aws_finspace_data).

-export([create_changeset/3,
         create_changeset/4,
         create_data_view/3,
         create_data_view/4,
         create_dataset/2,
         create_dataset/3,
         delete_dataset/3,
         delete_dataset/4,
         get_changeset/3,
         get_changeset/5,
         get_changeset/6,
         get_data_view/3,
         get_data_view/5,
         get_data_view/6,
         get_dataset/2,
         get_dataset/4,
         get_dataset/5,
         get_programmatic_access_credentials/2,
         get_programmatic_access_credentials/4,
         get_programmatic_access_credentials/5,
         get_working_location/2,
         get_working_location/3,
         list_changesets/2,
         list_changesets/4,
         list_changesets/5,
         list_data_views/2,
         list_data_views/4,
         list_data_views/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         update_changeset/4,
         update_changeset/5,
         update_dataset/3,
         update_dataset/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Changeset in a FinSpace Dataset.
create_changeset(Client, DatasetId, Input) ->
    create_changeset(Client, DatasetId, Input, []).
create_changeset(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
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

%% @doc Creates a Dataview for a Dataset.
create_data_view(Client, DatasetId, Input) ->
    create_data_view(Client, DatasetId, Input, []).
create_data_view(Client, DatasetId, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
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

%% @doc Creates a new FinSpace Dataset.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasetsv2"],
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

%% @doc Deletes a FinSpace Dataset.
delete_dataset(Client, DatasetId, Input) ->
    delete_dataset(Client, DatasetId, Input, []).
delete_dataset(Client, DatasetId, Input0, Options0) ->
    Method = delete,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get information about a Changeset.
get_changeset(Client, ChangesetId, DatasetId)
  when is_map(Client) ->
    get_changeset(Client, ChangesetId, DatasetId, #{}, #{}).

get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, []).

get_changeset(Client, ChangesetId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Dataview.
get_data_view(Client, DataViewId, DatasetId)
  when is_map(Client) ->
    get_data_view(Client, DataViewId, DatasetId, #{}, #{}).

get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, []).

get_data_view(Client, DataViewId, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2/", aws_util:encode_uri(DataViewId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a Dataset.
get_dataset(Client, DatasetId)
  when is_map(Client) ->
    get_dataset(Client, DatasetId, #{}, #{}).

get_dataset(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataset(Client, DatasetId, QueryMap, HeadersMap, []).

get_dataset(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Request programmatic credentials to use with FinSpace SDK.
get_programmatic_access_credentials(Client, EnvironmentId)
  when is_map(Client) ->
    get_programmatic_access_credentials(Client, EnvironmentId, #{}, #{}).

get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, []).

get_programmatic_access_credentials(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/credentials/programmatic"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"durationInMinutes">>, maps:get(<<"durationInMinutes">>, QueryMap, undefined)},
        {<<"environmentId">>, EnvironmentId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A temporary Amazon S3 location, where you can copy your files from a
%% source location to stage or use as a scratch space in FinSpace notebook.
get_working_location(Client, Input) ->
    get_working_location(Client, Input, []).
get_working_location(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workingLocationV1"],
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

%% @doc Lists the FinSpace Changesets for a Dataset.
list_changesets(Client, DatasetId)
  when is_map(Client) ->
    list_changesets(Client, DatasetId, #{}, #{}).

list_changesets(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_changesets(Client, DatasetId, QueryMap, HeadersMap, []).

list_changesets(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all available Dataviews for a Dataset.
list_data_views(Client, DatasetId)
  when is_map(Client) ->
    list_data_views(Client, DatasetId, #{}, #{}).

list_data_views(Client, DatasetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_views(Client, DatasetId, QueryMap, HeadersMap, []).

list_data_views(Client, DatasetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/dataviewsv2"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all of the active Datasets that a user has access to.
list_datasets(Client)
  when is_map(Client) ->
    list_datasets(Client, #{}, #{}).

list_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, QueryMap, HeadersMap, []).

list_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasetsv2"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a FinSpace Changeset.
update_changeset(Client, ChangesetId, DatasetId, Input) ->
    update_changeset(Client, ChangesetId, DatasetId, Input, []).
update_changeset(Client, ChangesetId, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetId), "/changesetsv2/", aws_util:encode_uri(ChangesetId), ""],
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

%% @doc Updates a FinSpace Dataset.
update_dataset(Client, DatasetId, Input) ->
    update_dataset(Client, DatasetId, Input, []).
update_dataset(Client, DatasetId, Input0, Options0) ->
    Method = put,
    Path = ["/datasetsv2/", aws_util:encode_uri(DatasetId), ""],
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
    Client1 = Client#{service => <<"finspace-api">>},
    Host = build_host(<<"finspace-api">>, Client1),
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
