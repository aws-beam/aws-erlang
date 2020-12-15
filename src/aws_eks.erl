%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service
%% that makes it easy for you to run Kubernetes on AWS without needing to
%% stand up or maintain your own Kubernetes control plane.
%%
%% Kubernetes is an open-source system for automating the deployment,
%% scaling, and management of containerized applications.
%%
%% Amazon EKS runs up-to-date versions of the open-source Kubernetes
%% software, so you can use all the existing plugins and tooling from the
%% Kubernetes community. Applications running on Amazon EKS are fully
%% compatible with applications running on any standard Kubernetes
%% environment, whether running in on-premises data centers or public clouds.
%% This means that you can easily migrate any standard Kubernetes application
%% to Amazon EKS without any code modification required.
-module(aws_eks).

-export([create_cluster/2,
         create_cluster/3,
         create_fargate_profile/3,
         create_fargate_profile/4,
         create_nodegroup/3,
         create_nodegroup/4,
         delete_cluster/3,
         delete_cluster/4,
         delete_fargate_profile/4,
         delete_fargate_profile/5,
         delete_nodegroup/4,
         delete_nodegroup/5,
         describe_cluster/2,
         describe_cluster/3,
         describe_fargate_profile/3,
         describe_fargate_profile/4,
         describe_nodegroup/3,
         describe_nodegroup/4,
         describe_update/4,
         describe_update/5,
         list_clusters/3,
         list_clusters/4,
         list_fargate_profiles/4,
         list_fargate_profiles/5,
         list_nodegroups/4,
         list_nodegroups/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_updates/5,
         list_updates/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cluster_config/3,
         update_cluster_config/4,
         update_cluster_version/3,
         update_cluster_version/4,
         update_nodegroup_config/4,
         update_nodegroup_config/5,
         update_nodegroup_version/4,
         update_nodegroup_version/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon EKS control plane.
%%
%% The Amazon EKS control plane consists of control plane instances that run
%% the Kubernetes software, such as `etcd' and the API server. The control
%% plane runs in an account managed by AWS, and the Kubernetes API is exposed
%% via the Amazon EKS API server endpoint. Each Amazon EKS cluster control
%% plane is single-tenant and unique and runs on its own set of Amazon EC2
%% instances.
%%
%% The cluster control plane is provisioned across multiple Availability
%% Zones and fronted by an Elastic Load Balancing Network Load Balancer.
%% Amazon EKS also provisions elastic network interfaces in your VPC subnets
%% to provide connectivity from the control plane instances to the worker
%% nodes (for example, to support `kubectl exec', `logs', and `proxy' data
%% flows).
%%
%% Amazon EKS worker nodes run in your AWS account and connect to your
%% cluster's control plane via the Kubernetes API server endpoint and a
%% certificate file that is created for your cluster.
%%
%% You can use the `endpointPublicAccess' and `endpointPrivateAccess'
%% parameters to enable or disable public and private access to your
%% cluster's Kubernetes API server endpoint. By default, public access is
%% enabled, and private access is disabled. For more information, see Amazon
%% EKS Cluster Endpoint Access Control in the Amazon EKS User Guide .
%%
%% You can use the `logging' parameter to enable or disable exporting the
%% Kubernetes control plane logs for your cluster to CloudWatch Logs. By
%% default, cluster control plane logs aren't exported to CloudWatch Logs.
%% For more information, see Amazon EKS Cluster Control Plane Logs in the
%% Amazon EKS User Guide .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to exported control plane logs. For more information, see Amazon
%% CloudWatch Pricing.
%%
%% Cluster creation typically takes between 10 and 15 minutes. After you
%% create an Amazon EKS cluster, you must configure your Kubernetes tooling
%% to communicate with the API server and launch worker nodes into your
%% cluster. For more information, see Managing Cluster Authentication and
%% Launching Amazon EKS Worker Nodes in the Amazon EKS User Guide.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input0, Options) ->
    Method = post,
    Path = ["/clusters"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS Fargate profile for your Amazon EKS cluster.
%%
%% You must have at least one Fargate profile in a cluster to be able to run
%% pods on Fargate.
%%
%% The Fargate profile allows an administrator to declare which pods run on
%% Fargate and specify which pods run on which Fargate profile. This
%% declaration is done through the profile’s selectors. Each profile can have
%% up to five selectors that contain a namespace and labels. A namespace is
%% required for every selector. The label field consists of multiple optional
%% key-value pairs. Pods that match the selectors are scheduled on Fargate.
%% If a to-be-scheduled pod matches any of the selectors in the Fargate
%% profile, then that pod is run on Fargate.
%%
%% When you create a Fargate profile, you must specify a pod execution role
%% to use with the pods that are scheduled with the profile. This role is
%% added to the cluster's Kubernetes Role Based Access Control (RBAC) for
%% authorization so that the `kubelet' that is running on the Fargate
%% infrastructure can register with your Amazon EKS cluster so that it can
%% appear in your cluster as a node. The pod execution role also provides IAM
%% permissions to the Fargate infrastructure to allow read access to Amazon
%% ECR image repositories. For more information, see Pod Execution Role in
%% the Amazon EKS User Guide.
%%
%% Fargate profiles are immutable. However, you can create a new updated
%% profile to replace an existing profile and then delete the original after
%% the updated profile has finished creating.
%%
%% If any Fargate profiles in a cluster are in the `DELETING' status, you
%% must wait for that Fargate profile to finish deleting before you can
%% create any other profiles in that cluster.
%%
%% For more information, see AWS Fargate Profile in the Amazon EKS User
%% Guide.
create_fargate_profile(Client, ClusterName, Input) ->
    create_fargate_profile(Client, ClusterName, Input, []).
create_fargate_profile(Client, ClusterName, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a managed worker node group for an Amazon EKS cluster.
%%
%% You can only create a node group for your cluster that is equal to the
%% current Kubernetes version for the cluster. All node groups are created
%% with the latest AMI release version for the respective minor Kubernetes
%% version of the cluster, unless you deploy a custom AMI using a launch
%% template. For more information about using launch templates, see Launch
%% template support.
%%
%% An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and
%% associated Amazon EC2 instances that are managed by AWS for an Amazon EKS
%% cluster. Each node group uses a version of the Amazon EKS-optimized Amazon
%% Linux 2 AMI. For more information, see Managed Node Groups in the Amazon
%% EKS User Guide.
create_nodegroup(Client, ClusterName, Input) ->
    create_nodegroup(Client, ClusterName, Input, []).
create_nodegroup(Client, ClusterName, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon EKS cluster control plane.
%%
%% If you have active services in your cluster that are associated with a
%% load balancer, you must delete those services before deleting the cluster
%% so that the load balancers are deleted properly. Otherwise, you can have
%% orphaned resources in your VPC that prevent you from being able to delete
%% the VPC. For more information, see Deleting a Cluster in the Amazon EKS
%% User Guide.
%%
%% If you have managed node groups or Fargate profiles attached to the
%% cluster, you must delete them first. For more information, see
%% `DeleteNodegroup' and `DeleteFargateProfile'.
delete_cluster(Client, Name, Input) ->
    delete_cluster(Client, Name, Input, []).
delete_cluster(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an AWS Fargate profile.
%%
%% When you delete a Fargate profile, any pods running on Fargate that were
%% created with the profile are deleted. If those pods match another Fargate
%% profile, then they are scheduled on Fargate with that profile. If they no
%% longer match any Fargate profiles, then they are not scheduled on Fargate
%% and they may remain in a pending state.
%%
%% Only one Fargate profile in a cluster can be in the `DELETING' status at a
%% time. You must wait for a Fargate profile to finish deleting before you
%% can delete any other profiles in that cluster.
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input) ->
    delete_fargate_profile(Client, ClusterName, FargateProfileName, Input, []).
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input0, Options) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon EKS node group for a cluster.
delete_nodegroup(Client, ClusterName, NodegroupName, Input) ->
    delete_nodegroup(Client, ClusterName, NodegroupName, Input, []).
delete_nodegroup(Client, ClusterName, NodegroupName, Input0, Options) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an Amazon EKS cluster.
%%
%% The API server endpoint and certificate authority data returned by this
%% operation are required for `kubelet' and `kubectl' to communicate with
%% your Kubernetes API server. For more information, see Create a kubeconfig
%% for Amazon EKS.
%%
%% The API server endpoint and certificate authority data aren't available
%% until the cluster reaches the `ACTIVE' state.
describe_cluster(Client, Name)
  when is_map(Client) ->
    describe_cluster(Client, Name, []).
describe_cluster(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an AWS Fargate profile.
describe_fargate_profile(Client, ClusterName, FargateProfileName)
  when is_map(Client) ->
    describe_fargate_profile(Client, ClusterName, FargateProfileName, []).
describe_fargate_profile(Client, ClusterName, FargateProfileName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an Amazon EKS node group.
describe_nodegroup(Client, ClusterName, NodegroupName)
  when is_map(Client) ->
    describe_nodegroup(Client, ClusterName, NodegroupName, []).
describe_nodegroup(Client, ClusterName, NodegroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an update against your Amazon
%% EKS cluster or associated managed node group.
%%
%% When the status of the update is `Succeeded', the update is complete. If
%% an update fails, the status is `Failed', and an error detail explains the
%% reason for the failure.
describe_update(Client, Name, UpdateId, NodegroupName)
  when is_map(Client) ->
    describe_update(Client, Name, UpdateId, NodegroupName, []).
describe_update(Client, Name, UpdateId, NodegroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates/", aws_util:encode_uri(UpdateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"nodegroupName">>, NodegroupName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon EKS clusters in your AWS account in the specified
%% Region.
list_clusters(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_clusters(Client, MaxResults, NextToken, []).
list_clusters(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS Fargate profiles associated with the specified cluster
%% in your AWS account in the specified Region.
list_fargate_profiles(Client, ClusterName, MaxResults, NextToken)
  when is_map(Client) ->
    list_fargate_profiles(Client, ClusterName, MaxResults, NextToken, []).
list_fargate_profiles(Client, ClusterName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon EKS managed node groups associated with the
%% specified cluster in your AWS account in the specified Region.
%%
%% Self-managed node groups are not listed.
list_nodegroups(Client, ClusterName, MaxResults, NextToken)
  when is_map(Client) ->
    list_nodegroups(Client, ClusterName, MaxResults, NextToken, []).
list_nodegroups(Client, ClusterName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for an Amazon EKS resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the updates associated with an Amazon EKS cluster or managed
%% node group in your AWS account, in the specified Region.
list_updates(Client, Name, MaxResults, NextToken, NodegroupName)
  when is_map(Client) ->
    list_updates(Client, Name, MaxResults, NextToken, NodegroupName, []).
list_updates(Client, Name, MaxResults, NextToken, NodegroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"nodegroupName">>, NodegroupName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are deleted as well. Tags that you create
%% for Amazon EKS resources do not propagate to any other resources
%% associated with the cluster. For example, if you tag a cluster with this
%% operation, that tag does not automatically propagate to the subnets and
%% worker nodes associated with the cluster.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS cluster configuration.
%%
%% Your cluster continues to function during the update. The response output
%% includes an update ID that you can use to track the status of your cluster
%% update with the `DescribeUpdate' API operation.
%%
%% You can use this API operation to enable or disable exporting the
%% Kubernetes control plane logs for your cluster to CloudWatch Logs. By
%% default, cluster control plane logs aren't exported to CloudWatch Logs.
%% For more information, see Amazon EKS Cluster Control Plane Logs in the
%% Amazon EKS User Guide .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to exported control plane logs. For more information, see Amazon
%% CloudWatch Pricing.
%%
%% You can also use this API operation to enable or disable public and
%% private access to your cluster's Kubernetes API server endpoint. By
%% default, public access is enabled, and private access is disabled. For
%% more information, see Amazon EKS Cluster Endpoint Access Control in the
%% Amazon EKS User Guide .
%%
%% At this time, you can not update the subnets or security group IDs for an
%% existing cluster.
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During an update, the cluster status moves to `UPDATING' (this
%% status transition is eventually consistent). When the update is complete
%% (either `Failed' or `Successful'), the cluster status moves to `Active'.
update_cluster_config(Client, Name, Input) ->
    update_cluster_config(Client, Name, Input, []).
update_cluster_config(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/update-config"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS cluster to the specified Kubernetes version.
%%
%% Your cluster continues to function during the update. The response output
%% includes an update ID that you can use to track the status of your cluster
%% update with the `DescribeUpdate' API operation.
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During an update, the cluster status moves to `UPDATING' (this
%% status transition is eventually consistent). When the update is complete
%% (either `Failed' or `Successful'), the cluster status moves to `Active'.
%%
%% If your cluster has managed node groups attached to it, all of your node
%% groups’ Kubernetes versions must match the cluster’s Kubernetes version in
%% order to update the cluster to a new Kubernetes version.
update_cluster_version(Client, Name, Input) ->
    update_cluster_version(Client, Name, Input, []).
update_cluster_version(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS managed node group configuration.
%%
%% Your node group continues to function during the update. The response
%% output includes an update ID that you can use to track the status of your
%% node group update with the `DescribeUpdate' API operation. Currently you
%% can update the Kubernetes labels for a node group or the scaling
%% configuration.
update_nodegroup_config(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_config(Client, ClusterName, NodegroupName, Input, []).
update_nodegroup_config(Client, ClusterName, NodegroupName, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-config"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Kubernetes version or AMI version of an Amazon EKS
%% managed node group.
%%
%% You can update a node group using a launch template only if the node group
%% was originally deployed with a launch template. If you need to update a
%% custom AMI in a node group that was deployed with a launch template, then
%% update your custom AMI, specify the new ID in a new version of the launch
%% template, and then update the node group to the new version of the launch
%% template.
%%
%% If you update without a launch template, then you can update to the latest
%% available AMI version of a node group's current Kubernetes version by not
%% specifying a Kubernetes version in the request. You can update to the
%% latest AMI version of your cluster's current Kubernetes version by
%% specifying your cluster's Kubernetes version in the request. For more
%% information, see Amazon EKS-Optimized Linux AMI Versions in the Amazon EKS
%% User Guide.
%%
%% You cannot roll back a node group to an earlier Kubernetes version or AMI
%% version.
%%
%% When a node in a managed node group is terminated due to a scaling action
%% or update, the pods in that node are drained first. Amazon EKS attempts to
%% drain the nodes gracefully and will fail if it is unable to do so. You can
%% `force' the update if Amazon EKS is unable to drain the nodes as a result
%% of a pod disruption budget issue.
update_nodegroup_version(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_version(Client, ClusterName, NodegroupName, Input, []).
update_nodegroup_version(Client, ClusterName, NodegroupName, Input0, Options) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-version"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"eks">>},
    Host = build_host(<<"eks">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
