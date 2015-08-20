%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CodeDeploy</fullname>
%%
%% <b>Overview</b> This is the AWS CodeDeploy API Reference. This guide
%% provides descriptions of the AWS CodeDeploy APIs. For additional
%% information, see the <a
%% href="http://docs.aws.amazon.com/codedeploy/latest/userguide">AWS
%% CodeDeploy User Guide</a>.
%%
%% <b>Using the APIs</b> You can use the AWS CodeDeploy APIs to work with the
%% following items:
%%
%% <ul> <li> Applications are unique identifiers that AWS CodeDeploy uses to
%% ensure that the correct combinations of revisions, deployment
%% configurations, and deployment groups are being referenced during
%% deployments.
%%
%% You can use the AWS CodeDeploy APIs to create, delete, get, list, and
%% update applications.
%%
%% </li> <li> Deployment configurations are sets of deployment rules and
%% deployment success and failure conditions that AWS CodeDeploy uses during
%% deployments.
%%
%% You can use the AWS CodeDeploy APIs to create, delete, get, and list
%% deployment configurations.
%%
%% </li> <li> Deployment groups are groups of instances to which application
%% revisions can be deployed.
%%
%% You can use the AWS CodeDeploy APIs to create, delete, get, list, and
%% update deployment groups.
%%
%% </li> <li> Instances represent Amazon EC2 instances to which application
%% revisions are deployed. Instances are identified by their Amazon EC2 tags
%% or Auto Scaling group names. Instances belong to deployment groups.
%%
%% You can use the AWS CodeDeploy APIs to get and list instances.
%%
%% </li> <li> Deployments represent the process of deploying revisions to
%% instances.
%%
%% You can use the AWS CodeDeploy APIs to create, get, list, and stop
%% deployments.
%%
%% </li> <li> Application revisions are archive files that are stored in
%% Amazon S3 buckets or GitHub repositories. These revisions contain source
%% content (such as source code, web pages, executable files, any deployment
%% scripts, and similar) along with an Application Specification file
%% (AppSpec file). (The AppSpec file is unique to AWS CodeDeploy; it defines
%% a series of deployment actions that you want AWS CodeDeploy to execute.)
%% An application revision is uniquely identified by its Amazon S3 object key
%% and its ETag, version, or both (for application revisions that are stored
%% in Amazon S3 buckets) or by its repository name and commit ID (for
%% applications revisions that are stored in GitHub repositories).
%% Application revisions are deployed through deployment groups.
%%
%% You can use the AWS CodeDeploy APIs to get, list, and register application
%% revisions.
%%
%% </li> </ul>
-module(aws_code_deploy).

-export([add_tags_to_on_premises_instances/3,
         batch_get_applications/3,
         batch_get_deployments/3,
         batch_get_on_premises_instances/3,
         create_application/3,
         create_deployment/3,
         create_deployment_config/3,
         create_deployment_group/3,
         delete_application/3,
         delete_deployment_config/3,
         delete_deployment_group/3,
         deregister_on_premises_instance/3,
         get_application/3,
         get_application_revision/3,
         get_deployment/3,
         get_deployment_config/3,
         get_deployment_group/3,
         get_deployment_instance/3,
         get_on_premises_instance/3,
         list_application_revisions/3,
         list_applications/3,
         list_deployment_configs/3,
         list_deployment_groups/3,
         list_deployment_instances/3,
         list_deployments/3,
         list_on_premises_instances/3,
         register_application_revision/3,
         register_on_premises_instance/3,
         remove_tags_from_on_premises_instances/3,
         stop_deployment/3,
         update_application/3,
         update_deployment_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds tags to on-premises instances.
add_tags_to_on_premises_instances(Client, Input, Options) ->
  request(Client, <<"AddTagsToOnPremisesInstances">>, Input, Options).

%% @doc Gets information about one or more applications.
batch_get_applications(Client, Input, Options) ->
  request(Client, <<"BatchGetApplications">>, Input, Options).

%% @doc Gets information about one or more deployments.
batch_get_deployments(Client, Input, Options) ->
  request(Client, <<"BatchGetDeployments">>, Input, Options).

%% @doc Gets information about one or more on-premises instances.
batch_get_on_premises_instances(Client, Input, Options) ->
  request(Client, <<"BatchGetOnPremisesInstances">>, Input, Options).

%% @doc Creates a new application.
create_application(Client, Input, Options) ->
  request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Deploys an application revision through the specified deployment
%% group.
create_deployment(Client, Input, Options) ->
  request(Client, <<"CreateDeployment">>, Input, Options).

%% @doc Creates a new deployment configuration.
create_deployment_config(Client, Input, Options) ->
  request(Client, <<"CreateDeploymentConfig">>, Input, Options).

%% @doc Creates a new deployment group for application revisions to be
%% deployed to.
create_deployment_group(Client, Input, Options) ->
  request(Client, <<"CreateDeploymentGroup">>, Input, Options).

%% @doc Deletes an application.
delete_application(Client, Input, Options) ->
  request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes a deployment configuration.
%%
%% <note>A deployment configuration cannot be deleted if it is currently in
%% use. Also, predefined configurations cannot be deleted.</note>
delete_deployment_config(Client, Input, Options) ->
  request(Client, <<"DeleteDeploymentConfig">>, Input, Options).

%% @doc Deletes a deployment group.
delete_deployment_group(Client, Input, Options) ->
  request(Client, <<"DeleteDeploymentGroup">>, Input, Options).

%% @doc Deregisters an on-premises instance.
deregister_on_premises_instance(Client, Input, Options) ->
  request(Client, <<"DeregisterOnPremisesInstance">>, Input, Options).

%% @doc Gets information about an application.
get_application(Client, Input, Options) ->
  request(Client, <<"GetApplication">>, Input, Options).

%% @doc Gets information about an application revision.
get_application_revision(Client, Input, Options) ->
  request(Client, <<"GetApplicationRevision">>, Input, Options).

%% @doc Gets information about a deployment.
get_deployment(Client, Input, Options) ->
  request(Client, <<"GetDeployment">>, Input, Options).

%% @doc Gets information about a deployment configuration.
get_deployment_config(Client, Input, Options) ->
  request(Client, <<"GetDeploymentConfig">>, Input, Options).

%% @doc Gets information about a deployment group.
get_deployment_group(Client, Input, Options) ->
  request(Client, <<"GetDeploymentGroup">>, Input, Options).

%% @doc Gets information about an instance as part of a deployment.
get_deployment_instance(Client, Input, Options) ->
  request(Client, <<"GetDeploymentInstance">>, Input, Options).

%% @doc Gets information about an on-premises instance.
get_on_premises_instance(Client, Input, Options) ->
  request(Client, <<"GetOnPremisesInstance">>, Input, Options).

%% @doc Lists information about revisions for an application.
list_application_revisions(Client, Input, Options) ->
  request(Client, <<"ListApplicationRevisions">>, Input, Options).

%% @doc Lists the applications registered with the applicable IAM user or AWS
%% account.
list_applications(Client, Input, Options) ->
  request(Client, <<"ListApplications">>, Input, Options).

%% @doc Lists the deployment configurations with the applicable IAM user or
%% AWS account.
list_deployment_configs(Client, Input, Options) ->
  request(Client, <<"ListDeploymentConfigs">>, Input, Options).

%% @doc Lists the deployment groups for an application registered with the
%% applicable IAM user or AWS account.
list_deployment_groups(Client, Input, Options) ->
  request(Client, <<"ListDeploymentGroups">>, Input, Options).

%% @doc Lists the instances for a deployment associated with the applicable
%% IAM user or AWS account.
list_deployment_instances(Client, Input, Options) ->
  request(Client, <<"ListDeploymentInstances">>, Input, Options).

%% @doc Lists the deployments within a deployment group for an application
%% registered with the applicable IAM user or AWS account.
list_deployments(Client, Input, Options) ->
  request(Client, <<"ListDeployments">>, Input, Options).

%% @doc Gets a list of one or more on-premises instance names.
%%
%% Unless otherwise specified, both registered and deregistered on-premises
%% instance names will be listed. To list only registered or deregistered
%% on-premises instance names, use the registration status parameter.
list_on_premises_instances(Client, Input, Options) ->
  request(Client, <<"ListOnPremisesInstances">>, Input, Options).

%% @doc Registers with AWS CodeDeploy a revision for the specified
%% application.
register_application_revision(Client, Input, Options) ->
  request(Client, <<"RegisterApplicationRevision">>, Input, Options).

%% @doc Registers an on-premises instance.
register_on_premises_instance(Client, Input, Options) ->
  request(Client, <<"RegisterOnPremisesInstance">>, Input, Options).

%% @doc Removes one or more tags from one or more on-premises instances.
remove_tags_from_on_premises_instances(Client, Input, Options) ->
  request(Client, <<"RemoveTagsFromOnPremisesInstances">>, Input, Options).

%% @doc Attempts to stop an ongoing deployment.
stop_deployment(Client, Input, Options) ->
  request(Client, <<"StopDeployment">>, Input, Options).

%% @doc Changes an existing application's name.
update_application(Client, Input, Options) ->
  request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Changes information about an existing deployment group.
update_deployment_group(Client, Input, Options) ->
  request(Client, <<"UpdateDeploymentGroup">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"codedeploy">>},
    Host = aws_util:binary_join([<<"codedeploy.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CodeDeploy_20141006.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
