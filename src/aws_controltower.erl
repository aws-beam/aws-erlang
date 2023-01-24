%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc These interfaces allow you to apply the AWS library of pre-defined
%% controls to your organizational units, programmatically.
%%
%% In this context, controls are the same as AWS Control Tower guardrails.
%%
%% To call these APIs, you'll need to know:
%%
%% <ul> <li> the `ControlARN' for the control--that is, the guardrail--you
%% are targeting,
%%
%% </li> <li> and the ARN associated with the target organizational unit
%% (OU).
%%
%% </li> </ul> To get the `ControlARN' for your AWS Control Tower guardrail:
%%
%% The `ControlARN' contains the control name which is specified in each
%% guardrail. For a list of control names for Strongly recommended and
%% Elective guardrails, see Resource identifiers for APIs and guardrails in
%% the Automating tasks section of the AWS Control Tower User Guide. Remember
%% that Mandatory guardrails cannot be added or removed.
%%
%% ARN format: `arn:aws:controltower:{REGION}::control/{CONTROL_NAME}'
%%
%% Example:
%%
%% `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED'
%%
%% To get the ARN for an OU:
%%
%% In the AWS Organizations console, you can find the ARN for the OU on the
%% Organizational unit details page associated with that OU.
%%
%% OU ARN format:
%%
%% `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}'
%%
%% == Details and examples ==
%%
%% <ul> <li> List of resource identifiers for APIs and guardrails
%%
%% </li> <li> Guardrail API examples (CLI)
%%
%% </li> <li> Enable controls with AWS CloudFormation
%%
%% </li> <li> Creating AWS Control Tower resources with AWS CloudFormation
%%
%% </li> </ul> To view the open source resource repository on GitHub, see
%% aws-cloudformation/aws-cloudformation-resource-providers-controltower
%%
%% Recording API Requests
%%
%% AWS Control Tower supports AWS CloudTrail, a service that records AWS API
%% calls for your AWS account and delivers log files to an Amazon S3 bucket.
%% By using information collected by CloudTrail, you can determine which
%% requests the AWS Control Tower service received, who made the request and
%% when, and so on. For more about AWS Control Tower and its support for
%% CloudTrail, see Logging AWS Control Tower Actions with AWS CloudTrail in
%% the AWS Control Tower User Guide. To learn more about CloudTrail,
%% including how to turn it on and find your log files, see the AWS
%% CloudTrail User Guide.
-module(aws_controltower).

-export([disable_control/2,
         disable_control/3,
         enable_control/2,
         enable_control/3,
         get_control_operation/2,
         get_control_operation/3,
         list_enabled_controls/2,
         list_enabled_controls/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This API call turns off a control.
%%
%% It starts an asynchronous operation that deletes AWS resources on the
%% specified organizational unit and the accounts it contains. The resources
%% will vary according to the control that you specify.
disable_control(Client, Input) ->
    disable_control(Client, Input, []).
disable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable-control"],
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

%% @doc This API call activates a control.
%%
%% It starts an asynchronous operation that creates AWS resources on the
%% specified organizational unit and the accounts it contains. The resources
%% created will vary according to the control that you specify.
enable_control(Client, Input) ->
    enable_control(Client, Input, []).
enable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable-control"],
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

%% @doc Returns the status of a particular `EnableControl' or
%% `DisableControl' operation.
%%
%% Displays a message in case of error. Details for an operation are
%% available for 90 days.
get_control_operation(Client, Input) ->
    get_control_operation(Client, Input, []).
get_control_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-control-operation"],
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

%% @doc Lists the controls enabled by AWS Control Tower on the specified
%% organizational unit and the accounts it contains.
list_enabled_controls(Client, Input) ->
    list_enabled_controls(Client, Input, []).
list_enabled_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-enabled-controls"],
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
    Client1 = Client#{service => <<"controltower">>},
    Host = build_host(<<"controltower">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
