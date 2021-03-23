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

-export([create_canary/2,
         create_canary/3,
         delete_canary/3,
         delete_canary/4,
         describe_canaries/2,
         describe_canaries/3,
         describe_canaries_last_run/2,
         describe_canaries_last_run/3,
         describe_runtime_versions/2,
         describe_runtime_versions/3,
         get_canary/2,
         get_canary/4,
         get_canary/5,
         get_canary_runs/3,
         get_canary_runs/4,
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

%% @doc Creates a canary.
%%
%% Canaries are scripts that monitor your endpoints and APIs from the
%% outside-in. Canaries help you check the availability and latency of your
%% web services and troubleshoot anomalies by investigating load time data,
%% screenshots of the UI, logs, and metrics. You can set up a canary to run
%% continuously or just once.
%%
%% Do not use `CreateCanary' to modify an existing canary. Use UpdateCanary
%% instead.
%%
%% To create canaries, you must have the `CloudWatchSyntheticsFullAccess'
%% policy. If you are creating a new IAM role for the canary, you also need
%% the the `iam:CreateRole', `iam:CreatePolicy' and `iam:AttachRolePolicy'
%% permissions. For more information, see Necessary Roles and Permissions.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified canary.
%%
%% When you delete a canary, resources used and created by the canary are not
%% automatically deleted. After you delete a canary that you do not intend to
%% use again, you should also delete the following:
%%
%% <ul> <li> The Lambda functions and layers used by this canary. These have
%% the prefix `cwsyn-MyCanaryName '.
%%
%% </li> <li> The CloudWatch alarms created for this canary. These alarms
%% have a name of `Synthetics-SharpDrop-Alarm-MyCanaryName '.
%%
%% </li> <li> Amazon S3 objects and buckets, such as the canary's artifact
%% location.
%%
%% </li> <li> IAM roles created for the canary. If they were created in the
%% console, these roles have the name `
%% role/service-role/CloudWatchSyntheticsRole-MyCanaryName '.
%%
%% </li> <li> CloudWatch Logs log groups created for the canary. These logs
%% groups have the name `/aws/lambda/cwsyn-MyCanaryName '.
%%
%% </li> </ul> Before you delete a canary, you might want to use `GetCanary'
%% to display the information about this canary. Make note of the information
%% returned by this operation so that you can delete these resources after
%% you delete the canary.
delete_canary(Client, Name, Input) ->
    delete_canary(Client, Name, Input, []).
delete_canary(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This operation returns a list of the canaries in your account, along
%% with full details about each canary.
%%
%% This operation does not have resource-level authorization, so if a user is
%% able to use `DescribeCanaries', the user can see all of the canaries in
%% the account. A deny policy can only be used to restrict access to all
%% canaries. It cannot be used on specific resources.
describe_canaries(Client, Input) ->
    describe_canaries(Client, Input, []).
describe_canaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use this operation to see information from the most recent run of
%% each canary that you have created.
describe_canaries_last_run(Client, Input) ->
    describe_canaries_last_run(Client, Input, []).
describe_canaries_last_run(Client, Input0, Options0) ->
    Method = post,
    Path = ["/canaries/last-run"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Displays the tags associated with a canary.
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
%% canary's `Schedule'. To see a canary's schedule, use GetCanary.
start_canary(Client, Name, Input) ->
    start_canary(Client, Name, Input, []).
start_canary(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/canary/", aws_util:encode_uri(Name), "/start"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the canary to prevent all future runs.
%%
%% If the canary is currently running, Synthetics stops waiting for the
%% current run of the specified canary to complete. The run that is in
%% progress completes on its own, publishes metrics, and uploads artifacts,
%% but it is not recorded in Synthetics as a completed run.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified canary.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to AWS and are interpreted strictly
%% as strings of characters.
%%
%% You can use the `TagResource' action with a canary that already has tags.
%% If you specify a new tag key for the alarm, this tag is appended to the
%% list of tags associated with the alarm. If you specify a tag key that is
%% already associated with the alarm, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a canary.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from the specified canary.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use this operation to change the settings of a canary that has
%% already been created.
%%
%% You can't use this operation to update the tags of an existing canary. To
%% change the tags of an existing canary, use TagResource.
update_canary(Client, Name, Input) ->
    update_canary(Client, Name, Input, []).
update_canary(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/canary/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"synthetics">>},
    Host = build_host(<<"synthetics">>, Client1),
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
