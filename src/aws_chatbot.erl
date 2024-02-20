%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Chatbot API
-module(aws_chatbot).

-export([create_chime_webhook_configuration/2,
         create_chime_webhook_configuration/3,
         create_microsoft_teams_channel_configuration/2,
         create_microsoft_teams_channel_configuration/3,
         create_slack_channel_configuration/2,
         create_slack_channel_configuration/3,
         delete_chime_webhook_configuration/2,
         delete_chime_webhook_configuration/3,
         delete_microsoft_teams_channel_configuration/2,
         delete_microsoft_teams_channel_configuration/3,
         delete_microsoft_teams_configured_team/2,
         delete_microsoft_teams_configured_team/3,
         delete_microsoft_teams_user_identity/2,
         delete_microsoft_teams_user_identity/3,
         delete_slack_channel_configuration/2,
         delete_slack_channel_configuration/3,
         delete_slack_user_identity/2,
         delete_slack_user_identity/3,
         delete_slack_workspace_authorization/2,
         delete_slack_workspace_authorization/3,
         describe_chime_webhook_configurations/2,
         describe_chime_webhook_configurations/3,
         describe_slack_channel_configurations/2,
         describe_slack_channel_configurations/3,
         describe_slack_user_identities/2,
         describe_slack_user_identities/3,
         describe_slack_workspaces/2,
         describe_slack_workspaces/3,
         get_account_preferences/2,
         get_account_preferences/3,
         get_microsoft_teams_channel_configuration/2,
         get_microsoft_teams_channel_configuration/3,
         list_microsoft_teams_channel_configurations/2,
         list_microsoft_teams_channel_configurations/3,
         list_microsoft_teams_configured_teams/2,
         list_microsoft_teams_configured_teams/3,
         list_microsoft_teams_user_identities/2,
         list_microsoft_teams_user_identities/3,
         update_account_preferences/2,
         update_account_preferences/3,
         update_chime_webhook_configuration/2,
         update_chime_webhook_configuration/3,
         update_microsoft_teams_channel_configuration/2,
         update_microsoft_teams_channel_configuration/3,
         update_slack_channel_configuration/2,
         update_slack_channel_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates Chime Webhook Configuration
create_chime_webhook_configuration(Client, Input) ->
    create_chime_webhook_configuration(Client, Input, []).
create_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-chime-webhook-configuration"],
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

%% @doc Creates MS Teams Channel Configuration
create_microsoft_teams_channel_configuration(Client, Input) ->
    create_microsoft_teams_channel_configuration(Client, Input, []).
create_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-ms-teams-channel-configuration"],
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

%% @doc Creates Slack Channel Configuration
create_slack_channel_configuration(Client, Input) ->
    create_slack_channel_configuration(Client, Input, []).
create_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-slack-channel-configuration"],
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

%% @doc Deletes a Chime Webhook Configuration
delete_chime_webhook_configuration(Client, Input) ->
    delete_chime_webhook_configuration(Client, Input, []).
delete_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-chime-webhook-configuration"],
    SuccessStatusCode = 204,
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

%% @doc Deletes MS Teams Channel Configuration
delete_microsoft_teams_channel_configuration(Client, Input) ->
    delete_microsoft_teams_channel_configuration(Client, Input, []).
delete_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-channel-configuration"],
    SuccessStatusCode = 204,
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

%% @doc Deletes the Microsoft Teams team authorization allowing for channels
%% to be configured in that Microsoft Teams team.
%%
%% Note that the Microsoft Teams team must have no channels configured to
%% remove it.
delete_microsoft_teams_configured_team(Client, Input) ->
    delete_microsoft_teams_configured_team(Client, Input, []).
delete_microsoft_teams_configured_team(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-configured-teams"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a Teams user identity
delete_microsoft_teams_user_identity(Client, Input) ->
    delete_microsoft_teams_user_identity(Client, Input, []).
delete_microsoft_teams_user_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-user-identity"],
    SuccessStatusCode = 204,
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

%% @doc Deletes Slack Channel Configuration
delete_slack_channel_configuration(Client, Input) ->
    delete_slack_channel_configuration(Client, Input, []).
delete_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-channel-configuration"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a Slack user identity
delete_slack_user_identity(Client, Input) ->
    delete_slack_user_identity(Client, Input, []).
delete_slack_user_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-user-identity"],
    SuccessStatusCode = 204,
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

%% @doc Deletes the Slack workspace authorization that allows channels to be
%% configured in that workspace.
%%
%% This requires all configured channels in the workspace to be deleted.
delete_slack_workspace_authorization(Client, Input) ->
    delete_slack_workspace_authorization(Client, Input, []).
delete_slack_workspace_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-workspace-authorization"],
    SuccessStatusCode = 204,
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

%% @doc Lists Chime Webhook Configurations optionally filtered by
%% ChatConfigurationArn
describe_chime_webhook_configurations(Client, Input) ->
    describe_chime_webhook_configurations(Client, Input, []).
describe_chime_webhook_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-chime-webhook-configurations"],
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

%% @doc Lists Slack Channel Configurations optionally filtered by
%% ChatConfigurationArn
describe_slack_channel_configurations(Client, Input) ->
    describe_slack_channel_configurations(Client, Input, []).
describe_slack_channel_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-channel-configurations"],
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

%% @doc Lists all Slack user identities with a mapped role.
describe_slack_user_identities(Client, Input) ->
    describe_slack_user_identities(Client, Input, []).
describe_slack_user_identities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-user-identities"],
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

%% @doc Lists all authorized Slack Workspaces for AWS Account
describe_slack_workspaces(Client, Input) ->
    describe_slack_workspaces(Client, Input, []).
describe_slack_workspaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-workspaces"],
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

%% @doc Get Chatbot account level preferences
get_account_preferences(Client, Input) ->
    get_account_preferences(Client, Input, []).
get_account_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-account-preferences"],
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

%% @doc Get a single MS Teams Channel Configurations
get_microsoft_teams_channel_configuration(Client, Input) ->
    get_microsoft_teams_channel_configuration(Client, Input, []).
get_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-ms-teams-channel-configuration"],
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

%% @doc Lists MS Teams Channel Configurations optionally filtered by TeamId
list_microsoft_teams_channel_configurations(Client, Input) ->
    list_microsoft_teams_channel_configurations(Client, Input, []).
list_microsoft_teams_channel_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-channel-configurations"],
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

%% @doc Lists all authorized MS teams for AWS Account
list_microsoft_teams_configured_teams(Client, Input) ->
    list_microsoft_teams_configured_teams(Client, Input, []).
list_microsoft_teams_configured_teams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-configured-teams"],
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

%% @doc Lists all Microsoft Teams user identities with a mapped role.
list_microsoft_teams_user_identities(Client, Input) ->
    list_microsoft_teams_user_identities(Client, Input, []).
list_microsoft_teams_user_identities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-user-identities"],
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

%% @doc Update Chatbot account level preferences
update_account_preferences(Client, Input) ->
    update_account_preferences(Client, Input, []).
update_account_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-account-preferences"],
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

%% @doc Updates a Chime Webhook Configuration
update_chime_webhook_configuration(Client, Input) ->
    update_chime_webhook_configuration(Client, Input, []).
update_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-chime-webhook-configuration"],
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

%% @doc Updates MS Teams Channel Configuration
update_microsoft_teams_channel_configuration(Client, Input) ->
    update_microsoft_teams_channel_configuration(Client, Input, []).
update_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-ms-teams-channel-configuration"],
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

%% @doc Updates Slack Channel Configuration
update_slack_channel_configuration(Client, Input) ->
    update_slack_channel_configuration(Client, Input, []).
update_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-slack-channel-configuration"],
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
    Client1 = Client#{service => <<"chatbot">>},
    Host = build_host(<<"chatbot">>, Client1),
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
