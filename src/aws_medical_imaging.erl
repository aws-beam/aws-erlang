%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the AWS HealthImaging API Reference.
%%
%% AWS HealthImaging is an AWS service for storing, accessing, and analyzing
%% medical images. For an introduction to the service, see the AWS
%% HealthImaging Developer Guide .
%%
%% We recommend using one of the AWS Software Development Kits (SDKs) for
%% your programming language, as they take care of request authentication,
%% serialization, and connection management. For more information, see Tools
%% to build on AWS.
%%
%% For information about using AWS HealthImaging API actions in one of the
%% language-specific AWS SDKs, refer to the See Also link at the end of each
%% section that describes an API action or data type.
%%
%% The following sections list AWS HealthImaging API actions categorized
%% according to functionality. Links are provided to actions within this
%% Reference, along with links back to corresponding sections in the AWS
%% HealthImaging Developer Guide so you can view console procedures and
%% CLI/SDK code examples.
%%
%% == Data store actions ==
%%
%% <ul> <li> CreateDatastore – See Creating a data store.
%%
%% </li> <li> GetDatastore – See Getting data store properties.
%%
%% </li> <li> ListDatastores – See Listing data stores.
%%
%% </li> <li> DeleteDatastore – See Deleting a data store.
%%
%% </li> </ul> == Import job actions ==
%%
%% <ul> <li> StartDICOMImportJob – See Starting an import job.
%%
%% </li> <li> GetDICOMImportJob – See Getting import job properties.
%%
%% </li> <li> ListDICOMImportJobs – See Listing import jobs.
%%
%% </li> </ul> == Image set access actions ==
%%
%% <ul> <li> SearchImageSets – See Searching image sets.
%%
%% </li> <li> GetImageSet – See Getting image set properties.
%%
%% </li> <li> GetImageSetMetadata – See Getting image set metadata.
%%
%% </li> <li> GetImageFrame – See Getting image set pixel data.
%%
%% </li> </ul> == Image set modification actions ==
%%
%% <ul> <li> ListImageSetVersions – See Listing image set versions.
%%
%% </li> <li> UpdateImageSetMetadata – See Updating image set metadata.
%%
%% </li> <li> CopyImageSet – See Copying an image set.
%%
%% </li> <li> DeleteImageSet – See Deleting an image set.
%%
%% </li> </ul> == Tagging actions ==
%%
%% <ul> <li> TagResource – See Tagging a data store and Tagging an image set.
%%
%% </li> <li> ListTagsForResource – See Tagging a data store and Tagging an
%% image set.
%%
%% </li> <li> UntagResource – See Tagging a data store and Tagging an image
%% set.
%%
%% </li> </ul>
-module(aws_medical_imaging).

-export([copy_image_set/4,
         copy_image_set/5,
         create_datastore/2,
         create_datastore/3,
         delete_datastore/3,
         delete_datastore/4,
         delete_image_set/4,
         delete_image_set/5,
         get_d_i_c_o_m_import_job/3,
         get_d_i_c_o_m_import_job/5,
         get_d_i_c_o_m_import_job/6,
         get_datastore/2,
         get_datastore/4,
         get_datastore/5,
         get_image_frame/4,
         get_image_frame/5,
         get_image_set/4,
         get_image_set/5,
         get_image_set_metadata/4,
         get_image_set_metadata/5,
         list_d_i_c_o_m_import_jobs/2,
         list_d_i_c_o_m_import_jobs/4,
         list_d_i_c_o_m_import_jobs/5,
         list_datastores/1,
         list_datastores/3,
         list_datastores/4,
         list_image_set_versions/4,
         list_image_set_versions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         search_image_sets/3,
         search_image_sets/4,
         start_d_i_c_o_m_import_job/3,
         start_d_i_c_o_m_import_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_image_set_metadata/4,
         update_image_set_metadata/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Copy an image set.
copy_image_set(Client, DatastoreId, SourceImageSetId, Input) ->
    copy_image_set(Client, DatastoreId, SourceImageSetId, Input, []).
copy_image_set(Client, DatastoreId, SourceImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(SourceImageSetId), "/copyImageSet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a data store.
create_datastore(Client, Input) ->
    create_datastore(Client, Input, []).
create_datastore(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datastore"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a data store.
%%
%% Before a data store can be deleted, you must first delete all image sets
%% within it.
delete_datastore(Client, DatastoreId, Input) ->
    delete_datastore(Client, DatastoreId, Input, []).
delete_datastore(Client, DatastoreId, Input0, Options0) ->
    Method = delete,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an image set.
delete_image_set(Client, DatastoreId, ImageSetId, Input) ->
    delete_image_set(Client, DatastoreId, ImageSetId, Input, []).
delete_image_set(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/deleteImageSet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get the import job properties to learn more about the job or job
%% progress.
get_d_i_c_o_m_import_job(Client, DatastoreId, JobId)
  when is_map(Client) ->
    get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, #{}, #{}).

get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap, []).

get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getDICOMImportJob/datastore/", aws_util:encode_uri(DatastoreId), "/job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get data store properties.
get_datastore(Client, DatastoreId)
  when is_map(Client) ->
    get_datastore(Client, DatastoreId, #{}, #{}).

get_datastore(Client, DatastoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datastore(Client, DatastoreId, QueryMap, HeadersMap, []).

get_datastore(Client, DatastoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an image frame (pixel data) for an image set.
get_image_frame(Client, DatastoreId, ImageSetId, Input) ->
    get_image_frame(Client, DatastoreId, ImageSetId, Input, []).
get_image_frame(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageFrame"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get image set properties.
get_image_set(Client, DatastoreId, ImageSetId, Input) ->
    get_image_set(Client, DatastoreId, ImageSetId, Input, []).
get_image_set(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageSet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"version">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get metadata attributes for an image set.
get_image_set_metadata(Client, DatastoreId, ImageSetId, Input) ->
    get_image_set_metadata(Client, DatastoreId, ImageSetId, Input, []).
get_image_set_metadata(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageSetMetadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"version">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Encoding">>, <<"contentEncoding">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc List import jobs created by this AWS account for a specific data
%% store.
list_d_i_c_o_m_import_jobs(Client, DatastoreId)
  when is_map(Client) ->
    list_d_i_c_o_m_import_jobs(Client, DatastoreId, #{}, #{}).

list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap, []).

list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listDICOMImportJobs/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"jobStatus">>, maps:get(<<"jobStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List data stores created by this AWS account.
list_datastores(Client)
  when is_map(Client) ->
    list_datastores(Client, #{}, #{}).

list_datastores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datastores(Client, QueryMap, HeadersMap, []).

list_datastores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastore"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"datastoreStatus">>, maps:get(<<"datastoreStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List image set versions.
list_image_set_versions(Client, DatastoreId, ImageSetId, Input) ->
    list_image_set_versions(Client, DatastoreId, ImageSetId, Input, []).
list_image_set_versions(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/listImageSetVersions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all tags associated with a medical imaging resource.
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

%% @doc Search image sets based on defined input attributes.
search_image_sets(Client, DatastoreId, Input) ->
    search_image_sets(Client, DatastoreId, Input, []).
search_image_sets(Client, DatastoreId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/searchImageSets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start importing bulk data into an `ACTIVE' data store.
%%
%% The import job imports DICOM P10 files found in the S3 prefix specified by
%% the `inputS3Uri' parameter. The import job stores processing results
%% in the file specified by the `outputS3Uri' parameter.
start_d_i_c_o_m_import_job(Client, DatastoreId, Input) ->
    start_d_i_c_o_m_import_job(Client, DatastoreId, Input, []).
start_d_i_c_o_m_import_job(Client, DatastoreId, Input0, Options0) ->
    Method = post,
    Path = ["/startDICOMImportJob/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a user-specifed key and value tag to a medical imaging resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a medical imaging resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Update image set metadata attributes.
update_image_set_metadata(Client, DatastoreId, ImageSetId, Input) ->
    update_image_set_metadata(Client, DatastoreId, ImageSetId, Input, []).
update_image_set_metadata(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/updateImageSetMetadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"latestVersion">>, <<"latestVersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"medical-imaging">>},
    Host = build_host(<<"medical-imaging">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

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
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
