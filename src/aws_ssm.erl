%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Simple Systems Manager (SSM) enables you to remotely manage the
%% configuration of your Amazon EC2 instance. Using SSM, you can run scripts
%% or commands using either EC2 Run Command or SSM Config. (SSM Config is
%% currently available only for Windows instances.)
%%
%% <p/> <b>Run Command</b> Run Command provides an on-demand experience for
%% executing commands. You can use pre-defined Amazon SSM documents to
%% perform the actions listed later in this section, or you can create your
%% own documents. With these documents, you can remotely configure your
%% instances by sending commands using the <b>Commands</b> page in the <a
%% href="http://console.aws.amazon.com/ec2/">Amazon EC2 console</a>, <a
%% href="http://docs.aws.amazon.com/powershell/latest/reference/items/Amazon_Simple_Systems_Management_cmdlets.html">AWS
%% Tools for Windows PowerShell</a>, or the <a
%% href="http://docs.aws.amazon.com/cli/latest/reference/ssm/index.html">AWS
%% CLI</a>.
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
%% <p/> <b>SSM Config</b> SSM Config is a lightweight instance configuration
%% solution. SSM Config is currently only available for Windows instances.
%% With SSM Config, you can specify a setup configuration for your instances.
%% SSM Config is similar to EC2 User Data, which is another way of running
%% one-time scripts or applying settings during instance launch. SSM Config
%% is an extension of this capability. Using SSM documents, you can specify
%% which actions the system should perform on your instances, including which
%% applications to install, which AWS Directory Service directory to join,
%% which Microsoft PowerShell modules to install, etc. If an instance is
%% missing one or more of these configurations, the system makes those
%% changes. By default, the system checks every five minutes to see if there
%% is a new configuration to apply as defined in a new SSM document. If so,
%% the system updates the instances accordingly. In this way, you can
%% remotely maintain a consistent configuration baseline on your instances.
%% SSM Config is available using the AWS CLI or the AWS Tools for Windows
%% PowerShell. For more information, see <a
%% href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-configuration-manage.html">Managing
%% Windows Instance Configuration</a>.
%%
%% <para>SSM Config and Run Command include the following pre-defined
%% documents.</para> <table> <title>Amazon Pre-defined SSM Documents</title>
%% <tgroup cols="3"> <colspec colname="col1" colnum="1" colwidth="1*"/>
%% <colspec colname="col2" colnum="2" colwidth="1*"/> <colspec colname="col3"
%% colnum="3" colwidth="1*"/> <thead> <row> <entry>Name</entry>
%% <entry>Description</entry> <entry>Platform</entry> </row> </thead> <tbody>
%% <row> <entry> <para>AWS-RunShellScript</para> </entry> <entry> <para>Run
%% shell scripts</para> </entry> <entry> <para>Linux</para> </entry> </row>
%% <row> <entry> <para>AWS-UpdateSSMAgent</para> </entry> <entry>
%% <para>Update the Amazon SSM agent</para> </entry> <entry>
%% <para>Linux</para> </entry> </row> <row> <entry>
%% <para>AWS-JoinDirectoryServiceDomain </para> </entry> <entry> <para>Join
%% an AWS Directory </para> </entry> <entry> <para>Windows</para> </entry>
%% </row> <row> <entry> <para>AWS-RunPowerShellScript</para> </entry> <entry>
%% <para>Run PowerShell commands or scripts</para> </entry> <entry>
%% <para>Windows</para> </entry> </row> <row> <entry>
%% <para>AWS-UpdateEC2Config</para> </entry> <entry> <para>Update the
%% EC2Config service </para> </entry> <entry> <para>Windows</para> </entry>
%% </row> <row> <entry> <para>AWS-ConfigureWindowsUpdate</para> </entry>
%% <entry> <para>Configure Windows Update settings</para> </entry> <entry>
%% <para>Windows</para> </entry> </row> <row> <entry>
%% <para>AWS-InstallApplication</para> </entry> <entry> <para>Install,
%% repair, or uninstall software using an MSI package</para> </entry> <entry>
%% <para>Windows</para> </entry> </row> <row> <entry>
%% <para>AWS-InstallPowerShellModule</para> </entry> <entry> <para>Install
%% PowerShell modules </para> </entry> <entry> <para>Windows</para> </entry>
%% </row> <row> <entry> <para>AWS-ConfigureCloudWatch</para> </entry> <entry>
%% <para>Configure Amazon CloudWatch Logs to monitor applications and
%% systems</para> </entry> <entry> <para>Windows</para> </entry> </row>
%% </tbody> </tgroup> </table> <important> <simpara>The commands or scripts
%% specified in SSM documents run with administrative privilege on your
%% instances because the Amazon SSM agent runs as root on Linux and the
%% EC2Config service runs in the Local System account on Windows. If a user
%% has permission to execute any of the pre-defined SSM documents (any
%% document that begins with AWS-*) then that user also has administrator
%% access to the instance. Delegate access to SSM and Run Command
%% judiciously. This becomes extremely important if you create your own SSM
%% documents. Amazon Web Services does not provide guidance about how to
%% create secure SSM documents. You create SSM documents and delegate access
%% to Run Command at your own risk. As a security best practice, we recommend
%% that you assign access to "AWS-*" documents, especially the
%% AWS-RunShellScript document on Linux and the AWS-RunPowerShellScript
%% document on Windows, to trusted administrators only. You can create SSM
%% documents for specific tasks and delegate access to
%% non-administrators.</simpara> </important>
-module(aws_ssm).

-export([cancel_command/2,
         cancel_command/3,
         create_association/2,
         create_association/3,
         create_association_batch/2,
         create_association_batch/3,
         create_document/2,
         create_document/3,
         delete_association/2,
         delete_association/3,
         delete_document/2,
         delete_document/3,
         describe_association/2,
         describe_association/3,
         describe_document/2,
         describe_document/3,
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
         send_command/2,
         send_command/3,
         update_association_status/2,
         update_association_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Attempts to cancel the command specified by the Command ID. There is
%% no guarantee that the command will be terminated and the underlying
%% process stopped.
cancel_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_command(Client, Input, []).
cancel_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCommand">>, Input, Options).

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
%% After you create an SSM document, you can use <a>CreateAssociation</a> to
%% associate it with one or more running instances.
create_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document(Client, Input, []).
create_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocument">>, Input, Options).

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
    Host = aws_util:binary_join([<<"ssm.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
