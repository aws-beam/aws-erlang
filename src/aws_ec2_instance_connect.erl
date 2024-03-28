%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon EC2 Instance Connect API Reference.
%%
%% It
%% provides descriptions, syntax, and usage examples for each of the actions
%% for Amazon EC2
%% Instance Connect. Amazon EC2 Instance Connect enables system
%% administrators to publish
%% one-time use SSH public keys to EC2, providing users a simple and secure
%% way to connect
%% to their instances.
%%
%% To view the Amazon EC2 Instance Connect content in the Amazon EC2 User
%% Guide, see Connect to
%% your Linux instance using EC2 Instance Connect:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html.
%%
%% For Amazon EC2 APIs, see the Amazon EC2 API
%% Reference:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html.
-module(aws_ec2_instance_connect).

-export([send_serial_console_ssh_public_key/2,
         send_serial_console_ssh_public_key/3,
         send_ssh_public_key/2,
         send_ssh_public_key/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% auth_exception() :: #{
%%   <<"Message">> => string()
%% }
-type auth_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ec2_instance_not_found_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_state_invalid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ec2_instance_state_invalid_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_type_invalid_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ec2_instance_type_invalid_exception() :: #{binary() => any()}.

%% Example:
%% ec2_instance_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ec2_instance_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% invalid_args_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_args_exception() :: #{binary() => any()}.

%% Example:
%% send_serial_console_ssh_public_key_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"SSHPublicKey">> := string(),
%%   <<"SerialPort">> => integer()
%% }
-type send_serial_console_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% send_serial_console_ssh_public_key_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Success">> => boolean()
%% }
-type send_serial_console_ssh_public_key_response() :: #{binary() => any()}.

%% Example:
%% send_ssh_public_key_request() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"InstanceOSUser">> := string(),
%%   <<"SSHPublicKey">> := string()
%% }
-type send_ssh_public_key_request() :: #{binary() => any()}.

%% Example:
%% send_ssh_public_key_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Success">> => boolean()
%% }
-type send_ssh_public_key_response() :: #{binary() => any()}.

%% Example:
%% serial_console_access_disabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type serial_console_access_disabled_exception() :: #{binary() => any()}.

%% Example:
%% serial_console_session_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type serial_console_session_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% serial_console_session_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type serial_console_session_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% serial_console_session_unsupported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type serial_console_session_unsupported_exception() :: #{binary() => any()}.

%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

-type send_serial_console_ssh_public_key_errors() ::
    throttling_exception() | 
    service_exception() | 
    serial_console_session_unsupported_exception() | 
    serial_console_session_unavailable_exception() | 
    serial_console_session_limit_exceeded_exception() | 
    serial_console_access_disabled_exception() | 
    invalid_args_exception() | 
    ec2_instance_unavailable_exception() | 
    ec2_instance_type_invalid_exception() | 
    ec2_instance_state_invalid_exception() | 
    ec2_instance_not_found_exception() | 
    auth_exception().

-type send_ssh_public_key_errors() ::
    throttling_exception() | 
    service_exception() | 
    invalid_args_exception() | 
    ec2_instance_unavailable_exception() | 
    ec2_instance_state_invalid_exception() | 
    ec2_instance_not_found_exception() | 
    auth_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Pushes an SSH public key to the specified EC2 instance.
%%
%% The key remains for 60
%% seconds, which gives you 60 seconds to establish a serial console
%% connection to the
%% instance using SSH. For more information, see EC2 Serial Console:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html
%% in
%% the Amazon EC2 User Guide.
-spec send_serial_console_ssh_public_key(aws_client:aws_client(), send_serial_console_ssh_public_key_request()) ->
    {ok, send_serial_console_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, send_serial_console_ssh_public_key_errors(), tuple()}.
send_serial_console_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_serial_console_ssh_public_key(Client, Input, []).

-spec send_serial_console_ssh_public_key(aws_client:aws_client(), send_serial_console_ssh_public_key_request(), proplists:proplist()) ->
    {ok, send_serial_console_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, send_serial_console_ssh_public_key_errors(), tuple()}.
send_serial_console_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendSerialConsoleSSHPublicKey">>, Input, Options).

%% @doc Pushes an SSH public key to the specified EC2 instance for use by the
%% specified user.
%%
%% The key remains for 60 seconds. For more information, see Connect to
%% your Linux instance using EC2 Instance Connect:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html
%% in the Amazon EC2
%% User Guide.
-spec send_ssh_public_key(aws_client:aws_client(), send_ssh_public_key_request()) ->
    {ok, send_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, send_ssh_public_key_errors(), tuple()}.
send_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_ssh_public_key(Client, Input, []).

-spec send_ssh_public_key(aws_client:aws_client(), send_ssh_public_key_request(), proplists:proplist()) ->
    {ok, send_ssh_public_key_response(), tuple()} |
    {error, any()} |
    {error, send_ssh_public_key_errors(), tuple()}.
send_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendSSHPublicKey">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"ec2-instance-connect">>},
    Host = build_host(<<"ec2-instance-connect">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSEC2InstanceConnectService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
