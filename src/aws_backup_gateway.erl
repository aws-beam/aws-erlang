%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Backup gateway
%%
%% Backup gateway connects Backup to your hypervisor, so you can create,
%% store, and restore backups of your virtual machines (VMs) anywhere,
%% whether on-premises or in the VMware Cloud (VMC) on Amazon Web Services.
%%
%% Add on-premises resources by connecting to a hypervisor through a gateway.
%% Backup will automatically discover the resources in your hypervisor.
%%
%% Use Backup to assign virtual or on-premises resources to a backup plan, or
%% run on-demand backups. Once you have backed up your resources, you can
%% view them and restore them like any resource supported by Backup.
%%
%% To download the Amazon Web Services software to get started, navigate to
%% the Backup console, choose Gateways, then choose Create gateway.
-module(aws_backup_gateway).

-export([associate_gateway_to_server/2,
         associate_gateway_to_server/3,
         create_gateway/2,
         create_gateway/3,
         delete_gateway/2,
         delete_gateway/3,
         delete_hypervisor/2,
         delete_hypervisor/3,
         disassociate_gateway_from_server/2,
         disassociate_gateway_from_server/3,
         get_gateway/2,
         get_gateway/3,
         get_virtual_machine/2,
         get_virtual_machine/3,
         import_hypervisor_configuration/2,
         import_hypervisor_configuration/3,
         list_gateways/2,
         list_gateways/3,
         list_hypervisors/2,
         list_hypervisors/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_virtual_machines/2,
         list_virtual_machines/3,
         put_maintenance_start_time/2,
         put_maintenance_start_time/3,
         tag_resource/2,
         tag_resource/3,
         test_hypervisor_configuration/2,
         test_hypervisor_configuration/3,
         untag_resource/2,
         untag_resource/3,
         update_gateway_information/2,
         update_gateway_information/3,
         update_gateway_software_now/2,
         update_gateway_software_now/3,
         update_hypervisor/2,
         update_hypervisor/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a backup gateway with your server.
%%
%% After you complete the association process, you can back up and restore
%% your VMs through the gateway.
associate_gateway_to_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_gateway_to_server(Client, Input, []).
associate_gateway_to_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateGatewayToServer">>, Input, Options).

%% @doc Creates a backup gateway.
%%
%% After you create a gateway, you can associate it with a server using the
%% `AssociateGatewayToServer' operation.
create_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_gateway(Client, Input, []).
create_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGateway">>, Input, Options).

%% @doc Deletes a backup gateway.
delete_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_gateway(Client, Input, []).
delete_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGateway">>, Input, Options).

%% @doc Deletes a hypervisor.
delete_hypervisor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hypervisor(Client, Input, []).
delete_hypervisor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHypervisor">>, Input, Options).

%% @doc Disassociates a backup gateway from the specified server.
%%
%% After the disassociation process finishes, the gateway can no longer
%% access the virtual machines on the server.
disassociate_gateway_from_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_gateway_from_server(Client, Input, []).
disassociate_gateway_from_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateGatewayFromServer">>, Input, Options).

%% @doc By providing the ARN (Amazon Resource Name), this API returns the
%% gateway.
get_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_gateway(Client, Input, []).
get_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGateway">>, Input, Options).

%% @doc By providing the ARN (Amazon Resource Name), this API returns the
%% virtual machine.
get_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_virtual_machine(Client, Input, []).
get_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVirtualMachine">>, Input, Options).

%% @doc Connect to a hypervisor by importing its configuration.
import_hypervisor_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_hypervisor_configuration(Client, Input, []).
import_hypervisor_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHypervisorConfiguration">>, Input, Options).

%% @doc Lists backup gateways owned by an Amazon Web Services account in an
%% Amazon Web Services Region.
%%
%% The returned list is ordered by gateway Amazon Resource Name (ARN).
list_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_gateways(Client, Input, []).
list_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGateways">>, Input, Options).

%% @doc Lists your hypervisors.
list_hypervisors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hypervisors(Client, Input, []).
list_hypervisors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHypervisors">>, Input, Options).

%% @doc Lists the tags applied to the resource identified by its Amazon
%% Resource Name (ARN).
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists your virtual machines.
list_virtual_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_virtual_machines(Client, Input, []).
list_virtual_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVirtualMachines">>, Input, Options).

%% @doc Set the maintenance start time for a gateway.
put_maintenance_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_maintenance_start_time(Client, Input, []).
put_maintenance_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutMaintenanceStartTime">>, Input, Options).

%% @doc Tag the resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests your hypervisor configuration to validate that backup gateway
%% can connect with the hypervisor and its resources.
test_hypervisor_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_hypervisor_configuration(Client, Input, []).
test_hypervisor_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestHypervisorConfiguration">>, Input, Options).

%% @doc Removes tags from the resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a gateway's name.
%%
%% Specify which gateway to update using the Amazon Resource Name (ARN) of
%% the gateway in your request.
update_gateway_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_information(Client, Input, []).
update_gateway_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewayInformation">>, Input, Options).

%% @doc Updates the gateway virtual machine (VM) software.
%%
%% The request immediately triggers the software update.
%%
%% When you make this request, you get a `200 OK' success response
%% immediately. However, it might take some time for the update to complete.
update_gateway_software_now(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_gateway_software_now(Client, Input, []).
update_gateway_software_now(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGatewaySoftwareNow">>, Input, Options).

%% @doc Updates a hypervisor metadata, including its host, username, and
%% password.
%%
%% Specify which hypervisor to update using the Amazon Resource Name (ARN) of
%% the hypervisor in your request.
update_hypervisor(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hypervisor(Client, Input, []).
update_hypervisor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHypervisor">>, Input, Options).

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
    Client1 = Client#{service => <<"backup-gateway">>},
    Host = build_host(<<"backup-gateway">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"BackupOnPremises_v20210101.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
