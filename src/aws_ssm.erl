%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc This is the Amazon Simple Systems Manager (SSM) API Reference. SSM
%% enables you to remotely manage the configuration of your on-premises
%% servers and virtual machines (VMs) and your Amazon EC2 instances using
%% scripts, commands, or the Amazon EC2 console. SSM includes an on-demand
%% solution called <i>Amazon EC2 Run Command</i> and a lightweight instance
%% configuration solution called <i>SSM Config</i>.
%%
%% This references is intended to be used with the EC2 Run Command User Guide
%% for <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/execute-remote-commands.html">Linux</a>
%% or <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/execute-remote-commands.html">Windows</a>.
%%
%% <note> You must register your on-premises servers and VMs through an
%% activation process before you can configure them using Run Command.
%% Registered servers and VMs are called <i>managed instances</i>. For more
%% information, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html">Setting
%% Up Run Command On Managed Instances (On-Premises Servers and VMs) on
%% Linux</a> or <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html">Setting
%% Up Run Command On Managed Instances (On-Premises Servers and VMs) on
%% Windows</a>.
%%
%% </note> <b>Run Command</b>
%%
%% Run Command provides an on-demand experience for executing commands. You
%% can use pre-defined SSM documents to perform the actions listed later in
%% this section, or you can create your own documents. With these documents,
%% you can remotely configure your instances by sending commands using the
%% <b>Commands</b> page in the <a
%% href="http://console.aws.amazon.com/ec2/">Amazon EC2 console</a>, <a
%% href="http://docs.aws.amazon.com/powershell/latest/reference/items/Amazon_Simple_Systems_Management_cmdlets.html">AWS
%% Tools for Windows PowerShell</a>, the <a
%% href="http://docs.aws.amazon.com/cli/latest/reference/ssm/index.html">AWS
%% CLI</a>, or AWS SDKs.
%%
%% Run Command reports the status of the command execution for each instance
%% targeted by a command. You can also audit the command execution to
%% understand who executed commands, when, and what changes were made. By
%% switching between different SSM documents, you can quickly configure your
%% instances with different types of commands. To get started with Run
%% Command, verify that your environment meets the prerequisites for remotely
%% running commands on EC2 instances (<a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/remote-commands-prereq.html">Linux</a>
%% or <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/remote-commands-prereq.html">Windows</a>).
%%
%% <p/> <b>SSM Config</b>
%%
%% SSM Config is a lightweight instance configuration solution. SSM Config is
%% currently only available for Windows instances. With SSM Config, you can
%% specify a setup configuration for your instances. SSM Config is similar to
%% EC2 User Data, which is another way of running one-time scripts or
%% applying settings during instance launch. SSM Config is an extension of
%% this capability. Using SSM documents, you can specify which actions the
%% system should perform on your instances, including which applications to
%% install, which AWS Directory Service directory to join, which Microsoft
%% PowerShell modules to install, etc. If an instance is missing one or more
%% of these configurations, the system makes those changes. By default, the
%% system checks every five minutes to see if there is a new configuration to
%% apply as defined in a new SSM document. If so, the system updates the
%% instances accordingly. In this way, you can remotely maintain a consistent
%% configuration baseline on your instances. SSM Config is available using
%% the AWS CLI or the AWS Tools for Windows PowerShell. For more information,
%% see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-configuration-manage.html">Managing
%% Windows Instance Configuration</a>.
%%
%% SSM Config and Run Command include the following pre-defined documents.
%%
%% <b>Linux</b>
%%
%% <ul> <li> <b>AWS-RunShellScript</b> to run shell scripts
%%
%% </li> <li> <b>AWS-UpdateSSMAgent</b> to update the Amazon SSM agent
%%
%% </li> </ul> <p/> <b>Windows</b>
%%
%% <ul> <li> <b>AWS-JoinDirectoryServiceDomain</b> to join an AWS Directory
%%
%% </li> <li> <b>AWS-RunPowerShellScript</b> to run PowerShell commands or
%% scripts
%%
%% </li> <li> <b>AWS-UpdateEC2Config</b> to update the EC2Config service
%%
%% </li> <li> <b>AWS-ConfigureWindowsUpdate</b> to configure Windows Update
%% settings
%%
%% </li> <li> <b>AWS-InstallApplication</b> to install, repair, or uninstall
%% software using an MSI package
%%
%% </li> <li> <b>AWS-InstallPowerShellModule</b> to install PowerShell
%% modules
%%
%% </li> <li> <b>AWS-ConfigureCloudWatch</b> to configure Amazon CloudWatch
%% Logs to monitor applications and systems
%%
%% </li> <li> <b>AWS-ListWindowsInventory</b> to collect information about an
%% EC2 instance running in Windows.
%%
%% </li> <li> <b>AWS-FindWindowsUpdates</b> to scan an instance and
%% determines which updates are missing.
%%
%% </li> <li> <b>AWS-InstallMissingWindowsUpdates</b> to install missing
%% updates on your EC2 instance.
%%
%% </li> <li> <b>AWS-InstallSpecificWindowsUpdates</b> to install one or more
%% specific updates.
%%
%% </li> </ul> <important> The commands or scripts specified in SSM documents
%% run with administrative privilege on your instances because the Amazon SSM
%% agent runs as root on Linux and the EC2Config service runs in the Local
%% System account on Windows. If a user has permission to execute any of the
%% pre-defined SSM documents (any document that begins with AWS-*) then that
%% user also has administrator access to the instance. Delegate access to Run
%% Command and SSM Config judiciously. This becomes extremely important if
%% you create your own SSM documents. Amazon Web Services does not provide
%% guidance about how to create secure SSM documents. You create SSM
%% documents and delegate access to Run Command at your own risk. As a
%% security best practice, we recommend that you assign access to "AWS-*"
%% documents, especially the AWS-RunShellScript document on Linux and the
%% AWS-RunPowerShellScript document on Windows, to trusted administrators
%% only. You can create SSM documents for specific tasks and delegate access
%% to non-administrators.
%%
%% </important> For information about creating and sharing SSM documents, see
%% the following topics in the SSM User Guide:
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-ssm-doc.html">Creating
%% SSM Documents</a> and <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssm-sharing.html">Sharing
%% SSM Documents</a> (Linux)
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/create-ssm-doc.html">Creating
%% SSM Documents</a> and <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ssm-sharing.html">Sharing
%% SSM Documents</a> (Windows)
%%
%% </li> </ul>
-module(aws_ssm).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         cancel_command/2,
         cancel_command/3,
         create_activation/2,
         create_activation/3,
         create_association/2,
         create_association/3,
         create_association_batch/2,
         create_association_batch/3,
         create_document/2,
         create_document/3,
         delete_activation/2,
         delete_activation/3,
         delete_association/2,
         delete_association/3,
         delete_document/2,
         delete_document/3,
         deregister_managed_instance/2,
         deregister_managed_instance/3,
         describe_activations/2,
         describe_activations/3,
         describe_association/2,
         describe_association/3,
         describe_document/2,
         describe_document/3,
         describe_document_permission/2,
         describe_document_permission/3,
         describe_instance_information/2,
         describe_instance_information/3,
         get_document/2,
         get_document/3,
         list_associations/2,
         list_associations/3,
         list_command_invocations/2,
         list_command_invocations/3,
         list_commands/2,
         list_commands/3,
         list_documents/2,
         list_documents/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_document_permission/2,
         modify_document_permission/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         send_command/2,
         send_command/3,
         update_association_status/2,
         update_association_status/3,
         update_managed_instance_role/2,
         update_managed_instance_role/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds or overwrites one or more tags for the specified resource. Tags
%% are metadata that you assign to your managed instances. Tags enable you to
%% categorize your managed instances in different ways, for example, by
%% purpose, owner, or environment. Each tag consists of a key and an optional
%% value, both of which you define. For example, you could define a set of
%% tags for your account's managed instances that helps you track each
%% instance's owner and stack level. For example: Key=Owner and
%% Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production,
%% Pre-Production, or Test. Each resource can have a maximum of 10 tags.
%%
%% We recommend that you devise a set of tag keys that meets your needs for
%% each resource type. Using a consistent set of tag keys makes it easier for
%% you to manage your resources. You can search and filter the resources
%% based on the tags you add. Tags don't have any semantic meaning to Amazon
%% EC2 and are interpreted strictly as a string of characters.
%%
%% For more information about tags, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging
%% Your Amazon EC2 Resources</a> in the Amazon EC2 User Guide.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Attempts to cancel the command specified by the Command ID. There is
%% no guarantee that the command will be terminated and the underlying
%% process stopped.
cancel_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_command(Client, Input, []).
cancel_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCommand">>, Input, Options).

%% @doc Registers your on-premises server or virtual machine with Amazon EC2
%% so that you can manage these resources using Run Command. An on-premises
%% server or virtual machine that has been registered with EC2 is called a
%% managed instance. For more information about activations, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html">Setting
%% Up Managed Instances (Linux)</a> or <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html">Setting
%% Up Managed Instances (Windows)</a> in the Amazon EC2 User Guide.
create_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_activation(Client, Input, []).
create_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateActivation">>, Input, Options).

%% @doc Associates the specified SSM document with the specified instance.
%%
%% When you associate an SSM document with an instance, the configuration
%% agent on the instance processes the document and configures the instance
%% as specified.
%%
%% If you associate a document with an instance that already has an
%% associated document, the system throws the AssociationAlreadyExists
%% exception.
create_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association(Client, Input, []).
create_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociation">>, Input, Options).

%% @doc Associates the specified SSM document with the specified instances.
%%
%% When you associate an SSM document with an instance, the configuration
%% agent on the instance processes the document and configures the instance
%% as specified.
%%
%% If you associate a document with an instance that already has an
%% associated document, the system throws the AssociationAlreadyExists
%% exception.
create_association_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_association_batch(Client, Input, []).
create_association_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssociationBatch">>, Input, Options).

%% @doc Creates an SSM document.
%%
%% After you create an SSM document, you can use CreateAssociation to
%% associate it with one or more running instances.
create_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document(Client, Input, []).
create_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocument">>, Input, Options).

%% @doc Deletes an activation. You are not required to delete an activation.
%% If you delete an activation, you can no longer use it to register
%% additional managed instances. Deleting an activation does not de-register
%% managed instances. You must manually de-register managed instances.
delete_activation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_activation(Client, Input, []).
delete_activation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteActivation">>, Input, Options).

%% @doc Disassociates the specified SSM document from the specified instance.
%%
%% When you disassociate an SSM document from an instance, it does not change
%% the configuration of the instance. To change the configuration state of an
%% instance after you disassociate a document, you must create a new document
%% with the desired configuration and associate it with the instance.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Deletes the SSM document and all instance associations to the
%% document.
%%
%% Before you delete the SSM document, we recommend that you use
%% DeleteAssociation to disassociate all instances that are associated with
%% the document.
delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document(Client, Input, []).
delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocument">>, Input, Options).

%% @doc Removes the server or virtual machine from the list of registered
%% servers. You can reregister the instance again at any time. If you don’t
%% plan to use Run Command on the server, we suggest uninstalling the SSM
%% agent first.
deregister_managed_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_managed_instance(Client, Input, []).
deregister_managed_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterManagedInstance">>, Input, Options).

%% @doc Details about the activation, including: the date and time the
%% activation was created, the expiration date, the IAM role assigned to the
%% instances in the activation, and the number of instances activated by this
%% registration.
describe_activations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_activations(Client, Input, []).
describe_activations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActivations">>, Input, Options).

%% @doc Describes the associations for the specified SSM document or
%% instance.
describe_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_association(Client, Input, []).
describe_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssociation">>, Input, Options).

%% @doc Describes the specified SSM document.
describe_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document(Client, Input, []).
describe_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocument">>, Input, Options).

%% @doc Describes the permissions for an SSM document. If you created the
%% document, you are the owner. If a document is shared, it can either be
%% shared privately (by specifying a user’s AWS account ID) or publicly
%% (<i>All</i>).
describe_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_permission(Client, Input, []).
describe_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentPermission">>, Input, Options).

%% @doc Describes one or more of your instances. You can use this to get
%% information about instances like the operating system platform, the SSM
%% agent version, status etc. If you specify one or more instance IDs, it
%% returns information for those instances. If you do not specify instance
%% IDs, it returns information for all your instances. If you specify an
%% instance ID that is not valid or an instance that you do not own, you
%% receive an error.
describe_instance_information(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_information(Client, Input, []).
describe_instance_information(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceInformation">>, Input, Options).

%% @doc Gets the contents of the specified SSM document.
get_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document(Client, Input, []).
get_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocument">>, Input, Options).

%% @doc Lists the associations for the specified SSM document or instance.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc An invocation is copy of a command sent to a specific instance. A
%% command can apply to one or more instances. A command invocation applies
%% to one instance. For example, if a user executes SendCommand against three
%% instances, then a command invocation is created for each requested
%% instance ID. ListCommandInvocations provide status about command
%% execution.
list_command_invocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_command_invocations(Client, Input, []).
list_command_invocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommandInvocations">>, Input, Options).

%% @doc Lists the commands requested by users of the AWS account.
list_commands(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_commands(Client, Input, []).
list_commands(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCommands">>, Input, Options).

%% @doc Describes one or more of your SSM documents.
list_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_documents(Client, Input, []).
list_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocuments">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Share a document publicly or privately. If you share a document
%% privately, you must specify the AWS user account IDs for those people who
%% can use the document. If you share a document publicly, you must specify
%% <i>All</i> as the account ID.
modify_document_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_document_permission(Client, Input, []).
modify_document_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDocumentPermission">>, Input, Options).

%% @doc Removes all tags from the specified resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Executes commands on one or more remote instances.
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).
send_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCommand">>, Input, Options).

%% @doc Updates the status of the SSM document associated with the specified
%% instance.
update_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_association_status(Client, Input, []).
update_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssociationStatus">>, Input, Options).

%% @doc Assigns or changes an Amazon Identity and Access Management (IAM)
%% role to the managed instance.
update_managed_instance_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_instance_role(Client, Input, []).
update_managed_instance_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedInstanceRole">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"ssm">>},
    Host = get_host(<<"ssm">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonSSM.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
