%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Support App in Slack
%%
%% You can use the Amazon Web Services Support App in Slack API to manage
%% your support cases in Slack for your Amazon Web Services account.
%%
%% After you configure your Slack workspace and channel with the Amazon Web
%% Services Support App, you can perform the following tasks directly in your
%% Slack channel:
%%
%% <ul> <li> Create, search, update, and resolve your support cases
%%
%% </li> <li> Request service quota increases for your account
%%
%% </li> <li> Invite Amazon Web Services Support agents to your channel so
%% that you can chat directly about your support cases
%%
%% </li> </ul> For more information about how to perform these actions in
%% Slack, see the following documentation in the Amazon Web Services Support
%% User Guide:
%%
%% <ul> <li> Amazon Web Services Support App in Slack
%%
%% </li> <li> Joining a live chat session with Amazon Web Services Support
%%
%% </li> <li> Requesting service quota increases
%%
%% </li> <li> Amazon Web Services Support App commands in Slack
%%
%% </li> </ul> You can also use the Amazon Web Services Management Console
%% instead of the Amazon Web Services Support App API to manage your Slack
%% configurations. For more information, see Authorize a Slack workspace to
%% enable the Amazon Web Services Support App.
%%
%% <note> <ul> <li> <p>You must have a Business or Enterprise Support plan to
%% use the Amazon Web Services Support App API. </p> </li> <li> <p>For more
%% information about the Amazon Web Services Support App endpoints, see the
%% <a
%% href="https://docs.aws.amazon.com/general/latest/gr/awssupport.html#awssupport_app_region">Amazon
%% Web Services Support App in Slack endpoints</a> in the <i>Amazon Web
%% Services General Reference</i>.</p> </li> </ul> </note>
-module(aws_support_app).

-export([create_slack_channel_configuration/2,
         create_slack_channel_configuration/3,
         delete_account_alias/2,
         delete_account_alias/3,
         delete_slack_channel_configuration/2,
         delete_slack_channel_configuration/3,
         delete_slack_workspace_configuration/2,
         delete_slack_workspace_configuration/3,
         get_account_alias/2,
         get_account_alias/3,
         list_slack_channel_configurations/2,
         list_slack_channel_configurations/3,
         list_slack_workspace_configurations/2,
         list_slack_workspace_configurations/3,
         put_account_alias/2,
         put_account_alias/3,
         update_slack_channel_configuration/2,
         update_slack_channel_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Slack channel configuration for your Amazon Web Services
%% account.
%%
%% You can add up to 5 Slack workspaces for your account.
%%
%% You can add up to 20 Slack channels for your account.
%%
%% A Slack channel can have up to 100 Amazon Web Services accounts. This
%% means that only 100 accounts can add the same Slack channel to the Amazon
%% Web Services Support App. We recommend that you only add the accounts that
%% you need to manage support cases for your organization. This can reduce
%% the notifications about case updates that you receive in the Slack
%% channel.
%%
%% We recommend that you choose a private Slack channel so that only members
%% in that channel have read and write access to your support cases. Anyone
%% in your Slack channel can create, update, or resolve support cases for
%% your account. Users require an invitation to join private channels.
create_slack_channel_configuration(Client, Input) ->
    create_slack_channel_configuration(Client, Input, []).
create_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/create-slack-channel-configuration"],
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

%% @doc Deletes an alias for an Amazon Web Services account ID.
%%
%% The alias appears in the Amazon Web Services Support App page of the
%% Amazon Web Services Support Center. The alias also appears in Slack
%% messages from the Amazon Web Services Support App.
delete_account_alias(Client, Input) ->
    delete_account_alias(Client, Input, []).
delete_account_alias(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/delete-account-alias"],
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

%% @doc Deletes a Slack channel configuration from your Amazon Web Services
%% account.
%%
%% This operation doesn't delete your Slack channel.
delete_slack_channel_configuration(Client, Input) ->
    delete_slack_channel_configuration(Client, Input, []).
delete_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/delete-slack-channel-configuration"],
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

%% @doc Deletes a Slack workspace configuration from your Amazon Web Services
%% account.
%%
%% This operation doesn't delete your Slack workspace.
delete_slack_workspace_configuration(Client, Input) ->
    delete_slack_workspace_configuration(Client, Input, []).
delete_slack_workspace_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/delete-slack-workspace-configuration"],
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

%% @doc Retrieves the alias from an Amazon Web Services account ID.
%%
%% The alias appears in the Amazon Web Services Support App page of the
%% Amazon Web Services Support Center. The alias also appears in Slack
%% messages from the Amazon Web Services Support App.
get_account_alias(Client, Input) ->
    get_account_alias(Client, Input, []).
get_account_alias(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/get-account-alias"],
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

%% @doc Lists the Slack channel configurations for an Amazon Web Services
%% account.
list_slack_channel_configurations(Client, Input) ->
    list_slack_channel_configurations(Client, Input, []).
list_slack_channel_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/list-slack-channel-configurations"],
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

%% @doc Lists the Slack workspace configurations for an Amazon Web Services
%% account.
list_slack_workspace_configurations(Client, Input) ->
    list_slack_workspace_configurations(Client, Input, []).
list_slack_workspace_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/list-slack-workspace-configurations"],
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

%% @doc Creates or updates an individual alias for each Amazon Web Services
%% account ID.
%%
%% The alias appears in the Amazon Web Services Support App page of the
%% Amazon Web Services Support Center. The alias also appears in Slack
%% messages from the Amazon Web Services Support App.
put_account_alias(Client, Input) ->
    put_account_alias(Client, Input, []).
put_account_alias(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/put-account-alias"],
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

%% @doc Updates the configuration for a Slack channel, such as case update
%% notifications.
update_slack_channel_configuration(Client, Input) ->
    update_slack_channel_configuration(Client, Input, []).
update_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/control/update-slack-channel-configuration"],
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
    Client1 = Client#{service => <<"supportapp">>},
    Host = build_host(<<"supportapp">>, Client1),
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
