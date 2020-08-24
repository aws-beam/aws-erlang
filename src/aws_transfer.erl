%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Transfer Family is a fully managed service that enables the
%% transfer of files over the the File Transfer Protocol (FTP), File Transfer
%% Protocol over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol
%% (SFTP) directly into and out of Amazon Simple Storage Service (Amazon S3).
%% AWS helps you seamlessly migrate your file transfer workflows to AWS
%% Transfer Family by integrating with existing authentication systems, and
%% providing DNS routing with Amazon Route 53 so nothing changes for your
%% customers and partners, or their applications. With your data in Amazon
%% S3, you can use it with AWS services for processing, analytics, machine
%% learning, and archiving. Getting started with AWS Transfer Family is easy
%% since there is no infrastructure to buy and set up.
-module(aws_transfer).

-export([create_server/2,
         create_server/3,
         create_user/2,
         create_user/3,
         delete_server/2,
         delete_server/3,
         delete_ssh_public_key/2,
         delete_ssh_public_key/3,
         delete_user/2,
         delete_user/3,
         describe_server/2,
         describe_server/3,
         describe_user/2,
         describe_user/3,
         import_ssh_public_key/2,
         import_ssh_public_key/3,
         list_servers/2,
         list_servers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/2,
         list_users/3,
         start_server/2,
         start_server/3,
         stop_server/2,
         stop_server/3,
         tag_resource/2,
         tag_resource/3,
         test_identity_provider/2,
         test_identity_provider/3,
         untag_resource/2,
         untag_resource/3,
         update_server/2,
         update_server/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Instantiates an autoscaling virtual server based on the selected file
%% transfer protocol in AWS. When you make updates to your file transfer
%% protocol-enabled server or when you work with users, use the
%% service-generated <code>ServerId</code> property that is assigned to the
%% newly created server.
create_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_server(Client, Input, []).
create_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServer">>, Input, Options).

%% @doc Creates a user and associates them with an existing file transfer
%% protocol-enabled server. You can only create and associate users with
%% servers that have the <code>IdentityProviderType</code> set to
%% <code>SERVICE_MANAGED</code>. Using parameters for
%% <code>CreateUser</code>, you can specify the user name, set the home
%% directory, store the user's public key, and assign the user's AWS Identity
%% and Access Management (IAM) role. You can also optionally add a scope-down
%% policy, and assign metadata with tags that can be used to group and search
%% for users.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes the file transfer protocol-enabled server that you specify.
%%
%% No response returns from this operation.
delete_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server(Client, Input, []).
delete_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServer">>, Input, Options).

%% @doc Deletes a user's Secure Shell (SSH) public key.
%%
%% No response is returned from this operation.
delete_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ssh_public_key(Client, Input, []).
delete_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSshPublicKey">>, Input, Options).

%% @doc Deletes the user belonging to a file transfer protocol-enabled server
%% you specify.
%%
%% No response returns from this operation.
%%
%% <note> When you delete a user from a server, the user's information is
%% lost.
%%
%% </note>
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Describes a file transfer protocol-enabled server that you specify by
%% passing the <code>ServerId</code> parameter.
%%
%% The response contains a description of a server's properties. When you set
%% <code>EndpointType</code> to VPC, the response will contain the
%% <code>EndpointDetails</code>.
describe_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_server(Client, Input, []).
describe_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServer">>, Input, Options).

%% @doc Describes the user assigned to the specific file transfer
%% protocol-enabled server, as identified by its <code>ServerId</code>
%% property.
%%
%% The response from this call returns the properties of the user associated
%% with the <code>ServerId</code> value that was specified.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Adds a Secure Shell (SSH) public key to a user account identified by
%% a <code>UserName</code> value assigned to the specific file transfer
%% protocol-enabled server, identified by <code>ServerId</code>.
%%
%% The response returns the <code>UserName</code> value, the
%% <code>ServerId</code> value, and the name of the
%% <code>SshPublicKeyId</code>.
import_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_ssh_public_key(Client, Input, []).
import_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSshPublicKey">>, Input, Options).

%% @doc Lists the file transfer protocol-enabled servers that are associated
%% with your AWS account.
list_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_servers(Client, Input, []).
list_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServers">>, Input, Options).

%% @doc Lists all of the tags associated with the Amazon Resource Number
%% (ARN) you specify. The resource can be a user, server, or role.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the users for a file transfer protocol-enabled server that you
%% specify by passing the <code>ServerId</code> parameter.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% <code>OFFLINE</code> to <code>ONLINE</code>. It has no impact on a server
%% that is already <code>ONLINE</code>. An <code>ONLINE</code> server can
%% accept and process file transfer jobs.
%%
%% The state of <code>STARTING</code> indicates that the server is in an
%% intermediate state, either not fully able to respond, or not fully online.
%% The values of <code>START_FAILED</code> can indicate an error condition.
%%
%% No response is returned from this call.
start_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_server(Client, Input, []).
start_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartServer">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% <code>ONLINE</code> to <code>OFFLINE</code>. An <code>OFFLINE</code>
%% server cannot accept and process file transfer jobs. Information tied to
%% your server, such as server and user properties, are not affected by
%% stopping your server. Stopping the server will not reduce or impact your
%% file transfer protocol endpoint billing.
%%
%% The state of <code>STOPPING</code> indicates that the server is in an
%% intermediate state, either not fully able to respond, or not fully
%% offline. The values of <code>STOP_FAILED</code> can indicate an error
%% condition.
%%
%% No response is returned from this call.
stop_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_server(Client, Input, []).
stop_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopServer">>, Input, Options).

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN). Resources are users, servers, roles, and other
%% entities.
%%
%% There is no response returned from this call.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc If the <code>IdentityProviderType</code> of a file transfer
%% protocol-enabled server is <code>API_Gateway</code>, tests whether your
%% API Gateway is set up successfully. We highly recommend that you call this
%% operation to test your authentication method as soon as you create your
%% server. By doing so, you can troubleshoot issues with the API Gateway
%% integration to ensure that your users can successfully use the service.
test_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_identity_provider(Client, Input, []).
test_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestIdentityProvider">>, Input, Options).

%% @doc Detaches a key-value pair from a resource, as identified by its
%% Amazon Resource Name (ARN). Resources are users, servers, roles, and other
%% entities.
%%
%% No response is returned from this call.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the file transfer protocol-enabled server's properties after
%% that server has been created.
%%
%% The <code>UpdateServer</code> call returns the <code>ServerId</code> of
%% the server you updated.
update_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server(Client, Input, []).
update_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServer">>, Input, Options).

%% @doc Assigns new properties to a user. Parameters you pass modify any or
%% all of the following: the home directory, role, and policy for the
%% <code>UserName</code> and <code>ServerId</code> you specify.
%%
%% The response returns the <code>ServerId</code> and the
%% <code>UserName</code> for the updated user.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"transfer">>},
    Host = build_host(<<"transfer">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"TransferService.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
