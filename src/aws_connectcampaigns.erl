%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provide APIs to create and manage Amazon Connect Campaigns.
-module(aws_connectcampaigns).

-export([create_campaign/2,
         create_campaign/3,
         delete_campaign/3,
         delete_campaign/4,
         delete_connect_instance_config/3,
         delete_connect_instance_config/4,
         delete_instance_onboarding_job/3,
         delete_instance_onboarding_job/4,
         describe_campaign/2,
         describe_campaign/4,
         describe_campaign/5,
         get_campaign_state/2,
         get_campaign_state/4,
         get_campaign_state/5,
         get_campaign_state_batch/2,
         get_campaign_state_batch/3,
         get_connect_instance_config/2,
         get_connect_instance_config/4,
         get_connect_instance_config/5,
         get_instance_onboarding_job_status/2,
         get_instance_onboarding_job_status/4,
         get_instance_onboarding_job_status/5,
         list_campaigns/2,
         list_campaigns/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         pause_campaign/3,
         pause_campaign/4,
         put_dial_request_batch/3,
         put_dial_request_batch/4,
         resume_campaign/3,
         resume_campaign/4,
         start_campaign/3,
         start_campaign/4,
         start_instance_onboarding_job/3,
         start_instance_onboarding_job/4,
         stop_campaign/3,
         stop_campaign/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_campaign_dialer_config/3,
         update_campaign_dialer_config/4,
         update_campaign_name/3,
         update_campaign_name/4,
         update_campaign_outbound_call_config/3,
         update_campaign_outbound_call_config/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a campaign for the specified Amazon Connect account.
%%
%% This API is idempotent.
create_campaign(Client, Input) ->
    create_campaign(Client, Input, []).
create_campaign(Client, Input0, Options0) ->
    Method = put,
    Path = ["/campaigns"],
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

%% @doc Deletes a campaign from the specified Amazon Connect account.
delete_campaign(Client, Id, Input) ->
    delete_campaign(Client, Id, Input, []).
delete_campaign(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/campaigns/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a connect instance config from the specified AWS account.
delete_connect_instance_config(Client, ConnectInstanceId, Input) ->
    delete_connect_instance_config(Client, ConnectInstanceId, Input, []).
delete_connect_instance_config(Client, ConnectInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/config"],
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

%% @doc Delete the Connect Campaigns onboarding job for the specified Amazon
%% Connect instance.
delete_instance_onboarding_job(Client, ConnectInstanceId, Input) ->
    delete_instance_onboarding_job(Client, ConnectInstanceId, Input, []).
delete_instance_onboarding_job(Client, ConnectInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
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

%% @doc Describes the specific campaign.
describe_campaign(Client, Id)
  when is_map(Client) ->
    describe_campaign(Client, Id, #{}, #{}).

describe_campaign(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_campaign(Client, Id, QueryMap, HeadersMap, []).

describe_campaign(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/campaigns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get state of a campaign for the specified Amazon Connect account.
get_campaign_state(Client, Id)
  when is_map(Client) ->
    get_campaign_state(Client, Id, #{}, #{}).

get_campaign_state(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_state(Client, Id, QueryMap, HeadersMap, []).

get_campaign_state(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/state"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get state of campaigns for the specified Amazon Connect account.
get_campaign_state_batch(Client, Input) ->
    get_campaign_state_batch(Client, Input, []).
get_campaign_state_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns-state"],
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

%% @doc Get the specific Connect instance config.
get_connect_instance_config(Client, ConnectInstanceId)
  when is_map(Client) ->
    get_connect_instance_config(Client, ConnectInstanceId, #{}, #{}).

get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap, []).

get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/config"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the specific instance onboarding job status.
get_instance_onboarding_job_status(Client, ConnectInstanceId)
  when is_map(Client) ->
    get_instance_onboarding_job_status(Client, ConnectInstanceId, #{}, #{}).

get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap, []).

get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the campaigns under the specified
%% Amazon Connect account.
list_campaigns(Client, Input) ->
    list_campaigns(Client, Input, []).
list_campaigns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns-summary"],
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

%% @doc List tags for a resource.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Pauses a campaign for the specified Amazon Connect account.
pause_campaign(Client, Id, Input) ->
    pause_campaign(Client, Id, Input, []).
pause_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/pause"],
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

%% @doc Creates dials requests for the specified campaign Amazon Connect
%% account.
%%
%% This API is idempotent.
put_dial_request_batch(Client, Id, Input) ->
    put_dial_request_batch(Client, Id, Input, []).
put_dial_request_batch(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/dial-requests"],
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

%% @doc Stops a campaign for the specified Amazon Connect account.
resume_campaign(Client, Id, Input) ->
    resume_campaign(Client, Id, Input, []).
resume_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/resume"],
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

%% @doc Starts a campaign for the specified Amazon Connect account.
start_campaign(Client, Id, Input) ->
    start_campaign(Client, Id, Input, []).
start_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/start"],
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

%% @doc Onboard the specific Amazon Connect instance to Connect Campaigns.
start_instance_onboarding_job(Client, ConnectInstanceId, Input) ->
    start_instance_onboarding_job(Client, ConnectInstanceId, Input, []).
start_instance_onboarding_job(Client, ConnectInstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
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

%% @doc Stops a campaign for the specified Amazon Connect account.
stop_campaign(Client, Id, Input) ->
    stop_campaign(Client, Id, Input, []).
stop_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/stop"],
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

%% @doc Tag a resource.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Untag a resource.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates the dialer config of a campaign.
%%
%% This API is idempotent.
update_campaign_dialer_config(Client, Id, Input) ->
    update_campaign_dialer_config(Client, Id, Input, []).
update_campaign_dialer_config(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/dialer-config"],
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

%% @doc Updates the name of a campaign.
%%
%% This API is idempotent.
update_campaign_name(Client, Id, Input) ->
    update_campaign_name(Client, Id, Input, []).
update_campaign_name(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/name"],
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

%% @doc Updates the outbound call config of a campaign.
%%
%% This API is idempotent.
update_campaign_outbound_call_config(Client, Id, Input) ->
    update_campaign_outbound_call_config(Client, Id, Input, []).
update_campaign_outbound_call_config(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/outbound-call-config"],
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
    Client1 = Client#{service => <<"connect-campaigns">>},
    Host = build_host(<<"connect-campaigns">>, Client1),
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
