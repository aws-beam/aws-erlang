%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Events monitors your equipment or device fleets for failures
%% or changes in operation, and triggers actions when such events occur.
%%
%% You can use AWS IoT Events API operations to create, read, update, and
%% delete inputs and detector models, and to list their versions.
-module(aws_iot_events).

-export([create_detector_model/2,
         create_detector_model/3,
         create_input/2,
         create_input/3,
         delete_detector_model/3,
         delete_detector_model/4,
         delete_input/3,
         delete_input/4,
         describe_detector_model/3,
         describe_detector_model/4,
         describe_input/2,
         describe_input/3,
         describe_logging_options/1,
         describe_logging_options/2,
         list_detector_model_versions/4,
         list_detector_model_versions/5,
         list_detector_models/3,
         list_detector_models/4,
         list_inputs/3,
         list_inputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_logging_options/2,
         put_logging_options/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_detector_model/3,
         update_detector_model/4,
         update_input/3,
         update_input/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a detector model.
create_detector_model(Client, Input) ->
    create_detector_model(Client, Input, []).
create_detector_model(Client, Input0, Options) ->
    Method = post,
    Path = ["/detector-models"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an input.
create_input(Client, Input) ->
    create_input(Client, Input, []).
create_input(Client, Input0, Options) ->
    Method = post,
    Path = ["/inputs"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a detector model.
%%
%% Any active instances of the detector model are also deleted.
delete_detector_model(Client, DetectorModelName, Input) ->
    delete_detector_model(Client, DetectorModelName, Input, []).
delete_detector_model(Client, DetectorModelName, Input0, Options) ->
    Method = delete,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an input.
delete_input(Client, InputName, Input) ->
    delete_input(Client, InputName, Input, []).
delete_input(Client, InputName, Input0, Options) ->
    Method = delete,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a detector model.
%%
%% If the `version` parameter is not specified, information about the latest
%% version is returned.
describe_detector_model(Client, DetectorModelName, DetectorModelVersion)
  when is_map(Client) ->
    describe_detector_model(Client, DetectorModelName, DetectorModelVersion, []).
describe_detector_model(Client, DetectorModelName, DetectorModelVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"version">>, DetectorModelVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an input.
describe_input(Client, InputName)
  when is_map(Client) ->
    describe_input(Client, InputName, []).
describe_input(Client, InputName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the AWS IoT Events logging options.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, []).
describe_logging_options(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of a detector model.
%%
%% Only the metadata associated with each detector model version is returned.
list_detector_model_versions(Client, DetectorModelName, MaxResults, NextToken)
  when is_map(Client) ->
    list_detector_model_versions(Client, DetectorModelName, MaxResults, NextToken, []).
list_detector_model_versions(Client, DetectorModelName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the detector models you have created.
%%
%% Only the metadata associated with each detector model is returned.
list_detector_models(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_detector_models(Client, MaxResults, NextToken, []).
list_detector_models(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector-models"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the inputs you have created.
list_inputs(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_inputs(Client, MaxResults, NextToken, []).
list_inputs(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/inputs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) you have assigned to the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets or updates the AWS IoT Events logging options.
%%
%% If you update the value of any `loggingOptions` field, it takes up to one
%% minute for the change to take effect. If you change the policy attached to
%% the role you specified in the `roleArn` field (for example, to correct an
%% invalid policy), it takes up to five minutes for that change to take
%% effect.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input0, Options) ->
    Method = put,
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to manage a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a detector model.
%%
%% Detectors (instances) spawned by the previous version are deleted and then
%% re-created as new inputs arrive.
update_detector_model(Client, DetectorModelName, Input) ->
    update_detector_model(Client, DetectorModelName, Input, []).
update_detector_model(Client, DetectorModelName, Input0, Options) ->
    Method = post,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an input.
update_input(Client, InputName, Input) ->
    update_input(Client, InputName, Input, []).
update_input(Client, InputName, Input0, Options) ->
    Method = put,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"iotevents">>},
    Host = build_host(<<"iotevents">>, Client1),
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
