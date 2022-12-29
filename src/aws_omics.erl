%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Omics API Reference.
%%
%% For an introduction to the service, see What is Amazon Omics? in the
%% Amazon Omics Developer Guide.
-module(aws_omics).

-export([batch_delete_read_set/3,
         batch_delete_read_set/4,
         cancel_annotation_import_job/3,
         cancel_annotation_import_job/4,
         cancel_run/3,
         cancel_run/4,
         cancel_variant_import_job/3,
         cancel_variant_import_job/4,
         create_annotation_store/2,
         create_annotation_store/3,
         create_reference_store/2,
         create_reference_store/3,
         create_run_group/2,
         create_run_group/3,
         create_sequence_store/2,
         create_sequence_store/3,
         create_variant_store/2,
         create_variant_store/3,
         create_workflow/2,
         create_workflow/3,
         delete_annotation_store/3,
         delete_annotation_store/4,
         delete_reference/4,
         delete_reference/5,
         delete_reference_store/3,
         delete_reference_store/4,
         delete_run/3,
         delete_run/4,
         delete_run_group/3,
         delete_run_group/4,
         delete_sequence_store/3,
         delete_sequence_store/4,
         delete_variant_store/3,
         delete_variant_store/4,
         delete_workflow/3,
         delete_workflow/4,
         get_annotation_import_job/2,
         get_annotation_import_job/4,
         get_annotation_import_job/5,
         get_annotation_store/2,
         get_annotation_store/4,
         get_annotation_store/5,
         get_read_set/4,
         get_read_set/6,
         get_read_set/7,
         get_read_set_activation_job/3,
         get_read_set_activation_job/5,
         get_read_set_activation_job/6,
         get_read_set_export_job/3,
         get_read_set_export_job/5,
         get_read_set_export_job/6,
         get_read_set_import_job/3,
         get_read_set_import_job/5,
         get_read_set_import_job/6,
         get_read_set_metadata/3,
         get_read_set_metadata/5,
         get_read_set_metadata/6,
         get_reference/4,
         get_reference/6,
         get_reference/7,
         get_reference_import_job/3,
         get_reference_import_job/5,
         get_reference_import_job/6,
         get_reference_metadata/3,
         get_reference_metadata/5,
         get_reference_metadata/6,
         get_reference_store/2,
         get_reference_store/4,
         get_reference_store/5,
         get_run/2,
         get_run/4,
         get_run/5,
         get_run_group/2,
         get_run_group/4,
         get_run_group/5,
         get_run_task/3,
         get_run_task/5,
         get_run_task/6,
         get_sequence_store/2,
         get_sequence_store/4,
         get_sequence_store/5,
         get_variant_import_job/2,
         get_variant_import_job/4,
         get_variant_import_job/5,
         get_variant_store/2,
         get_variant_store/4,
         get_variant_store/5,
         get_workflow/2,
         get_workflow/4,
         get_workflow/5,
         list_annotation_import_jobs/2,
         list_annotation_import_jobs/3,
         list_annotation_stores/2,
         list_annotation_stores/3,
         list_read_set_activation_jobs/3,
         list_read_set_activation_jobs/4,
         list_read_set_export_jobs/3,
         list_read_set_export_jobs/4,
         list_read_set_import_jobs/3,
         list_read_set_import_jobs/4,
         list_read_sets/3,
         list_read_sets/4,
         list_reference_import_jobs/3,
         list_reference_import_jobs/4,
         list_reference_stores/2,
         list_reference_stores/3,
         list_references/3,
         list_references/4,
         list_run_groups/1,
         list_run_groups/3,
         list_run_groups/4,
         list_run_tasks/2,
         list_run_tasks/4,
         list_run_tasks/5,
         list_runs/1,
         list_runs/3,
         list_runs/4,
         list_sequence_stores/2,
         list_sequence_stores/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_variant_import_jobs/2,
         list_variant_import_jobs/3,
         list_variant_stores/2,
         list_variant_stores/3,
         list_workflows/1,
         list_workflows/3,
         list_workflows/4,
         start_annotation_import_job/2,
         start_annotation_import_job/3,
         start_read_set_activation_job/3,
         start_read_set_activation_job/4,
         start_read_set_export_job/3,
         start_read_set_export_job/4,
         start_read_set_import_job/3,
         start_read_set_import_job/4,
         start_reference_import_job/3,
         start_reference_import_job/4,
         start_run/2,
         start_run/3,
         start_variant_import_job/2,
         start_variant_import_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_annotation_store/3,
         update_annotation_store/4,
         update_run_group/3,
         update_run_group/4,
         update_variant_store/3,
         update_variant_store/4,
         update_workflow/3,
         update_workflow/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more read sets.
batch_delete_read_set(Client, SequenceStoreId, Input) ->
    batch_delete_read_set(Client, SequenceStoreId, Input, []).
batch_delete_read_set(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/batch/delete"],
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

%% @doc Cancels an annotation import job.
cancel_annotation_import_job(Client, JobId, Input) ->
    cancel_annotation_import_job(Client, JobId, Input, []).
cancel_annotation_import_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/import/annotation/", aws_util:encode_uri(JobId), ""],
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

%% @doc Cancels a run.
cancel_run(Client, Id, Input) ->
    cancel_run(Client, Id, Input, []).
cancel_run(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/run/", aws_util:encode_uri(Id), "/cancel"],
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

%% @doc Cancels a variant import job.
cancel_variant_import_job(Client, JobId, Input) ->
    cancel_variant_import_job(Client, JobId, Input, []).
cancel_variant_import_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/import/variant/", aws_util:encode_uri(JobId), ""],
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

%% @doc Creates an annotation store.
create_annotation_store(Client, Input) ->
    create_annotation_store(Client, Input, []).
create_annotation_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore"],
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

%% @doc Creates a reference store.
create_reference_store(Client, Input) ->
    create_reference_store(Client, Input, []).
create_reference_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore"],
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

%% @doc Creates a run group.
create_run_group(Client, Input) ->
    create_run_group(Client, Input, []).
create_run_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runGroup"],
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

%% @doc Creates a sequence store.
create_sequence_store(Client, Input) ->
    create_sequence_store(Client, Input, []).
create_sequence_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore"],
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

%% @doc Creates a variant store.
create_variant_store(Client, Input) ->
    create_variant_store(Client, Input, []).
create_variant_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/variantStore"],
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

%% @doc Creates a workflow.
create_workflow(Client, Input) ->
    create_workflow(Client, Input, []).
create_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workflow"],
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

%% @doc Deletes an annotation store.
delete_annotation_store(Client, Name, Input) ->
    delete_annotation_store(Client, Name, Input, []).
delete_annotation_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a genome reference.
delete_reference(Client, Id, ReferenceStoreId, Input) ->
    delete_reference(Client, Id, ReferenceStoreId, Input, []).
delete_reference(Client, Id, ReferenceStoreId, Input0, Options0) ->
    Method = delete,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a genome reference store.
delete_reference_store(Client, Id, Input) ->
    delete_reference_store(Client, Id, Input, []).
delete_reference_store(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/referencestore/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a workflow run.
delete_run(Client, Id, Input) ->
    delete_run(Client, Id, Input, []).
delete_run(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/run/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a workflow run group.
delete_run_group(Client, Id, Input) ->
    delete_run_group(Client, Id, Input, []).
delete_run_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a sequence store.
delete_sequence_store(Client, Id, Input) ->
    delete_sequence_store(Client, Id, Input, []).
delete_sequence_store(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/sequencestore/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a variant store.
delete_variant_store(Client, Name, Input) ->
    delete_variant_store(Client, Name, Input, []).
delete_variant_store(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"force">>, <<"force">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a workflow.
delete_workflow(Client, Id, Input) ->
    delete_workflow(Client, Id, Input, []).
delete_workflow(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
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

%% @doc Gets information about an annotation import job.
get_annotation_import_job(Client, JobId)
  when is_map(Client) ->
    get_annotation_import_job(Client, JobId, #{}, #{}).

get_annotation_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_annotation_import_job(Client, JobId, QueryMap, HeadersMap, []).

get_annotation_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/import/annotation/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an annotation store.
get_annotation_store(Client, Name)
  when is_map(Client) ->
    get_annotation_store(Client, Name, #{}, #{}).

get_annotation_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_annotation_store(Client, Name, QueryMap, HeadersMap, []).

get_annotation_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a file from a read set.
get_read_set(Client, Id, SequenceStoreId, PartNumber)
  when is_map(Client) ->
    get_read_set(Client, Id, SequenceStoreId, PartNumber, #{}, #{}).

get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap, []).

get_read_set(Client, Id, SequenceStoreId, PartNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"file">>, maps:get(<<"file">>, QueryMap, undefined)},
        {<<"partNumber">>, PartNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set activation job.
get_read_set_activation_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_activation_job(Client, Id, SequenceStoreId, #{}, #{}).

get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

get_read_set_activation_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set export job.
get_read_set_export_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_export_job(Client, Id, SequenceStoreId, #{}, #{}).

get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

get_read_set_export_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a read set import job.
get_read_set_import_job(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_import_job(Client, Id, SequenceStoreId, #{}, #{}).

get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

get_read_set_import_job(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a read set.
get_read_set_metadata(Client, Id, SequenceStoreId)
  when is_map(Client) ->
    get_read_set_metadata(Client, Id, SequenceStoreId, #{}, #{}).

get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap, []).

get_read_set_metadata(Client, Id, SequenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readset/", aws_util:encode_uri(Id), "/metadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a reference file.
get_reference(Client, Id, ReferenceStoreId, PartNumber)
  when is_map(Client) ->
    get_reference(Client, Id, ReferenceStoreId, PartNumber, #{}, #{}).

get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap, []).

get_reference(Client, Id, ReferenceStoreId, PartNumber, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Range">>, maps:get(<<"Range">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"file">>, maps:get(<<"file">>, QueryMap, undefined)},
        {<<"partNumber">>, PartNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a reference import job.
get_reference_import_job(Client, Id, ReferenceStoreId)
  when is_map(Client) ->
    get_reference_import_job(Client, Id, ReferenceStoreId, #{}, #{}).

get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, []).

get_reference_import_job(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjob/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a genome reference's metadata.
get_reference_metadata(Client, Id, ReferenceStoreId)
  when is_map(Client) ->
    get_reference_metadata(Client, Id, ReferenceStoreId, #{}, #{}).

get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, []).

get_reference_metadata(Client, Id, ReferenceStoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/reference/", aws_util:encode_uri(Id), "/metadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a reference store.
get_reference_store(Client, Id)
  when is_map(Client) ->
    get_reference_store(Client, Id, #{}, #{}).

get_reference_store(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reference_store(Client, Id, QueryMap, HeadersMap, []).

get_reference_store(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/referencestore/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run.
get_run(Client, Id)
  when is_map(Client) ->
    get_run(Client, Id, #{}, #{}).

get_run(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run(Client, Id, QueryMap, HeadersMap, []).

get_run(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"export">>, maps:get(<<"export">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run group.
get_run_group(Client, Id)
  when is_map(Client) ->
    get_run_group(Client, Id, #{}, #{}).

get_run_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run_group(Client, Id, QueryMap, HeadersMap, []).

get_run_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow run task.
get_run_task(Client, Id, TaskId)
  when is_map(Client) ->
    get_run_task(Client, Id, TaskId, #{}, #{}).

get_run_task(Client, Id, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_run_task(Client, Id, TaskId, QueryMap, HeadersMap, []).

get_run_task(Client, Id, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), "/task/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a sequence store.
get_sequence_store(Client, Id)
  when is_map(Client) ->
    get_sequence_store(Client, Id, #{}, #{}).

get_sequence_store(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sequence_store(Client, Id, QueryMap, HeadersMap, []).

get_sequence_store(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sequencestore/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a variant import job.
get_variant_import_job(Client, JobId)
  when is_map(Client) ->
    get_variant_import_job(Client, JobId, #{}, #{}).

get_variant_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_variant_import_job(Client, JobId, QueryMap, HeadersMap, []).

get_variant_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/import/variant/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a variant store.
get_variant_store(Client, Name)
  when is_map(Client) ->
    get_variant_store(Client, Name, #{}, #{}).

get_variant_store(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_variant_store(Client, Name, QueryMap, HeadersMap, []).

get_variant_store(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a workflow.
get_workflow(Client, Id)
  when is_map(Client) ->
    get_workflow(Client, Id, #{}, #{}).

get_workflow(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, Id, QueryMap, HeadersMap, []).

get_workflow(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"export">>, maps:get(<<"export">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of annotation import jobs.
list_annotation_import_jobs(Client, Input) ->
    list_annotation_import_jobs(Client, Input, []).
list_annotation_import_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/annotations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of annotation stores.
list_annotation_stores(Client, Input) ->
    list_annotation_stores(Client, Input, []).
list_annotation_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of read set activation jobs.
list_read_set_activation_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_activation_jobs(Client, SequenceStoreId, Input, []).
list_read_set_activation_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of read set export jobs.
list_read_set_export_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_export_jobs(Client, SequenceStoreId, Input, []).
list_read_set_export_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of read set import jobs.
list_read_set_import_jobs(Client, SequenceStoreId, Input) ->
    list_read_set_import_jobs(Client, SequenceStoreId, Input, []).
list_read_set_import_jobs(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of read sets.
list_read_sets(Client, SequenceStoreId, Input) ->
    list_read_sets(Client, SequenceStoreId, Input, []).
list_read_sets(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/readsets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of reference import jobs.
list_reference_import_jobs(Client, ReferenceStoreId, Input) ->
    list_reference_import_jobs(Client, ReferenceStoreId, Input, []).
list_reference_import_jobs(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of reference stores.
list_reference_stores(Client, Input) ->
    list_reference_stores(Client, Input, []).
list_reference_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/referencestores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of references.
list_references(Client, ReferenceStoreId, Input) ->
    list_references(Client, ReferenceStoreId, Input, []).
list_references(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/references"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of run groups.
list_run_groups(Client)
  when is_map(Client) ->
    list_run_groups(Client, #{}, #{}).

list_run_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_run_groups(Client, QueryMap, HeadersMap, []).

list_run_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runGroup"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tasks for a run.
list_run_tasks(Client, Id)
  when is_map(Client) ->
    list_run_tasks(Client, Id, #{}, #{}).

list_run_tasks(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_run_tasks(Client, Id, QueryMap, HeadersMap, []).

list_run_tasks(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run/", aws_util:encode_uri(Id), "/task"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of runs.
list_runs(Client)
  when is_map(Client) ->
    list_runs(Client, #{}, #{}).

list_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_runs(Client, QueryMap, HeadersMap, []).

list_runs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/run"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"runGroupId">>, maps:get(<<"runGroupId">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of sequence stores.
list_sequence_stores(Client, Input) ->
    list_sequence_stores(Client, Input, []).
list_sequence_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of tags for a resource.
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

%% @doc Retrieves a list of variant import jobs.
list_variant_import_jobs(Client, Input) ->
    list_variant_import_jobs(Client, Input, []).
list_variant_import_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/variants"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of variant stores.
list_variant_stores(Client, Input) ->
    list_variant_stores(Client, Input, []).
list_variant_stores(Client, Input0, Options0) ->
    Method = post,
    Path = ["/variantStores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Retrieves a list of workflows.
list_workflows(Client)
  when is_map(Client) ->
    list_workflows(Client, #{}, #{}).

list_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workflows(Client, QueryMap, HeadersMap, []).

list_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workflow"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"startingToken">>, maps:get(<<"startingToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts an annotation import job.
start_annotation_import_job(Client, Input) ->
    start_annotation_import_job(Client, Input, []).
start_annotation_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/annotation"],
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

%% @doc Starts a read set activation job.
start_read_set_activation_job(Client, SequenceStoreId, Input) ->
    start_read_set_activation_job(Client, SequenceStoreId, Input, []).
start_read_set_activation_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/activationjob"],
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

%% @doc Starts a read set export job.
start_read_set_export_job(Client, SequenceStoreId, Input) ->
    start_read_set_export_job(Client, SequenceStoreId, Input, []).
start_read_set_export_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/exportjob"],
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

%% @doc Starts a read set import job.
start_read_set_import_job(Client, SequenceStoreId, Input) ->
    start_read_set_import_job(Client, SequenceStoreId, Input, []).
start_read_set_import_job(Client, SequenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/sequencestore/", aws_util:encode_uri(SequenceStoreId), "/importjob"],
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

%% @doc Starts a reference import job.
start_reference_import_job(Client, ReferenceStoreId, Input) ->
    start_reference_import_job(Client, ReferenceStoreId, Input, []).
start_reference_import_job(Client, ReferenceStoreId, Input0, Options0) ->
    Method = post,
    Path = ["/referencestore/", aws_util:encode_uri(ReferenceStoreId), "/importjob"],
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

%% @doc Starts a run.
start_run(Client, Input) ->
    start_run(Client, Input, []).
start_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/run"],
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

%% @doc Starts a variant import job.
start_variant_import_job(Client, Input) ->
    start_variant_import_job(Client, Input, []).
start_variant_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import/variant"],
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

%% @doc Tags a resource.
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

%% @doc Removes tags from a resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an annotation store.
update_annotation_store(Client, Name, Input) ->
    update_annotation_store(Client, Name, Input, []).
update_annotation_store(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/annotationStore/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a run group.
update_run_group(Client, Id, Input) ->
    update_run_group(Client, Id, Input, []).
update_run_group(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/runGroup/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates a variant store.
update_variant_store(Client, Name, Input) ->
    update_variant_store(Client, Name, Input, []).
update_variant_store(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/variantStore/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates a workflow.
update_workflow(Client, Id, Input) ->
    update_workflow(Client, Id, Input, []).
update_workflow(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/workflow/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"omics">>},
    Host = build_host(<<"omics">>, Client1),
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
