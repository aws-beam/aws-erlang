%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Elastic Transcoder Service</fullname>
%%
%% The AWS Elastic Transcoder Service.
-module(aws_transcoder).

-export([cancel_job/3,
         cancel_job/4,
         create_job/2,
         create_job/3,
         create_pipeline/2,
         create_pipeline/3,
         create_preset/2,
         create_preset/3,
         delete_pipeline/3,
         delete_pipeline/4,
         delete_preset/3,
         delete_preset/4,
         list_jobs_by_pipeline/4,
         list_jobs_by_pipeline/5,
         list_jobs_by_status/4,
         list_jobs_by_status/5,
         list_pipelines/3,
         list_pipelines/4,
         list_presets/3,
         list_presets/4,
         read_job/2,
         read_job/3,
         read_pipeline/2,
         read_pipeline/3,
         read_preset/2,
         read_preset/3,
         test_role/2,
         test_role/3,
         update_pipeline/3,
         update_pipeline/4,
         update_pipeline_notifications/3,
         update_pipeline_notifications/4,
         update_pipeline_status/3,
         update_pipeline_status/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The CancelJob operation cancels an unfinished job.
%%
%% <note> You can only cancel a job that has a status of
%% <code>Submitted</code>. To prevent a pipeline from starting to process a
%% job while you're getting the job identifier, use
%% <a>UpdatePipelineStatus</a> to temporarily pause the pipeline.
%%
%% </note>
cancel_job(Client, Id, Input) ->
    cancel_job(Client, Id, Input, []).
cancel_job(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2012-09-25/jobs/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc When you create a job, Elastic Transcoder returns JSON data that
%% includes the values that you specified plus information about the job that
%% is created.
%%
%% If you have specified more than one output for your jobs (for example, one
%% output for the Kindle Fire and another output for the Apple iPhone 4s),
%% you currently must use the Elastic Transcoder API to list the jobs (as
%% opposed to the AWS Console).
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/jobs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The CreatePipeline operation creates a pipeline with settings that
%% you specify.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/pipelines"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The CreatePreset operation creates a preset with settings that you
%% specify.
%%
%% <important> Elastic Transcoder checks the CreatePreset settings to ensure
%% that they meet Elastic Transcoder requirements and to determine whether
%% they comply with H.264 standards. If your settings are not valid for
%% Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response
%% (<code>ValidationException</code>) and does not create the preset. If the
%% settings are valid for Elastic Transcoder but aren't strictly compliant
%% with the H.264 standard, Elastic Transcoder creates the preset and returns
%% a warning message in the response. This helps you determine whether your
%% settings comply with the H.264 standard while giving you greater
%% flexibility with respect to the video that Elastic Transcoder produces.
%%
%% </important> Elastic Transcoder uses the H.264 video-compression format.
%% For more information, see the International Telecommunication Union
%% publication <i>Recommendation ITU-T H.264: Advanced video coding for
%% generic audiovisual services</i>.
create_preset(Client, Input) ->
    create_preset(Client, Input, []).
create_preset(Client, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/presets"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The DeletePipeline operation removes a pipeline.
%%
%% You can only delete a pipeline that has never been used or that is not
%% currently in use (doesn't contain any active jobs). If the pipeline is
%% currently in use, <code>DeletePipeline</code> returns an error.
delete_pipeline(Client, Id, Input) ->
    delete_pipeline(Client, Id, Input, []).
delete_pipeline(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2012-09-25/pipelines/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The DeletePreset operation removes a preset that you've added in an
%% AWS region.
%%
%% <note> You can't delete the default presets that are included with Elastic
%% Transcoder.
%%
%% </note>
delete_preset(Client, Id, Input) ->
    delete_preset(Client, Id, Input, []).
delete_preset(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2012-09-25/presets/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The ListJobsByPipeline operation gets a list of the jobs currently in
%% a pipeline.
%%
%% Elastic Transcoder returns all of the jobs currently in the specified
%% pipeline. The response body contains one element for each job that
%% satisfies the search criteria.
list_jobs_by_pipeline(Client, PipelineId, Ascending, PageToken)
  when is_map(Client) ->
    list_jobs_by_pipeline(Client, PipelineId, Ascending, PageToken, []).
list_jobs_by_pipeline(Client, PipelineId, Ascending, PageToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/jobsByPipeline/", http_uri:encode(PipelineId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"Ascending">>, Ascending},
        {<<"PageToken">>, PageToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListJobsByStatus operation gets a list of jobs that have a
%% specified status. The response body contains one element for each job that
%% satisfies the search criteria.
list_jobs_by_status(Client, Status, Ascending, PageToken)
  when is_map(Client) ->
    list_jobs_by_status(Client, Status, Ascending, PageToken, []).
list_jobs_by_status(Client, Status, Ascending, PageToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/jobsByStatus/", http_uri:encode(Status), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"Ascending">>, Ascending},
        {<<"PageToken">>, PageToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListPipelines operation gets a list of the pipelines associated
%% with the current AWS account.
list_pipelines(Client, Ascending, PageToken)
  when is_map(Client) ->
    list_pipelines(Client, Ascending, PageToken, []).
list_pipelines(Client, Ascending, PageToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/pipelines"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"Ascending">>, Ascending},
        {<<"PageToken">>, PageToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListPresets operation gets a list of the default presets included
%% with Elastic Transcoder and the presets that you've added in an AWS
%% region.
list_presets(Client, Ascending, PageToken)
  when is_map(Client) ->
    list_presets(Client, Ascending, PageToken, []).
list_presets(Client, Ascending, PageToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/presets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0 =
      [
        {<<"Ascending">>, Ascending},
        {<<"PageToken">>, PageToken}
      ],
    Query = [H || {_, V} = H <- Query0, V =/= undefined],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadJob operation returns detailed information about a job.
read_job(Client, Id)
  when is_map(Client) ->
    read_job(Client, Id, []).
read_job(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/jobs/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadPipeline operation gets detailed information about a
%% pipeline.
read_pipeline(Client, Id)
  when is_map(Client) ->
    read_pipeline(Client, Id, []).
read_pipeline(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/pipelines/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadPreset operation gets detailed information about a preset.
read_preset(Client, Id)
  when is_map(Client) ->
    read_preset(Client, Id, []).
read_preset(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2012-09-25/presets/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query = [],

    request(Client, get, Path, Query, Headers, undefined, Options, SuccessStatusCode).

%% @doc The TestRole operation tests the IAM role used to create the
%% pipeline.
%%
%% The <code>TestRole</code> action lets you determine whether the IAM role
%% you are using has sufficient permissions to let Elastic Transcoder perform
%% tasks associated with the transcoding process. The action attempts to
%% assume the specified IAM role, checks read access to the input and output
%% buckets, and tries to send a test notification to Amazon SNS topics that
%% you specify.
test_role(Client, Input) ->
    test_role(Client, Input, []).
test_role(Client, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/roleTests"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Use the <code>UpdatePipeline</code> operation to update settings for
%% a pipeline.
%%
%% <important> When you change pipeline settings, your changes take effect
%% immediately. Jobs that you have already submitted and that Elastic
%% Transcoder has not started to process are affected in addition to jobs
%% that you submit after you change settings.
%%
%% </important>
update_pipeline(Client, Id, Input) ->
    update_pipeline(Client, Id, Input, []).
update_pipeline(Client, Id, Input0, Options) ->
    Method = put,
    Path = ["/2012-09-25/pipelines/", http_uri:encode(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc With the UpdatePipelineNotifications operation, you can update Amazon
%% Simple Notification Service (Amazon SNS) notifications for a pipeline.
%%
%% When you update notifications for a pipeline, Elastic Transcoder returns
%% the values that you specified in the request.
update_pipeline_notifications(Client, Id, Input) ->
    update_pipeline_notifications(Client, Id, Input, []).
update_pipeline_notifications(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/pipelines/", http_uri:encode(Id), "/notifications"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc The UpdatePipelineStatus operation pauses or reactivates a pipeline,
%% so that the pipeline stops or restarts the processing of jobs.
%%
%% Changing the pipeline status is useful if you want to cancel one or more
%% jobs. You can't cancel jobs after Elastic Transcoder has started
%% processing them; if you pause the pipeline to which you submitted the
%% jobs, you have more time to get the job IDs for the jobs that you want to
%% cancel, and to send a <a>CancelJob</a> request.
update_pipeline_status(Client, Id, Input) ->
    update_pipeline_status(Client, Id, Input, []).
update_pipeline_status(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/2012-09-25/pipelines/", http_uri:encode(Id), "/status"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"elastictranscoder">>},
    Host = get_host(<<"elastictranscoder">>, Client1),
    URL0 = get_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
