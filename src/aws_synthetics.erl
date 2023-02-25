%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Synthetics
%%
%% You can use Amazon CloudWatch Synthetics to continually monitor your
%% services.
%%
%% You can create and manage canaries, which are modular, lightweight scripts
%% that monitor your endpoints and APIs from the outside-in. You can set up
%% your canaries to run 24 hours a day, once per minute. The canaries help
%% you check the availability and latency of your web services and
%% troubleshoot anomalies by investigating load time data, screenshots of the
%% UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch
%% ServiceLens to help you trace the causes of impacted nodes in your
%% applications. For more information, see Using ServiceLens to Monitor the
%% Health of Your Applications in the Amazon CloudWatch User Guide.
%%
%% Before you create and manage canaries, be aware of the security
%% considerations. For more information, see Security Considerations for
%% Synthetics Canaries.
-module(aws_synthetics).

-export([associate_resource/3,
         associate_resource/4,
         create_canary/2,
         create_canary/3,
         create_group/2,
         create_group/3,
         delete_canary/3,
         delete_canary/4,
         delete_group/3,
         delete_group/4,
         describe_canaries/2,
         describe_canaries/3,
         describe_canaries_last_run/2,
         describe_canaries_last_run/3,
         describe_runtime_versions/2,
         describe_runtime_versions/3,
         disassociate_resource/3,
         disassociate_resource/4,
         get_canary/2,
         get_canary/4,
         get_canary/5,
         get_canary_runs/3,
         get_canary_runs/4,
         get_group/2,
         get_group/4,
         get_group/5,
         list_associated_groups/3,
         list_associated_groups/4,
         list_group_resources/3,
         list_group_resources/4,
         list_groups/2,
         list_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_canary/3,
         start_canary/4,
         stop_canary/3,
         stop_canary/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_canary/3,
         update_canary/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a canary with a group.
%%
%% Using groups can help you with managing and automating your canaries, and
%% you can also view aggregated run results and statistics for all canaries
%% in a group.
%%
%% You must run this operation in the Region where the canary exists.
associate_resource(Client, GroupIdentifier, Input) ->
    associate_resource(Client, GroupIdentifier, Input, []).
associate_resource(Client, GroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/associate"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a canary.
%%
%% Canaries are scripts that monitor your endpoints and APIs from the
%% outside-in. Canaries help you check the availability and latency of your
%% web services and troubleshoot anomalies by investigating load time data,
%% screenshots of the UI, logs, and metrics. You can set up a canary to run
%% continuously or just once.
%%
%% Do not use `CreateCanary' to modify an existing canary. Use
%% UpdateCanary instead.
%%
%% To create canaries, you must have the `CloudWatchSyntheticsFullAccess'
%% policy. If you are creating a new IAM role for the canary, you also need
%% the `iam:CreateRole', `iam:CreatePolicy' and
%% `iam:AttachRolePolicy' permissions. For more information, see
%% Necessary Roles and Permissions.
%%
%% Do not include secrets or proprietary information in your canary names.
%% The canary name makes up part of the Amazon Resource Name (ARN) for the
%% canary, and the ARN is included in outbound calls over the internet. For
%% more information, see Security Considerations for Synthetics Canaries.
create_canary(Client, Input) ->
    create_canary(Client, Input, []).
create_canary(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canary"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a group which you can use to associate canaries with each
%% other, including cross-Region canaries.
%%
%% Using groups can help you with managing and automating your canaries, and
%% you can also view aggregated run results and statistics for all canaries
%% in a group.
%%
%% Groups are global resources. When you create a group, it is replicated
%% across Amazon Web Services Regions, and you can view it and add canaries
%% to it from any Region. Although the group ARN format reflects the Region
%% name where it was created, a group is not constrained to any Region. This
%% means that you can put canaries from multiple Regions into the same group,
%% and then use that group to view and manage all of those canaries in a
%% single view.
%%
%% Groups are supported in all Regions except the Regions that are disabled
%% by default. For more information about these Regions, see Enabling a
%% Region.
%%
%% Each group can contain as many as 10 canaries. You can have as many as 20
%% groups in your account. Any single canary can be a member of up to 10
%% groups.
create_group(Client, Input) ->
    create_group(Client, Input, []).
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/group"],
    SuccessStatusCode = undefined,
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

%% @doc Permanently deletes the specified canary.
%%
%% If you specify `DeleteLambda' to `true', CloudWatch Synthetics
%% also deletes the Lambda functions and layers that are used by the canary.
%%
%% Other resources used and created by the canary are not automatically
%% deleted. After you delete a canary that you do not intend to use again,
%% you should also delete the following:
%%
%% <ul> <li> The CloudWatch alarms created for this canary. These alarms have
%% a name of `Synthetics-SharpDrop-Alarm-MyCanaryName '.
%%
%% </li> <li> Amazon S3 objects and buckets, such as the canary's
%% artifact location.
%%
%% </li> <li> IAM roles created for the canary. If they were created in the
%% console, these roles have the name `
%% role/service-role/CloudWatchSyntheticsRole-MyCanaryName '.
%%
%% </li> <li> CloudWatch Logs log groups created for the canary. These logs
%% groups have the name `/aws/lambda/cwsyn-MyCanaryName '.
%%
%% </li> </ul> Before you delete a canary, you might want to use
%% `GetCanary' to display the information about this canary. Make note of
%% the information returned by this operation so that you can delete these
%% resources after you delete the canary.
delete_canary(Client, Name, Input) ->
    delete_canary(Client, Name, Input, []).
delete_canary(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteLambda">>, <<"DeleteLambda">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group.
%%
%% The group doesn't need to be empty to be deleted. If there are
%% canaries in the group, they are not deleted when you delete the group.
%%
%% Groups are a global resource that appear in all Regions, but the request
%% to delete a group must be made from its home Region. You can find the home
%% Region of a group within its ARN.
delete_group(Client, GroupIdentifier, Input) ->
    delete_group(Client, GroupIdentifier, Input, []).
delete_group(Client, GroupIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), ""],
    SuccessStatusCode = undefined,
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

%% @doc This operation returns a list of the canaries in your account, along
%% with full details about each canary.
%%
%% This operation supports resource-level authorization using an IAM policy
%% and the `Names' parameter. If you specify the `Names' parameter,
%% the operation is successful only if you have authorization to view all the
%% canaries that you specify in your request. If you do not have permission
%% to view any of the canaries, the request fails with a 403 response.
%%
%% You are required to use the `Names' parameter if you are logged on to
%% a user or role that has an IAM policy that restricts which canaries that
%% you are allowed to view. For more information, see Limiting a user to
%% viewing specific canaries.
describe_canaries(Client, Input) ->
    describe_canaries(Client, Input, []).
describe_canaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries"],
    SuccessStatusCode = undefined,
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

%% @doc Use this operation to see information from the most recent run of
%% each canary that you have created.
%%
%% This operation supports resource-level authorization using an IAM policy
%% and the `Names' parameter. If you specify the `Names' parameter,
%% the operation is successful only if you have authorization to view all the
%% canaries that you specify in your request. If you do not have permission
%% to view any of the canaries, the request fails with a 403 response.
%%
%% You are required to use the `Names' parameter if you are logged on to
%% a user or role that has an IAM policy that restricts which canaries that
%% you are allowed to view. For more information, see Limiting a user to
%% viewing specific canaries.
describe_canaries_last_run(Client, Input) ->
    describe_canaries_last_run(Client, Input, []).
describe_canaries_last_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries/last-run"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of Synthetics canary runtime versions.
%%
%% For more information, see Canary Runtime Versions.
describe_runtime_versions(Client, Input) ->
    describe_runtime_versions(Client, Input, []).
describe_runtime_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime-versions"],
    SuccessStatusCode = undefined,
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

%% @doc Removes a canary from a group.
%%
%% You must run this operation in the Region where the canary exists.
disassociate_resource(Client, GroupIdentifier, Input) ->
    disassociate_resource(Client, GroupIdentifier, Input, []).
disassociate_resource(Client, GroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/disassociate"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves complete information about one canary.
%%
%% You must specify the name of the canary that you want. To get a list of
%% canaries and their names, use DescribeCanaries.
get_canary(Client, Name)
  when is_map(Client) ->
    get_canary(Client, Name, #{}, #{}).

get_canary(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_canary(Client, Name, QueryMap, HeadersMap, []).

get_canary(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of runs for a specified canary.
get_canary_runs(Client, Name, Input) ->
    get_canary_runs(Client, Name, Input, []).
get_canary_runs(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/runs"],
    SuccessStatusCode = undefined,
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

%% @doc Returns information about one group.
%%
%% Groups are a global resource, so you can use this operation from any
%% Region.
get_group(Client, GroupIdentifier)
  when is_map(Client) ->
    get_group(Client, GroupIdentifier, #{}, #{}).

get_group(Client, GroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group(Client, GroupIdentifier, QueryMap, HeadersMap, []).

get_group(Client, GroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the groups that the specified canary is associated
%% with.
%%
%% The canary that you specify must be in the current Region.
list_associated_groups(Client, ResourceArn, Input) ->
    list_associated_groups(Client, ResourceArn, Input, []).
list_associated_groups(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resource/", aws_util:encode_uri(ResourceArn), "/groups"],
    SuccessStatusCode = undefined,
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

%% @doc This operation returns a list of the ARNs of the canaries that are
%% associated with the specified group.
list_group_resources(Client, GroupIdentifier, Input) ->
    list_group_resources(Client, GroupIdentifier, Input, []).
list_group_resources(Client, GroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/group/", aws_util:encode_uri(GroupIdentifier), "/resources"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of all groups in the account, displaying their names,
%% unique IDs, and ARNs.
%%
%% The groups from all Regions are returned.
list_groups(Client, Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/groups"],
    SuccessStatusCode = undefined,
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

%% @doc Displays the tags associated with a canary or group.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this operation to run a canary that has already been created.
%%
%% The frequency of the canary runs is determined by the value of the
%% canary's `Schedule'. To see a canary's schedule, use
%% GetCanary.
start_canary(Client, Name, Input) ->
    start_canary(Client, Name, Input, []).
start_canary(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/start"],
    SuccessStatusCode = undefined,
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

%% @doc Stops the canary to prevent all future runs.
%%
%% If the canary is currently running,the run that is in progress completes
%% on its own, publishes metrics, and uploads artifacts, but it is not
%% recorded in Synthetics as a completed run.
%%
%% You can use `StartCanary' to start it running again with the canary’s
%% current schedule at any point in the future.
stop_canary(Client, Name, Input) ->
    stop_canary(Client, Name, Input, []).
stop_canary(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/stop"],
    SuccessStatusCode = undefined,
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

%% @doc Assigns one or more tags (key-value pairs) to the specified canary or
%% group.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the resource, this tag is appended
%% to the list of tags associated with the resource. If you specify a tag key
%% that is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a canary or group.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Updates the configuration of a canary that has already been created.
%%
%% You can't use this operation to update the tags of an existing canary.
%% To change the tags of an existing canary, use TagResource.
update_canary(Client, Name, Input) ->
    update_canary(Client, Name, Input, []).
update_canary(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"synthetics">>},
    Host = build_host(<<"synthetics">>, Client1),
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
