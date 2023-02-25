%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Transfer Family is a fully managed service that enables the transfer
%% of files over the File Transfer Protocol (FTP), File Transfer Protocol
%% over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP)
%% directly into and out of Amazon Simple Storage Service (Amazon S3) or
%% Amazon EFS.
%%
%% Additionally, you can use Applicability Statement 2 (AS2) to transfer
%% files into and out of Amazon S3. Amazon Web Services helps you seamlessly
%% migrate your file transfer workflows to Transfer Family by integrating
%% with existing authentication systems, and providing DNS routing with
%% Amazon Route 53 so nothing changes for your customers and partners, or
%% their applications. With your data in Amazon S3, you can use it with
%% Amazon Web Services for processing, analytics, machine learning, and
%% archiving. Getting started with Transfer Family is easy since there is no
%% infrastructure to buy and set up.
-module(aws_transfer).

-export([create_access/2,
         create_access/3,
         create_agreement/2,
         create_agreement/3,
         create_connector/2,
         create_connector/3,
         create_profile/2,
         create_profile/3,
         create_server/2,
         create_server/3,
         create_user/2,
         create_user/3,
         create_workflow/2,
         create_workflow/3,
         delete_access/2,
         delete_access/3,
         delete_agreement/2,
         delete_agreement/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_connector/2,
         delete_connector/3,
         delete_host_key/2,
         delete_host_key/3,
         delete_profile/2,
         delete_profile/3,
         delete_server/2,
         delete_server/3,
         delete_ssh_public_key/2,
         delete_ssh_public_key/3,
         delete_user/2,
         delete_user/3,
         delete_workflow/2,
         delete_workflow/3,
         describe_access/2,
         describe_access/3,
         describe_agreement/2,
         describe_agreement/3,
         describe_certificate/2,
         describe_certificate/3,
         describe_connector/2,
         describe_connector/3,
         describe_execution/2,
         describe_execution/3,
         describe_host_key/2,
         describe_host_key/3,
         describe_profile/2,
         describe_profile/3,
         describe_security_policy/2,
         describe_security_policy/3,
         describe_server/2,
         describe_server/3,
         describe_user/2,
         describe_user/3,
         describe_workflow/2,
         describe_workflow/3,
         import_certificate/2,
         import_certificate/3,
         import_host_key/2,
         import_host_key/3,
         import_ssh_public_key/2,
         import_ssh_public_key/3,
         list_accesses/2,
         list_accesses/3,
         list_agreements/2,
         list_agreements/3,
         list_certificates/2,
         list_certificates/3,
         list_connectors/2,
         list_connectors/3,
         list_executions/2,
         list_executions/3,
         list_host_keys/2,
         list_host_keys/3,
         list_profiles/2,
         list_profiles/3,
         list_security_policies/2,
         list_security_policies/3,
         list_servers/2,
         list_servers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_users/2,
         list_users/3,
         list_workflows/2,
         list_workflows/3,
         send_workflow_step_state/2,
         send_workflow_step_state/3,
         start_file_transfer/2,
         start_file_transfer/3,
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
         update_access/2,
         update_access/3,
         update_agreement/2,
         update_agreement/3,
         update_certificate/2,
         update_certificate/3,
         update_connector/2,
         update_connector/3,
         update_host_key/2,
         update_host_key/3,
         update_profile/2,
         update_profile/3,
         update_server/2,
         update_server/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Used by administrators to choose which groups in the directory should
%% have access to upload and download files over the enabled protocols using
%% Transfer Family.
%%
%% For example, a Microsoft Active Directory might contain 50,000 users, but
%% only a small fraction might need the ability to transfer files to the
%% server. An administrator can use `CreateAccess' to limit the access to
%% the correct set of users who need this ability.
create_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access(Client, Input, []).
create_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccess">>, Input, Options).

%% @doc Creates an agreement.
%%
%% An agreement is a bilateral trading partner agreement, or partnership,
%% between an Transfer Family server and an AS2 process. The agreement
%% defines the file and message transfer relationship between the server and
%% the AS2 process. To define an agreement, Transfer Family combines a
%% server, local profile, partner profile, certificate, and other attributes.
%%
%% The partner is identified with the `PartnerProfileId', and the AS2
%% process is identified with the `LocalProfileId'.
create_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agreement(Client, Input, []).
create_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgreement">>, Input, Options).

%% @doc Creates the connector, which captures the parameters for an outbound
%% connection for the AS2 protocol.
%%
%% The connector is required for sending files to an externally hosted AS2
%% server. For more details about connectors, see Create AS2 connectors.
create_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connector(Client, Input, []).
create_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnector">>, Input, Options).

%% @doc Creates the local or partner profile to use for AS2 transfers.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Instantiates an auto-scaling virtual server based on the selected
%% file transfer protocol in Amazon Web Services.
%%
%% When you make updates to your file transfer protocol-enabled server or
%% when you work with users, use the service-generated `ServerId'
%% property that is assigned to the newly created server.
create_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_server(Client, Input, []).
create_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServer">>, Input, Options).

%% @doc Creates a user and associates them with an existing file transfer
%% protocol-enabled server.
%%
%% You can only create and associate users with servers that have the
%% `IdentityProviderType' set to `SERVICE_MANAGED'. Using parameters
%% for `CreateUser', you can specify the user name, set the home
%% directory, store the user's public key, and assign the user's
%% Identity and Access Management (IAM) role. You can also optionally add a
%% session policy, and assign metadata with tags that can be used to group
%% and search for users.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Allows you to create a workflow with specified steps and step details
%% the workflow invokes after file transfer completes.
%%
%% After creating a workflow, you can associate the workflow created with any
%% transfer servers by specifying the `workflow-details' field in
%% `CreateServer' and `UpdateServer' operations.
create_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workflow(Client, Input, []).
create_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkflow">>, Input, Options).

%% @doc Allows you to delete the access specified in the `ServerID' and
%% `ExternalID' parameters.
delete_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access(Client, Input, []).
delete_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccess">>, Input, Options).

%% @doc Delete the agreement that's specified in the provided
%% `AgreementId'.
delete_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_agreement(Client, Input, []).
delete_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAgreement">>, Input, Options).

%% @doc Deletes the certificate that's specified in the
%% `CertificateId' parameter.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes the agreement that's specified in the provided
%% `ConnectorId'.
delete_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connector(Client, Input, []).
delete_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnector">>, Input, Options).

%% @doc Deletes the host key that's specified in the `HoskKeyId'
%% parameter.
delete_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_host_key(Client, Input, []).
delete_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHostKey">>, Input, Options).

%% @doc Deletes the profile that's specified in the `ProfileId'
%% parameter.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

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
%% When you delete a user from a server, the user's information is lost.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Deletes the specified workflow.
delete_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workflow(Client, Input, []).
delete_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkflow">>, Input, Options).

%% @doc Describes the access that is assigned to the specific file transfer
%% protocol-enabled server, as identified by its `ServerId' property and
%% its `ExternalId'.
%%
%% The response from this call returns the properties of the access that is
%% associated with the `ServerId' value that was specified.
describe_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_access(Client, Input, []).
describe_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccess">>, Input, Options).

%% @doc Describes the agreement that's identified by the
%% `AgreementId'.
describe_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agreement(Client, Input, []).
describe_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgreement">>, Input, Options).

%% @doc Describes the certificate that's identified by the
%% `CertificateId'.
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Describes the connector that's identified by the
%% `ConnectorId.'
describe_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connector(Client, Input, []).
describe_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnector">>, Input, Options).

%% @doc You can use `DescribeExecution' to check the details of the
%% execution of the specified workflow.
describe_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_execution(Client, Input, []).
describe_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExecution">>, Input, Options).

%% @doc Returns the details of the host key that's specified by the
%% `HostKeyId' and `ServerId'.
describe_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_host_key(Client, Input, []).
describe_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostKey">>, Input, Options).

%% @doc Returns the details of the profile that's specified by the
%% `ProfileId'.
describe_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_profile(Client, Input, []).
describe_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProfile">>, Input, Options).

%% @doc Describes the security policy that is attached to your file transfer
%% protocol-enabled server.
%%
%% The response contains a description of the security policy's
%% properties. For more information about security policies, see Working with
%% security policies.
describe_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_policy(Client, Input, []).
describe_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityPolicy">>, Input, Options).

%% @doc Describes a file transfer protocol-enabled server that you specify by
%% passing the `ServerId' parameter.
%%
%% The response contains a description of a server's properties. When you
%% set `EndpointType' to VPC, the response will contain the
%% `EndpointDetails'.
describe_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_server(Client, Input, []).
describe_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServer">>, Input, Options).

%% @doc Describes the user assigned to the specific file transfer
%% protocol-enabled server, as identified by its `ServerId' property.
%%
%% The response from this call returns the properties of the user associated
%% with the `ServerId' value that was specified.
describe_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user(Client, Input, []).
describe_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUser">>, Input, Options).

%% @doc Describes the specified workflow.
describe_workflow(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workflow(Client, Input, []).
describe_workflow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkflow">>, Input, Options).

%% @doc Imports the signing and encryption certificates that you need to
%% create local (AS2) profiles and partner profiles.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Adds a host key to the server that's specified by the
%% `ServerId' parameter.
import_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_host_key(Client, Input, []).
import_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHostKey">>, Input, Options).

%% @doc Adds a Secure Shell (SSH) public key to a user account identified by
%% a `UserName' value assigned to the specific file transfer
%% protocol-enabled server, identified by `ServerId'.
%%
%% The response returns the `UserName' value, the `ServerId' value,
%% and the name of the `SshPublicKeyId'.
import_ssh_public_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_ssh_public_key(Client, Input, []).
import_ssh_public_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSshPublicKey">>, Input, Options).

%% @doc Lists the details for all the accesses you have on your server.
list_accesses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accesses(Client, Input, []).
list_accesses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccesses">>, Input, Options).

%% @doc Returns a list of the agreements for the server that's identified
%% by the `ServerId' that you supply.
%%
%% If you want to limit the results to a certain number, supply a value for
%% the `MaxResults' parameter. If you ran the command previously and
%% received a value for `NextToken', you can supply that value to
%% continue listing agreements from where you left off.
list_agreements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreements(Client, Input, []).
list_agreements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreements">>, Input, Options).

%% @doc Returns a list of the current certificates that have been imported
%% into Transfer Family.
%%
%% If you want to limit the results to a certain number, supply a value for
%% the `MaxResults' parameter. If you ran the command previously and
%% received a value for the `NextToken' parameter, you can supply that
%% value to continue listing certificates from where you left off.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the connectors for the specified Region.
list_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connectors(Client, Input, []).
list_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnectors">>, Input, Options).

%% @doc Lists all executions for the specified workflow.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Returns a list of host keys for the server that's specified by
%% the `ServerId' parameter.
list_host_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_host_keys(Client, Input, []).
list_host_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHostKeys">>, Input, Options).

%% @doc Returns a list of the profiles for your system.
%%
%% If you want to limit the results to a certain number, supply a value for
%% the `MaxResults' parameter. If you ran the command previously and
%% received a value for `NextToken', you can supply that value to
%% continue listing profiles from where you left off.
list_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_profiles(Client, Input, []).
list_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProfiles">>, Input, Options).

%% @doc Lists the security policies that are attached to your file transfer
%% protocol-enabled servers.
list_security_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_policies(Client, Input, []).
list_security_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityPolicies">>, Input, Options).

%% @doc Lists the file transfer protocol-enabled servers that are associated
%% with your Amazon Web Services account.
list_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_servers(Client, Input, []).
list_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServers">>, Input, Options).

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The resource can be a user, server, or role.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the users for a file transfer protocol-enabled server that you
%% specify by passing the `ServerId' parameter.
list_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_users(Client, Input, []).
list_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsers">>, Input, Options).

%% @doc Lists all of your workflows.
list_workflows(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workflows(Client, Input, []).
list_workflows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkflows">>, Input, Options).

%% @doc Sends a callback for asynchronous custom steps.
%%
%% The `ExecutionId', `WorkflowId', and `Token' are passed to the
%% target resource during execution of a custom step of a workflow. You must
%% include those with their callback as well as providing a status.
send_workflow_step_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_workflow_step_state(Client, Input, []).
send_workflow_step_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendWorkflowStepState">>, Input, Options).

%% @doc Begins an outbound file transfer to a remote AS2 server.
%%
%% You specify the `ConnectorId' and the file paths for where to send the
%% files.
start_file_transfer(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_file_transfer(Client, Input, []).
start_file_transfer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFileTransfer">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% `OFFLINE' to `ONLINE'.
%%
%% It has no impact on a server that is already `ONLINE'. An `ONLINE'
%% server can accept and process file transfer jobs.
%%
%% The state of `STARTING' indicates that the server is in an
%% intermediate state, either not fully able to respond, or not fully online.
%% The values of `START_FAILED' can indicate an error condition.
%%
%% No response is returned from this call.
start_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_server(Client, Input, []).
start_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartServer">>, Input, Options).

%% @doc Changes the state of a file transfer protocol-enabled server from
%% `ONLINE' to `OFFLINE'.
%%
%% An `OFFLINE' server cannot accept and process file transfer jobs.
%% Information tied to your server, such as server and user properties, are
%% not affected by stopping your server.
%%
%% Stopping the server does not reduce or impact your file transfer protocol
%% endpoint billing; you must delete the server to stop being billed.
%%
%% The state of `STOPPING' indicates that the server is in an
%% intermediate state, either not fully able to respond, or not fully
%% offline. The values of `STOP_FAILED' can indicate an error condition.
%%
%% No response is returned from this call.
stop_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_server(Client, Input, []).
stop_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopServer">>, Input, Options).

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN).
%%
%% Resources are users, servers, roles, and other entities.
%%
%% There is no response returned from this call.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc If the `IdentityProviderType' of a file transfer protocol-enabled
%% server is `AWS_DIRECTORY_SERVICE' or `API_Gateway', tests whether
%% your identity provider is set up successfully.
%%
%% We highly recommend that you call this operation to test your
%% authentication method as soon as you create your server. By doing so, you
%% can troubleshoot issues with the identity provider integration to ensure
%% that your users can successfully use the service.
%%
%% The `ServerId' and `UserName' parameters are required. The
%% `ServerProtocol', `SourceIp', and `UserPassword' are all
%% optional.
%%
%% You cannot use `TestIdentityProvider' if the
%% `IdentityProviderType' of your server is `SERVICE_MANAGED'.
%%
%% <ul> <li> If you provide any incorrect values for any parameters, the
%% `Response' field is empty.
%%
%% </li> <li> If you provide a server ID for a server that uses
%% service-managed users, you get an error:
%%
%% ` An error occurred (InvalidRequestException) when calling the
%% TestIdentityProvider operation: s-server-ID not configured for external
%% auth '
%%
%% </li> <li> If you enter a Server ID for the `--server-id' parameter
%% that does not identify an actual Transfer server, you receive the
%% following error:
%%
%% `An error occurred (ResourceNotFoundException) when calling the
%% TestIdentityProvider operation: Unknown server'
%%
%% </li> </ul>
test_identity_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_identity_provider(Client, Input, []).
test_identity_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestIdentityProvider">>, Input, Options).

%% @doc Detaches a key-value pair from a resource, as identified by its
%% Amazon Resource Name (ARN).
%%
%% Resources are users, servers, roles, and other entities.
%%
%% No response is returned from this call.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Allows you to update parameters for the access specified in the
%% `ServerID' and `ExternalID' parameters.
update_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access(Client, Input, []).
update_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccess">>, Input, Options).

%% @doc Updates some of the parameters for an existing agreement.
%%
%% Provide the `AgreementId' and the `ServerId' for the agreement
%% that you want to update, along with the new values for the parameters to
%% update.
update_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_agreement(Client, Input, []).
update_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAgreement">>, Input, Options).

%% @doc Updates the active and inactive dates for a certificate.
update_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate(Client, Input, []).
update_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificate">>, Input, Options).

%% @doc Updates some of the parameters for an existing connector.
%%
%% Provide the `ConnectorId' for the connector that you want to update,
%% along with the new values for the parameters to update.
update_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connector(Client, Input, []).
update_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnector">>, Input, Options).

%% @doc Updates the description for the host key that's specified by the
%% `ServerId' and `HostKeyId' parameters.
update_host_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_host_key(Client, Input, []).
update_host_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHostKey">>, Input, Options).

%% @doc Updates some of the parameters for an existing profile.
%%
%% Provide the `ProfileId' for the profile that you want to update, along
%% with the new values for the parameters to update.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates the file transfer protocol-enabled server's properties
%% after that server has been created.
%%
%% The `UpdateServer' call returns the `ServerId' of the server you
%% updated.
update_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server(Client, Input, []).
update_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServer">>, Input, Options).

%% @doc Assigns new properties to a user.
%%
%% Parameters you pass modify any or all of the following: the home
%% directory, role, and policy for the `UserName' and `ServerId' you
%% specify.
%%
%% The response returns the `ServerId' and the `UserName' for the
%% updated user.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
