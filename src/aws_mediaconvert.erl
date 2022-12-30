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
         delete_policy/2,
         delete_policy/3,
         delete_preset/3,
         delete_preset/4,
         delete_queue/3,
         delete_queue/4,
         describe_endpoints/2,
         describe_endpoints/3,
         disassociate_certificate/3,
         disassociate_certificate/4,
         get_job/2,
         get_job/4,
         get_job/5,
         get_job_template/2,
         get_job_template/4,
         get_job_template/5,
         get_policy/1,
         get_policy/3,
         get_policy/4,
         get_preset/2,
         get_preset/4,
         get_preset/5,
         get_queue/2,
         get_queue/4,
         get_queue/5,
         list_job_templates/1,
         list_job_templates/3,
         list_job_templates/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_presets/1,
         list_presets/3,
         list_presets/4,
         list_queues/1,
         list_queues/3,
         list_queues/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_policy/2,
         put_policy/3,
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
associate_certificate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/certificates"],
    SuccessStatusCode = 201,
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

%% @doc Permanently cancel a job.
%%
%% Once you have canceled a job, you can't start it again.
cancel_job(Client, Id, Input) ->
    cancel_job(Client, Id, Input, []).
cancel_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc Create a new transcoding job.
%%
%% For information about jobs and job settings, see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_job(Client, Input) ->
    create_job(Client, Input, []).
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/jobs"],
    SuccessStatusCode = 201,
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

%% @doc Create a new job template.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_job_template(Client, Input) ->
    create_job_template(Client, Input, []).
create_job_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/jobTemplates"],
    SuccessStatusCode = 201,
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

%% @doc Create a new preset.
%%
%% For information about job templates see the User Guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
create_preset(Client, Input) ->
    create_preset(Client, Input, []).
create_preset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/presets"],
    SuccessStatusCode = 201,
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

%% @doc Create a new transcoding queue.
%%
%% For information about queues, see Working With Queues in the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
create_queue(Client, Input) ->
    create_queue(Client, Input, []).
create_queue(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/queues"],
    SuccessStatusCode = 201,
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

%% @doc Permanently delete a job template you have created.
delete_job_template(Client, Name, Input) ->
    delete_job_template(Client, Name, Input, []).
delete_job_template(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Permanently delete a policy that you created.
delete_policy(Client, Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/policy"],
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

%% @doc Permanently delete a preset you have created.
delete_preset(Client, Name, Input) ->
    delete_preset(Client, Name, Input, []).
delete_preset(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Permanently delete a queue you have created.
delete_queue(Client, Name, Input) ->
    delete_queue(Client, Name, Input, []).
delete_queue(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc Send an request with an empty body to the regional API endpoint to
%% get your account API endpoint.
describe_endpoints(Client, Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/endpoints"],
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

%% @doc Removes an association between the Amazon Resource Name (ARN) of an
%% AWS Certificate Manager (ACM) certificate and an AWS Elemental
%% MediaConvert resource.
disassociate_certificate(Client, Arn, Input) ->
    disassociate_certificate(Client, Arn, Input, []).
disassociate_certificate(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/2017-08-29/certificates/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 202,
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

%% @doc Retrieve the JSON for a specific completed transcoding job.
get_job(Client, Id)
  when is_map(Client) ->
    get_job(Client, Id, #{}, #{}).

get_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, Id, QueryMap, HeadersMap, []).

get_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific job template.
get_job_template(Client, Name)
  when is_map(Client) ->
    get_job_template(Client, Name, #{}, #{}).

get_job_template(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_template(Client, Name, QueryMap, HeadersMap, []).

get_job_template(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for your policy.
get_policy(Client)
  when is_map(Client) ->
    get_policy(Client, #{}, #{}).

get_policy(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, QueryMap, HeadersMap, []).

get_policy(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific preset.
get_preset(Client, Name)
  when is_map(Client) ->
    get_preset(Client, Name, #{}, #{}).

get_preset(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_preset(Client, Name, QueryMap, HeadersMap, []).

get_preset(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the JSON for a specific queue.
get_queue(Client, Name)
  when is_map(Client) ->
    get_queue(Client, Name, #{}, #{}).

get_queue(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_queue(Client, Name, QueryMap, HeadersMap, []).

get_queue(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your job templates.
%%
%% This will return the templates themselves, not just a list of them. To
%% retrieve the next twenty templates, use the nextToken string returned with
%% the array
list_job_templates(Client)
  when is_map(Client) ->
    list_job_templates(Client, #{}, #{}).

list_job_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_templates(Client, QueryMap, HeadersMap, []).

list_job_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobTemplates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
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
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/jobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"queue">>, maps:get(<<"queue">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your presets.
%%
%% This will return the presets themselves, not just a list of them. To
%% retrieve the next twenty presets, use the nextToken string returned with
%% the array.
list_presets(Client)
  when is_map(Client) ->
    list_presets(Client, #{}, #{}).

list_presets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_presets(Client, QueryMap, HeadersMap, []).

list_presets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/presets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a JSON array of up to twenty of your queues.
%%
%% This will return the queues themselves, not just a list of them. To
%% retrieve the next twenty queues, use the nextToken string returned with
%% the array.
list_queues(Client)
  when is_map(Client) ->
    list_queues(Client, #{}, #{}).

list_queues(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_queues(Client, QueryMap, HeadersMap, []).

list_queues(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/queues"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"listBy">>, maps:get(<<"listBy">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the tags for a MediaConvert resource.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2017-08-29/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create or change your policy.
%%
%% For more information about policies, see the user guide at
%% http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
put_policy(Client, Input) ->
    put_policy(Client, Input, []).
put_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/policy"],
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

%% @doc Add tags to a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2017-08-29/tags"],
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

%% @doc Remove tags from a MediaConvert queue, preset, or job template.
%%
%% For information about tagging, see the User Guide at
%% https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).
untag_resource(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Modify one of your existing job templates.
update_job_template(Client, Name, Input) ->
    update_job_template(Client, Name, Input, []).
update_job_template(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/jobTemplates/", aws_util:encode_uri(Name), ""],
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

%% @doc Modify one of your existing presets.
update_preset(Client, Name, Input) ->
    update_preset(Client, Name, Input, []).
update_preset(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/presets/", aws_util:encode_uri(Name), ""],
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

%% @doc Modify one of your existing queues.
update_queue(Client, Name, Input) ->
    update_queue(Client, Name, Input, []).
update_queue(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/2017-08-29/queues/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"mediaconvert">>},
    Host = build_host(<<"mediaconvert">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
