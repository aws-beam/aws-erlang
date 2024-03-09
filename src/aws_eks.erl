%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service
%% that makes it easy
%% for you to run Kubernetes on Amazon Web Services without needing to setup
%% or maintain your own
%% Kubernetes control plane.
%%
%% Kubernetes is an open-source system for automating the deployment,
%% scaling, and management of containerized applications.
%%
%% Amazon EKS runs up-to-date versions of the open-source Kubernetes
%% software, so you
%% can use all the existing plugins and tooling from the Kubernetes
%% community. Applications
%% running on Amazon EKS are fully compatible with applications running on
%% any
%% standard Kubernetes environment, whether running in on-premises data
%% centers or public
%% clouds. This means that you can easily migrate any standard Kubernetes
%% application to Amazon EKS without any code modification required.
-module(aws_eks).

-export([associate_access_policy/4,
         associate_access_policy/5,
         associate_encryption_config/3,
         associate_encryption_config/4,
         associate_identity_provider_config/3,
         associate_identity_provider_config/4,
         create_access_entry/3,
         create_access_entry/4,
         create_addon/3,
         create_addon/4,
         create_cluster/2,
         create_cluster/3,
         create_eks_anywhere_subscription/2,
         create_eks_anywhere_subscription/3,
         create_fargate_profile/3,
         create_fargate_profile/4,
         create_nodegroup/3,
         create_nodegroup/4,
         create_pod_identity_association/3,
         create_pod_identity_association/4,
         delete_access_entry/4,
         delete_access_entry/5,
         delete_addon/4,
         delete_addon/5,
         delete_cluster/3,
         delete_cluster/4,
         delete_eks_anywhere_subscription/3,
         delete_eks_anywhere_subscription/4,
         delete_fargate_profile/4,
         delete_fargate_profile/5,
         delete_nodegroup/4,
         delete_nodegroup/5,
         delete_pod_identity_association/4,
         delete_pod_identity_association/5,
         deregister_cluster/3,
         deregister_cluster/4,
         describe_access_entry/3,
         describe_access_entry/5,
         describe_access_entry/6,
         describe_addon/3,
         describe_addon/5,
         describe_addon/6,
         describe_addon_configuration/3,
         describe_addon_configuration/5,
         describe_addon_configuration/6,
         describe_addon_versions/1,
         describe_addon_versions/3,
         describe_addon_versions/4,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_eks_anywhere_subscription/2,
         describe_eks_anywhere_subscription/4,
         describe_eks_anywhere_subscription/5,
         describe_fargate_profile/3,
         describe_fargate_profile/5,
         describe_fargate_profile/6,
         describe_identity_provider_config/3,
         describe_identity_provider_config/4,
         describe_insight/3,
         describe_insight/5,
         describe_insight/6,
         describe_nodegroup/3,
         describe_nodegroup/5,
         describe_nodegroup/6,
         describe_pod_identity_association/3,
         describe_pod_identity_association/5,
         describe_pod_identity_association/6,
         describe_update/3,
         describe_update/5,
         describe_update/6,
         disassociate_access_policy/5,
         disassociate_access_policy/6,
         disassociate_identity_provider_config/3,
         disassociate_identity_provider_config/4,
         list_access_entries/2,
         list_access_entries/4,
         list_access_entries/5,
         list_access_policies/1,
         list_access_policies/3,
         list_access_policies/4,
         list_addons/2,
         list_addons/4,
         list_addons/5,
         list_associated_access_policies/3,
         list_associated_access_policies/5,
         list_associated_access_policies/6,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_eks_anywhere_subscriptions/1,
         list_eks_anywhere_subscriptions/3,
         list_eks_anywhere_subscriptions/4,
         list_fargate_profiles/2,
         list_fargate_profiles/4,
         list_fargate_profiles/5,
         list_identity_provider_configs/2,
         list_identity_provider_configs/4,
         list_identity_provider_configs/5,
         list_insights/3,
         list_insights/4,
         list_nodegroups/2,
         list_nodegroups/4,
         list_nodegroups/5,
         list_pod_identity_associations/2,
         list_pod_identity_associations/4,
         list_pod_identity_associations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_updates/2,
         list_updates/4,
         list_updates/5,
         register_cluster/2,
         register_cluster/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_access_entry/4,
         update_access_entry/5,
         update_addon/4,
         update_addon/5,
         update_cluster_config/3,
         update_cluster_config/4,
         update_cluster_version/3,
         update_cluster_version/4,
         update_eks_anywhere_subscription/3,
         update_eks_anywhere_subscription/4,
         update_nodegroup_config/4,
         update_nodegroup_config/5,
         update_nodegroup_version/4,
         update_nodegroup_version/5,
         update_pod_identity_association/4,
         update_pod_identity_association/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an access policy and its scope to an access entry.
%%
%% For more information
%% about associating access policies, see Associating and disassociating
%% access policies to and from access entries:
%% https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html in
%% the Amazon EKS User Guide.
associate_access_policy(Client, ClusterName, PrincipalArn, Input) ->
    associate_access_policy(Client, ClusterName, PrincipalArn, Input, []).
associate_access_policy(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an encryption configuration to an existing cluster.
%%
%% Use this API to enable encryption on existing clusters that don't
%% already have
%% encryption enabled. This allows you to implement a defense-in-depth
%% security strategy
%% without migrating applications to new Amazon EKS clusters.
associate_encryption_config(Client, ClusterName, Input) ->
    associate_encryption_config(Client, ClusterName, Input, []).
associate_encryption_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/encryption-config/associate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an identity provider configuration to a cluster.
%%
%% If you want to authenticate identities using an identity provider, you can
%% create an
%% identity provider configuration and associate it to your cluster. After
%% configuring
%% authentication to your cluster you can create Kubernetes `Role' and
%% `ClusterRole' objects, assign permissions to them, and then bind them
%% to
%% the identities using Kubernetes `RoleBinding' and
%% `ClusterRoleBinding'
%% objects. For more information see Using RBAC
%% Authorization:
%% https://kubernetes.io/docs/reference/access-authn-authz/rbac/ in the
%% Kubernetes documentation.
associate_identity_provider_config(Client, ClusterName, Input) ->
    associate_identity_provider_config(Client, ClusterName, Input, []).
associate_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/associate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an access entry.
%%
%% An access entry allows an IAM principal to access your cluster. Access
%% entries can replace the need to maintain entries in the `aws-auth'
%% `ConfigMap' for authentication. You have the following options for
%% authorizing an IAM principal to access Kubernetes objects on your cluster:
%% Kubernetes
%% role-based access control (RBAC), Amazon EKS, or both. Kubernetes RBAC
%% authorization
%% requires you to create and manage Kubernetes `Role',
%% `ClusterRole',
%% `RoleBinding', and `ClusterRoleBinding' objects, in addition
%% to managing access entries. If you use Amazon EKS authorization
%% exclusively, you
%% don't need to create and manage Kubernetes `Role',
%% `ClusterRole',
%% `RoleBinding', and `ClusterRoleBinding' objects.
%%
%% For more information about access entries, see Access entries:
%% https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html in
%% the
%% Amazon EKS User Guide.
create_access_entry(Client, ClusterName, Input) ->
    create_access_entry(Client, ClusterName, Input, []).
create_access_entry(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon EKS add-on.
%%
%% Amazon EKS add-ons help to automate the provisioning and lifecycle
%% management
%% of common operational software for Amazon EKS clusters. For more
%% information,
%% see Amazon EKS add-ons:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html in the
%% Amazon EKS User Guide.
create_addon(Client, ClusterName, Input) ->
    create_addon(Client, ClusterName, Input, []).
create_addon(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon EKS control plane.
%%
%% The Amazon EKS control plane consists of control plane instances that run
%% the
%% Kubernetes software, such as `etcd' and the API server. The control
%% plane runs in
%% an account managed by Amazon Web Services, and the Kubernetes API is
%% exposed by the Amazon EKS API server endpoint. Each Amazon EKS cluster
%% control plane is
%% single tenant and unique. It runs on its own set of Amazon EC2 instances.
%%
%% The cluster control plane is provisioned across multiple Availability
%% Zones and
%% fronted by an Elastic Load Balancing
%% Network Load Balancer. Amazon EKS also provisions elastic network
%% interfaces in
%% your VPC subnets to provide connectivity from the control plane instances
%% to the nodes
%% (for example, to support `kubectl exec', `logs', and
%% `proxy' data flows).
%%
%% Amazon EKS nodes run in your Amazon Web Services account and connect to
%% your
%% cluster's control plane over the Kubernetes API server endpoint and a
%% certificate file that
%% is created for your cluster.
%%
%% You can use the `endpointPublicAccess' and
%% `endpointPrivateAccess' parameters to enable or disable public and
%% private access to your cluster's Kubernetes API server endpoint. By
%% default, public access is
%% enabled, and private access is disabled. For more information, see Amazon
%% EKS Cluster Endpoint Access Control:
%% https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html in
%% the
%%
%% Amazon EKS User Guide
%% .
%%
%% You can use the `logging' parameter to enable or disable exporting the
%% Kubernetes control plane logs for your cluster to CloudWatch Logs. By
%% default, cluster
%% control plane logs aren't exported to CloudWatch Logs. For more
%% information, see
%% Amazon EKS Cluster Control Plane Logs:
%% https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
%% in the
%%
%% Amazon EKS User Guide
%% .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to
%% exported control plane logs. For more information, see CloudWatch
%% Pricing: http://aws.amazon.com/cloudwatch/pricing/.
%%
%% In most cases, it takes several minutes to create a cluster. After you
%% create an
%% Amazon EKS cluster, you must configure your Kubernetes tooling to
%% communicate
%% with the API server and launch nodes into your cluster. For more
%% information, see Managing Cluster
%% Authentication:
%% https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html and
%% Launching Amazon EKS nodes:
%% https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html in
%% the
%% Amazon EKS User Guide.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an EKS Anywhere subscription.
%%
%% When a subscription is created, it is a contract
%% agreement for the length of the term specified in the request. Licenses
%% that are used to
%% validate support are provisioned in Amazon Web Services License Manager
%% and the caller account is
%% granted access to EKS Anywhere Curated Packages.
create_eks_anywhere_subscription(Client, Input) ->
    create_eks_anywhere_subscription(Client, Input, []).
create_eks_anywhere_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/eks-anywhere-subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Fargate profile for your Amazon EKS cluster.
%%
%% You
%% must have at least one Fargate profile in a cluster to be able to run
%% pods on Fargate.
%%
%% The Fargate profile allows an administrator to declare which pods run
%% on Fargate and specify which pods run on which Fargate
%% profile. This declaration is done through the profile’s selectors. Each
%% profile can have
%% up to five selectors that contain a namespace and labels. A namespace is
%% required for
%% every selector. The label field consists of multiple optional key-value
%% pairs. Pods that
%% match the selectors are scheduled on Fargate. If a to-be-scheduled pod
%% matches any of the selectors in the Fargate profile, then that pod is run
%% on Fargate.
%%
%% When you create a Fargate profile, you must specify a pod execution
%% role to use with the pods that are scheduled with the profile. This role
%% is added to the
%% cluster's Kubernetes Role Based
%% Access Control:
%% https://kubernetes.io/docs/reference/access-authn-authz/rbac/ (RBAC) for
%% authorization so that the `kubelet'
%% that is running on the Fargate infrastructure can register with your
%% Amazon EKS cluster so that it can appear in your cluster as a node. The
%% pod
%% execution role also provides IAM permissions to the Fargate infrastructure
%% to allow read access to Amazon ECR image repositories. For
%% more information, see Pod Execution Role:
%% https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
%% in the Amazon EKS User Guide.
%%
%% Fargate profiles are immutable. However, you can create a new updated
%% profile to replace an existing profile and then delete the original after
%% the updated
%% profile has finished creating.
%%
%% If any Fargate profiles in a cluster are in the `DELETING'
%% status, you must wait for that Fargate profile to finish deleting before
%% you can create any other profiles in that cluster.
%%
%% For more information, see Fargate profile:
%% https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html in
%% the
%% Amazon EKS User Guide.
create_fargate_profile(Client, ClusterName, Input) ->
    create_fargate_profile(Client, ClusterName, Input, []).
create_fargate_profile(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a managed node group for an Amazon EKS cluster.
%%
%% You can only create a node group for your cluster that is equal to the
%% current Kubernetes
%% version for the cluster. All node groups are created with the latest AMI
%% release version
%% for the respective minor Kubernetes version of the cluster, unless you
%% deploy a custom AMI
%% using a launch template. For more information about using launch
%% templates, see Launch
%% template support:
%% https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html.
%%
%% An Amazon EKS managed node group is an Amazon EC2
%% Auto Scaling group and associated Amazon EC2 instances that are managed by
%% Amazon Web Services for an Amazon EKS cluster. For more information, see
%% Managed node groups:
%% https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
%% in the Amazon EKS User Guide.
%%
%% Windows AMI types are only supported for commercial Amazon Web Services
%% Regions
%% that support Windows on Amazon EKS.
create_nodegroup(Client, ClusterName, Input) ->
    create_nodegroup(Client, ClusterName, Input, []).
create_nodegroup(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an EKS Pod Identity association between a service account in
%% an Amazon EKS cluster and an IAM role
%% with EKS Pod Identity.
%%
%% Use EKS Pod Identity to give temporary IAM credentials to
%% pods and the credentials are rotated automatically.
%%
%% Amazon EKS Pod Identity associations provide the ability to manage
%% credentials for your applications, similar to the way that Amazon EC2
%% instance profiles provide credentials to Amazon EC2 instances.
%%
%% If a pod uses a service account that has an association, Amazon EKS sets
%% environment variables
%% in the containers of the pod. The environment variables configure the
%% Amazon Web Services SDKs,
%% including the Command Line Interface, to use the EKS Pod Identity
%% credentials.
%%
%% Pod Identity is a simpler method than IAM roles for service
%% accounts, as this method doesn't use OIDC identity providers.
%% Additionally, you can configure a role for Pod Identity once, and reuse it
%% across
%% clusters.
create_pod_identity_association(Client, ClusterName, Input) ->
    create_pod_identity_association(Client, ClusterName, Input, []).
create_pod_identity_association(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an access entry.
%%
%% Deleting an access entry of a type other than `Standard' can cause
%% your
%% cluster to function improperly. If you delete an access entry in error,
%% you can recreate
%% it.
delete_access_entry(Client, ClusterName, PrincipalArn, Input) ->
    delete_access_entry(Client, ClusterName, PrincipalArn, Input, []).
delete_access_entry(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon EKS add-on.
%%
%% When you remove an add-on, it's deleted from the cluster. You can
%% always manually
%% start an add-on on the cluster using the Kubernetes API.
delete_addon(Client, AddonName, ClusterName, Input) ->
    delete_addon(Client, AddonName, ClusterName, Input, []).
delete_addon(Client, AddonName, ClusterName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"preserve">>, <<"preserve">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon EKS cluster control plane.
%%
%% If you have active services in your cluster that are associated with a
%% load balancer,
%% you must delete those services before deleting the cluster so that the
%% load balancers
%% are deleted properly. Otherwise, you can have orphaned resources in your
%% VPC that
%% prevent you from being able to delete the VPC. For more information, see
%% Deleting a
%% cluster:
%% https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html in
%% the Amazon EKS User Guide.
%%
%% If you have managed node groups or Fargate profiles attached to the
%% cluster, you must delete them first. For more information, see
%% `DeleteNodgroup' and `DeleteFargateProfile'.
delete_cluster(Client, Name, Input) ->
    delete_cluster(Client, Name, Input, []).
delete_cluster(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an expired or inactive subscription.
%%
%% Deleting inactive subscriptions removes
%% them from the Amazon Web Services Management Console view and from
%% list/describe API responses.
%% Subscriptions can only be cancelled within 7 days of creation and are
%% cancelled by
%% creating a ticket in the Amazon Web Services Support Center.
delete_eks_anywhere_subscription(Client, Id, Input) ->
    delete_eks_anywhere_subscription(Client, Id, Input, []).
delete_eks_anywhere_subscription(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Fargate profile.
%%
%% When you delete a Fargate profile, any `Pod' running on
%% Fargate that was created with the profile is deleted. If the
%% `Pod' matches another Fargate profile, then it is
%% scheduled on Fargate with that profile. If it no longer matches any
%% Fargate profiles, then it's not scheduled on Fargate
%% and may remain in a pending state.
%%
%% Only one Fargate profile in a cluster can be in the
%% `DELETING' status at a time. You must wait for a Fargate
%% profile to finish deleting before you can delete any other profiles in
%% that
%% cluster.
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input) ->
    delete_fargate_profile(Client, ClusterName, FargateProfileName, Input, []).
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a managed node group.
delete_nodegroup(Client, ClusterName, NodegroupName, Input) ->
    delete_nodegroup(Client, ClusterName, NodegroupName, Input, []).
delete_nodegroup(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a EKS Pod Identity association.
%%
%% The temporary Amazon Web Services credentials from the previous IAM role
%% session might still be valid until the session expiry. If you need to
%% immediately revoke the temporary session credentials, then go to the role
%% in the IAM console.
delete_pod_identity_association(Client, AssociationId, ClusterName, Input) ->
    delete_pod_identity_association(Client, AssociationId, ClusterName, Input, []).
delete_pod_identity_association(Client, AssociationId, ClusterName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a connected cluster to remove it from the Amazon EKS
%% control
%% plane.
%%
%% A connected cluster is a Kubernetes cluster that you've connected to
%% your control plane
%% using the Amazon EKS Connector:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html.
deregister_cluster(Client, Name, Input) ->
    deregister_cluster(Client, Name, Input, []).
deregister_cluster(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster-registrations/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes an access entry.
describe_access_entry(Client, ClusterName, PrincipalArn)
  when is_map(Client) ->
    describe_access_entry(Client, ClusterName, PrincipalArn, #{}, #{}).

describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, []).

describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon EKS add-on.
describe_addon(Client, AddonName, ClusterName)
  when is_map(Client) ->
    describe_addon(Client, AddonName, ClusterName, #{}, #{}).

describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap, []).

describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration options.
describe_addon_configuration(Client, AddonName, AddonVersion)
  when is_map(Client) ->
    describe_addon_configuration(Client, AddonName, AddonVersion, #{}, #{}).

describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap, []).

describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/addons/configuration-schemas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, AddonName},
        {<<"addonVersion">>, AddonVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the versions for an add-on.
%%
%% Information such as the Kubernetes versions that you can use the add-on
%% with, the
%% `owner', `publisher', and the `type' of the add-on
%% are returned.
describe_addon_versions(Client)
  when is_map(Client) ->
    describe_addon_versions(Client, #{}, #{}).

describe_addon_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon_versions(Client, QueryMap, HeadersMap, []).

describe_addon_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/addons/supported-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"kubernetesVersion">>, maps:get(<<"kubernetesVersion">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owners">>, maps:get(<<"owners">>, QueryMap, undefined)},
        {<<"publishers">>, maps:get(<<"publishers">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon EKS cluster.
%%
%% The API server endpoint and certificate authority data returned by this
%% operation are
%% required for `kubelet' and `kubectl' to communicate with your
%% Kubernetes API server. For more information, see Creating or
%% updating a `kubeconfig' file for an Amazon EKS
%% cluster:
%% https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html.
%%
%% The API server endpoint and certificate authority data aren't
%% available until the
%% cluster reaches the `ACTIVE' state.
describe_cluster(Client, Name)
  when is_map(Client) ->
    describe_cluster(Client, Name, #{}, #{}).

describe_cluster(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, Name, QueryMap, HeadersMap, []).

describe_cluster(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about a subscription.
describe_eks_anywhere_subscription(Client, Id)
  when is_map(Client) ->
    describe_eks_anywhere_subscription(Client, Id, #{}, #{}).

describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap, []).

describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Fargate profile.
describe_fargate_profile(Client, ClusterName, FargateProfileName)
  when is_map(Client) ->
    describe_fargate_profile(Client, ClusterName, FargateProfileName, #{}, #{}).

describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap, []).

describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an identity provider configuration.
describe_identity_provider_config(Client, ClusterName, Input) ->
    describe_identity_provider_config(Client, ClusterName, Input, []).
describe_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/describe"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns details about an insight that you specify using its ID.
describe_insight(Client, ClusterName, Id)
  when is_map(Client) ->
    describe_insight(Client, ClusterName, Id, #{}, #{}).

describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap, []).

describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/insights/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a managed node group.
describe_nodegroup(Client, ClusterName, NodegroupName)
  when is_map(Client) ->
    describe_nodegroup(Client, ClusterName, NodegroupName, #{}, #{}).

describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap, []).

describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an EKS Pod Identity
%% association.
%%
%% This action requires the ID of the association. You can get the ID from
%% the response to
%% the `CreatePodIdentityAssocation' for newly created associations. Or,
%% you can
%% list the IDs for associations with `ListPodIdentityAssociations' and
%% filter the
%% list by namespace or service account.
describe_pod_identity_association(Client, AssociationId, ClusterName)
  when is_map(Client) ->
    describe_pod_identity_association(Client, AssociationId, ClusterName, #{}, #{}).

describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap, []).

describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an update to an Amazon EKS resource.
%%
%% When the status of the update is `Succeeded', the update is complete.
%% If an
%% update fails, the status is `Failed', and an error detail explains the
%% reason
%% for the failure.
describe_update(Client, Name, UpdateId)
  when is_map(Client) ->
    describe_update(Client, Name, UpdateId, #{}, #{}).

describe_update(Client, Name, UpdateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_update(Client, Name, UpdateId, QueryMap, HeadersMap, []).

describe_update(Client, Name, UpdateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates/", aws_util:encode_uri(UpdateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"nodegroupName">>, maps:get(<<"nodegroupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates an access policy from an access entry.
disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input) ->
    disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input, []).
disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies/", aws_util:encode_uri(PolicyArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an identity provider configuration from a cluster.
%%
%% If you disassociate an identity provider from your cluster, users included
%% in the
%% provider can no longer access the cluster. However, you can still access
%% the cluster
%% with IAM principals.
disassociate_identity_provider_config(Client, ClusterName, Input) ->
    disassociate_identity_provider_config(Client, ClusterName, Input, []).
disassociate_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/disassociate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the access entries for your cluster.
list_access_entries(Client, ClusterName)
  when is_map(Client) ->
    list_access_entries(Client, ClusterName, #{}, #{}).

list_access_entries(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_entries(Client, ClusterName, QueryMap, HeadersMap, []).

list_access_entries(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"associatedPolicyArn">>, maps:get(<<"associatedPolicyArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available access policies.
list_access_policies(Client)
  when is_map(Client) ->
    list_access_policies(Client, #{}, #{}).

list_access_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_policies(Client, QueryMap, HeadersMap, []).

list_access_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the installed add-ons.
list_addons(Client, ClusterName)
  when is_map(Client) ->
    list_addons(Client, ClusterName, #{}, #{}).

list_addons(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_addons(Client, ClusterName, QueryMap, HeadersMap, []).

list_addons(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the access policies associated with an access entry.
list_associated_access_policies(Client, ClusterName, PrincipalArn)
  when is_map(Client) ->
    list_associated_access_policies(Client, ClusterName, PrincipalArn, #{}, #{}).

list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, []).

list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon EKS clusters in your Amazon Web Services account in
%% the
%% specified Amazon Web Services Region.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the full description of the subscription.
list_eks_anywhere_subscriptions(Client)
  when is_map(Client) ->
    list_eks_anywhere_subscriptions(Client, #{}, #{}).

list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap, []).

list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eks-anywhere-subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatus">>, maps:get(<<"includeStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Fargate profiles associated with the specified cluster in
%% your Amazon Web Services account in the specified Amazon Web Services
%% Region.
list_fargate_profiles(Client, ClusterName)
  when is_map(Client) ->
    list_fargate_profiles(Client, ClusterName, #{}, #{}).

list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap, []).

list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the identity provider configurations for your cluster.
list_identity_provider_configs(Client, ClusterName)
  when is_map(Client) ->
    list_identity_provider_configs(Client, ClusterName, #{}, #{}).

list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap, []).

list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all insights checked for against the specified
%% cluster.
%%
%% You can filter which insights are returned by category, associated
%% Kubernetes version, and status.
list_insights(Client, ClusterName, Input) ->
    list_insights(Client, ClusterName, Input, []).
list_insights(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/insights"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the managed node groups associated with the specified cluster
%% in your Amazon Web Services account in the specified Amazon Web Services
%% Region.
%%
%% Self-managed node
%% groups aren't listed.
list_nodegroups(Client, ClusterName)
  when is_map(Client) ->
    list_nodegroups(Client, ClusterName, #{}, #{}).

list_nodegroups(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodegroups(Client, ClusterName, QueryMap, HeadersMap, []).

list_nodegroups(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the EKS Pod Identity associations in a cluster.
%%
%% You can filter the list by the namespace that the
%% association is in or the service account that the association uses.
list_pod_identity_associations(Client, ClusterName)
  when is_map(Client) ->
    list_pod_identity_associations(Client, ClusterName, #{}, #{}).

list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap, []).

list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceAccount">>, maps:get(<<"serviceAccount">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for an Amazon EKS resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the updates associated with an Amazon EKS resource in your
%% Amazon Web Services account, in the specified Amazon Web Services Region.
list_updates(Client, Name)
  when is_map(Client) ->
    list_updates(Client, Name, #{}, #{}).

list_updates(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_updates(Client, Name, QueryMap, HeadersMap, []).

list_updates(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"nodegroupName">>, maps:get(<<"nodegroupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Connects a Kubernetes cluster to the Amazon EKS control plane.
%%
%% Any Kubernetes cluster can be connected to the Amazon EKS control plane to
%% view
%% current information about the cluster and its nodes.
%%
%% Cluster connection requires two steps. First, send a
%% ```
%% `RegisterClusterRequest' ''' to add it to the Amazon EKS
%% control plane.
%%
%% Second, a Manifest:
%% https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml
%% containing the `activationID' and
%% `activationCode' must be applied to the Kubernetes cluster through
%% it's native
%% provider to provide visibility.
%%
%% After the manifest is updated and applied, the connected cluster is
%% visible to the
%% Amazon EKS control plane. If the manifest isn't applied within three
%% days,
%% the connected cluster will no longer be visible and must be deregistered
%% using
%% `DeregisterCluster'.
register_cluster(Client, Input) ->
    register_cluster(Client, Input, []).
register_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster-registrations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates the specified tags to an Amazon EKS resource with the
%% specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the
%% request parameters, they aren't changed. When a resource is deleted,
%% the tags associated
%% with that resource are also deleted. Tags that you create for Amazon EKS
%% resources don't propagate to any other resources associated with the
%% cluster. For
%% example, if you tag a cluster with this operation, that tag doesn't
%% automatically
%% propagate to the subnets and nodes associated with the cluster.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from an Amazon EKS resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an access entry.
update_access_entry(Client, ClusterName, PrincipalArn, Input) ->
    update_access_entry(Client, ClusterName, PrincipalArn, Input, []).
update_access_entry(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS add-on.
update_addon(Client, AddonName, ClusterName, Input) ->
    update_addon(Client, AddonName, ClusterName, Input, []).
update_addon(Client, AddonName, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), "/update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS cluster configuration.
%%
%% Your cluster continues to
%% function during the update. The response output includes an update ID that
%% you can use
%% to track the status of your cluster update with
%% `DescribeUpdate'&quot;/&gt;.
%%
%% You can use this API operation to enable or disable exporting the
%% Kubernetes control plane
%% logs for your cluster to CloudWatch Logs. By default, cluster control
%% plane logs
%% aren't exported to CloudWatch Logs. For more information, see Amazon
%% EKS Cluster control plane logs:
%% https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
%% in the
%%
%% Amazon EKS User Guide
%% .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to
%% exported control plane logs. For more information, see CloudWatch
%% Pricing: http://aws.amazon.com/cloudwatch/pricing/.
%%
%% You can also use this API operation to enable or disable public and
%% private access to
%% your cluster's Kubernetes API server endpoint. By default, public
%% access is enabled, and
%% private access is disabled. For more information, see Amazon EKS cluster
%% endpoint access control:
%% https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html in
%% the
%%
%% Amazon EKS User Guide
%% .
%%
%% You can also use this API operation to choose different subnets and
%% security groups
%% for the cluster. You must specify at least two subnets that are in
%% different
%% Availability Zones. You can't change which VPC the subnets are from,
%% the subnets must be
%% in the same VPC as the subnets that the cluster was created with. For more
%% information
%% about the VPC requirements, see
%% [https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html] in
%% the
%% Amazon EKS User Guide
%% .
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During
%% an update, the cluster status moves to `UPDATING' (this status
%% transition is
%% eventually consistent). When the update is complete (either `Failed'
%% or
%% `Successful'), the cluster status moves to `Active'.
update_cluster_config(Client, Name, Input) ->
    update_cluster_config(Client, Name, Input, []).
update_cluster_config(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/update-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS cluster to the specified Kubernetes version.
%%
%% Your cluster
%% continues to function during the update. The response output includes an
%% update ID that
%% you can use to track the status of your cluster update with the
%% `DescribeUpdate' API operation.
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During
%% an update, the cluster status moves to `UPDATING' (this status
%% transition is
%% eventually consistent). When the update is complete (either `Failed'
%% or
%% `Successful'), the cluster status moves to `Active'.
%%
%% If your cluster has managed node groups attached to it, all of your node
%% groups’ Kubernetes
%% versions must match the cluster’s Kubernetes version in order to update
%% the cluster to a new
%% Kubernetes version.
update_cluster_version(Client, Name, Input) ->
    update_cluster_version(Client, Name, Input, []).
update_cluster_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update an EKS Anywhere Subscription.
%%
%% Only auto renewal and tags can be updated after
%% subscription creation.
update_eks_anywhere_subscription(Client, Id, Input) ->
    update_eks_anywhere_subscription(Client, Id, Input, []).
update_eks_anywhere_subscription(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon EKS managed node group configuration.
%%
%% Your node group
%% continues to function during the update. The response output includes an
%% update ID that
%% you can use to track the status of your node group update with the
%% `DescribeUpdate' API operation. Currently you can update the
%% Kubernetes labels
%% for a node group or the scaling configuration.
update_nodegroup_config(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_config(Client, ClusterName, NodegroupName, Input, []).
update_nodegroup_config(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Kubernetes version or AMI version of an Amazon EKS
%% managed node
%% group.
%%
%% You can update a node group using a launch template only if the node group
%% was
%% originally deployed with a launch template. If you need to update a custom
%% AMI in a node
%% group that was deployed with a launch template, then update your custom
%% AMI, specify the
%% new ID in a new version of the launch template, and then update the node
%% group to the
%% new version of the launch template.
%%
%% If you update without a launch template, then you can update to the latest
%% available
%% AMI version of a node group's current Kubernetes version by not
%% specifying a Kubernetes version in
%% the request. You can update to the latest AMI version of your
%% cluster's current Kubernetes
%% version by specifying your cluster's Kubernetes version in the
%% request. For information about
%% Linux versions, see Amazon EKS optimized Amazon Linux AMI versions:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
%% in the
%% Amazon EKS User Guide. For information about Windows versions, see Amazon
%% EKS optimized Windows AMI versions:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
%% in the
%% Amazon EKS User Guide.
%%
%% You cannot roll back a node group to an earlier Kubernetes version or AMI
%% version.
%%
%% When a node in a managed node group is terminated due to a scaling action
%% or update,
%% every `Pod' on that node is drained first. Amazon EKS attempts to
%% drain the nodes gracefully and will fail if it is unable to do so. You can
%% `force' the update if Amazon EKS is unable to drain the nodes as
%% a result of a `Pod' disruption budget issue.
update_nodegroup_version(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_version(Client, ClusterName, NodegroupName, Input, []).
update_nodegroup_version(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-version"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a EKS Pod Identity association.
%%
%% Only the IAM role can be changed; an association can't be moved
%% between clusters, namespaces, or service accounts. If you need to edit the
%% namespace
%% or service account, you need to delete the association and then create a
%% new
%% association with your desired settings.
update_pod_identity_association(Client, AssociationId, ClusterName, Input) ->
    update_pod_identity_association(Client, AssociationId, ClusterName, Input, []).
update_pod_identity_association(Client, AssociationId, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"eks">>},
    Host = build_host(<<"eks">>, Client1),
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
