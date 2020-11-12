%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaConvert
-module(aws_mediaconvert).

-export([associate_certificate/2,
         associate_certificate/3,
         cancel_job/3,
         cancel_job/4,
         create_job/2,
         create_job/3,
         create_job_template/2,
         create_job_template/3,
         create_preset/2,
         create_preset/3,
         create_queue/2,
         create_queue/3,
         delete_job_template/3,
         delete_job_template/4,
         delete_preset/3,
         delete_preset/4,
         delete_queue/3,
         delete_queue/4,
         describe_endpoints/2,
         describe_endpoints/3,
         disassociate_certificate/3,
         disassociate_certificate/4,
         get_job/2,
         get_job/3,
         get_job_template/2,
         get_job_template/3,
         get_preset/2,
         get_preset/3,
         get_queue/2,
         get_queue/3,
         list_job_templates/6,
         list_job_templates/7,
         list_jobs/6,
         list_jobs/7,
         list_presets/6,
         list_presets/7,
         list_queues/5,
         list_queues/6,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/3,
         untag_resource/4,
         update_job_template/3,
         update_job_template/4,
         update_preset/3,
         update_preset/4,
         update_queue/3,
         update_queue/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an AWS Certificate Manager (ACM) Amazon Resource Name
%% (ARN) with AWS Elemental MediaConvert.
associate_certificate(Client, Input) ->
    associate_certificate(Client, Input, []).
associate_certificate(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/certificates"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently cancel a job.
%%
%% Once you have canceled a job, you can't start it again.
cancel_job(Client, Id, Input) ->
    cancel_job(Client, Id, Input, []).
cancel_job(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2017-08-29/jobs/", http_uri:encode(Id), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new transcoding job.
%%
%% For information about jobs and job settings, see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/jobs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new job template.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_job_template(Client, Input) ->
    create_job_template(Client, Input, []).
create_job_template(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/jobTemplates"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new preset.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_preset(Client, Input) ->
    create_preset(Client, Input, []).
create_preset(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/presets"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new transcoding queue.
%%
%% For information about queues, see Working With Queues in the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
create_queue(Client, Input) ->
    create_queue(Client, Input, []).
create_queue(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/queues"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently delete a job template you have created.
delete_job_template(Client, Name, Input) ->
    delete_job_template(Client, Name, Input, []).
delete_job_template(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/2017-08-29/jobTemplates/", http_uri:encode(Name), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently delete a preset you have created.
delete_preset(Client, Name, Input) ->
    delete_preset(Client, Name, Input, []).
delete_preset(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/2017-08-29/presets/", http_uri:encode(Name), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently delete a queue you have created.
delete_queue(Client, Name, Input) ->
    delete_queue(Client, Name, Input, []).
delete_queue(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/2017-08-29/queues/", http_uri:encode(Name), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Send an request with an empty body to the regional API endpoint to
%% get your account API endpoint.
describe_endpoints(Client, Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/endpoints"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an association between the Amazon Resource Name (ARN) of an
%% AWS Certificate Manager (ACM) certificate and an AWS Elemental
%% MediaConvert resource.
disassociate_certificate(Client, Arn, Input) ->
    disassociate_certificate(Client, Arn, Input, []).
disassociate_certificate(Client, Arn, Input0, Options) ->
    Method = delete,
    Path = ["/2017-08-29/certificates/", http_uri:encode(Arn), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific completed transcoding job.
get_job(Client, Id)
  when is_map(Client) ->
    get_job(Client, Id, []).
get_job(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/jobs/", http_uri:encode(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific job template.
get_job_template(Client, Name)
  when is_map(Client) ->
    get_job_template(Client, Name, []).
get_job_template(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/jobTemplates/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific preset.
get_preset(Client, Name)
  when is_map(Client) ->
    get_preset(Client, Name, []).
get_preset(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/presets/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific queue.
get_queue(Client, Name)
  when is_map(Client) ->
    get_queue(Client, Name, []).
get_queue(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/queues/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your job templates.
%%
%% This will return the templates themselves, not just a list of them. To
%% retrieve the next twenty templates, use the nextToken string returned with
%% the array
list_job_templates(Client, Category, ListBy, MaxResults, NextToken, Order)
  when is_map(Client) ->
    list_job_templates(Client, Category, ListBy, MaxResults, NextToken, Order, []).
list_job_templates(Client, Category, ListBy, MaxResults, NextToken, Order, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/jobTemplates"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"category">>, Category},
        {<<"listBy">>, ListBy},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"order">>, Order}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your most recently created
%% jobs.
%%
%% This array includes in-process, completed, and errored jobs. This will
%% return the jobs themselves, not just a list of the jobs. To retrieve the
%% twenty next most recent jobs, use the nextToken string returned with the
%% array.
list_jobs(Client, MaxResults, NextToken, Order, Queue, Status)
  when is_map(Client) ->
    list_jobs(Client, MaxResults, NextToken, Order, Queue, Status, []).
list_jobs(Client, MaxResults, NextToken, Order, Queue, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/jobs"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"order">>, Order},
        {<<"queue">>, Queue},
        {<<"status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your presets.
%%
%% This will return the presets themselves, not just a list of them. To
%% retrieve the next twenty presets, use the nextToken string returned with
%% the array.
list_presets(Client, Category, ListBy, MaxResults, NextToken, Order)
  when is_map(Client) ->
    list_presets(Client, Category, ListBy, MaxResults, NextToken, Order, []).
list_presets(Client, Category, ListBy, MaxResults, NextToken, Order, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/presets"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"category">>, Category},
        {<<"listBy">>, ListBy},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"order">>, Order}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your queues.
%%
%% This will return the queues themselves, not just a list of them. To
%% retrieve the next twenty queues, use the nextToken string returned with
%% the array.
list_queues(Client, ListBy, MaxResults, NextToken, Order)
  when is_map(Client) ->
    list_queues(Client, ListBy, MaxResults, NextToken, Order, []).
list_queues(Client, ListBy, MaxResults, NextToken, Order, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/queues"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"listBy">>, ListBy},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"order">>, Order}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the tags for a MediaConvert resource.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, []).
list_tags_for_resource(Client, Arn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2017-08-29/tags/", http_uri:encode(Arn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add tags to a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/2017-08-29/tags"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove tags from a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).
untag_resource(Client, Arn, Input0, Options) ->
    Method = put,
    Path = ["/2017-08-29/tags/", http_uri:encode(Arn), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modify one of your existing job templates.
update_job_template(Client, Name, Input) ->
    update_job_template(Client, Name, Input, []).
update_job_template(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/2017-08-29/jobTemplates/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modify one of your existing presets.
update_preset(Client, Name, Input) ->
    update_preset(Client, Name, Input, []).
update_preset(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/2017-08-29/presets/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modify one of your existing queues.
update_queue(Client, Name, Input) ->
    update_queue(Client, Name, Input, []).
update_queue(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/2017-08-29/queues/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"mediaconvert">>},
    Host = build_host(<<"mediaconvert">>, Client1),
    URL0 = build_url(Host, Path, Client1),
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
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
