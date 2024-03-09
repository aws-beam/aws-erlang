%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon VPC Lattice is a fully managed application networking service
%% that you use to connect, secure,
%% and monitor all of your services across multiple accounts and virtual
%% private clouds (VPCs).
%%
%% Amazon VPC Lattice interconnects your microservices and legacy services
%% within a logical boundary, so that
%% you can discover and manage them more efficiently. For more information,
%% see the Amazon VPC Lattice User Guide:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/
-module(aws_vpc_lattice).

-export([batch_update_rule/4,
         batch_update_rule/5,
         create_access_log_subscription/2,
         create_access_log_subscription/3,
         create_listener/3,
         create_listener/4,
         create_rule/4,
         create_rule/5,
         create_service/2,
         create_service/3,
         create_service_network/2,
         create_service_network/3,
         create_service_network_service_association/2,
         create_service_network_service_association/3,
         create_service_network_vpc_association/2,
         create_service_network_vpc_association/3,
         create_target_group/2,
         create_target_group/3,
         delete_access_log_subscription/3,
         delete_access_log_subscription/4,
         delete_auth_policy/3,
         delete_auth_policy/4,
         delete_listener/4,
         delete_listener/5,
         delete_resource_policy/3,
         delete_resource_policy/4,
         delete_rule/5,
         delete_rule/6,
         delete_service/3,
         delete_service/4,
         delete_service_network/3,
         delete_service_network/4,
         delete_service_network_service_association/3,
         delete_service_network_service_association/4,
         delete_service_network_vpc_association/3,
         delete_service_network_vpc_association/4,
         delete_target_group/3,
         delete_target_group/4,
         deregister_targets/3,
         deregister_targets/4,
         get_access_log_subscription/2,
         get_access_log_subscription/4,
         get_access_log_subscription/5,
         get_auth_policy/2,
         get_auth_policy/4,
         get_auth_policy/5,
         get_listener/3,
         get_listener/5,
         get_listener/6,
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
         get_rule/4,
         get_rule/6,
         get_rule/7,
         get_service/2,
         get_service/4,
         get_service/5,
         get_service_network/2,
         get_service_network/4,
         get_service_network/5,
         get_service_network_service_association/2,
         get_service_network_service_association/4,
         get_service_network_service_association/5,
         get_service_network_vpc_association/2,
         get_service_network_vpc_association/4,
         get_service_network_vpc_association/5,
         get_target_group/2,
         get_target_group/4,
         get_target_group/5,
         list_access_log_subscriptions/2,
         list_access_log_subscriptions/4,
         list_access_log_subscriptions/5,
         list_listeners/2,
         list_listeners/4,
         list_listeners/5,
         list_rules/3,
         list_rules/5,
         list_rules/6,
         list_service_network_service_associations/1,
         list_service_network_service_associations/3,
         list_service_network_service_associations/4,
         list_service_network_vpc_associations/1,
         list_service_network_vpc_associations/3,
         list_service_network_vpc_associations/4,
         list_service_networks/1,
         list_service_networks/3,
         list_service_networks/4,
         list_services/1,
         list_services/3,
         list_services/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_target_groups/1,
         list_target_groups/3,
         list_target_groups/4,
         list_targets/3,
         list_targets/4,
         put_auth_policy/3,
         put_auth_policy/4,
         put_resource_policy/3,
         put_resource_policy/4,
         register_targets/3,
         register_targets/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_access_log_subscription/3,
         update_access_log_subscription/4,
         update_listener/4,
         update_listener/5,
         update_rule/5,
         update_rule/6,
         update_service/3,
         update_service/4,
         update_service_network/3,
         update_service_network/4,
         update_service_network_vpc_association/3,
         update_service_network_vpc_association/4,
         update_target_group/3,
         update_target_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Updates the listener rules in a batch.
%%
%% You can use this operation to change the priority of
%% listener rules. This can be useful when bulk updating or swapping rule
%% priority.
batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input, []).
batch_update_rule(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
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

%% @doc Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and
%% Amazon Kinesis Data Firehose.
%%
%% The service network owner
%% can use the access logs to audit the services in the network. The service
%% network owner will only
%% see access logs from clients and services that are associated with their
%% service network. Access
%% log entries represent traffic originated from VPCs associated with that
%% network. For more
%% information, see Access logs:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html
%% in the
%% Amazon VPC Lattice User Guide.
create_access_log_subscription(Client, Input) ->
    create_access_log_subscription(Client, Input, []).
create_access_log_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accesslogsubscriptions"],
    SuccessStatusCode = 201,
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

%% @doc Creates a listener for a service.
%%
%% Before you start using your Amazon VPC Lattice service, you must
%% add one or more listeners. A listener is a process that checks for
%% connection requests to your
%% services. For more information, see Listeners:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html in the
%% Amazon VPC Lattice User Guide.
create_listener(Client, ServiceIdentifier, Input) ->
    create_listener(Client, ServiceIdentifier, Input, []).
create_listener(Client, ServiceIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners"],
    SuccessStatusCode = 201,
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

%% @doc Creates a listener rule.
%%
%% Each listener has a default rule for checking connection requests,
%% but you can define additional rules. Each rule consists of a priority, one
%% or more actions, and
%% one or more conditions. For more information, see Listener rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the
%% Amazon VPC Lattice User Guide.
create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input, []).
create_rule(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
    SuccessStatusCode = 201,
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

%% @doc Creates a service.
%%
%% A service is any software application that can run on instances
%% containers, or serverless functions within an account or virtual private
%% cloud (VPC).
%%
%% For more information, see Services:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html in the
%% Amazon VPC Lattice User Guide.
create_service(Client, Input) ->
    create_service(Client, Input, []).
create_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/services"],
    SuccessStatusCode = 201,
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

%% @doc Creates a service network.
%%
%% A service network is a logical boundary for a collection of
%% services. You can associate services and VPCs with a service network.
%%
%% For more information, see Service networks:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html in
%% the
%% Amazon VPC Lattice User Guide.
create_service_network(Client, Input) ->
    create_service_network(Client, Input, []).
create_service_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworks"],
    SuccessStatusCode = 201,
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

%% @doc Associates a service with a service network.
%%
%% You can't use this operation if the service and service network are
%% already associated or if
%% there is a disassociation or deletion in progress. If the association
%% fails, you can retry the
%% operation by deleting the association and recreating it.
%%
%% You cannot associate a service and service network that are shared with a
%% caller. The caller
%% must own either the service or the service network.
%%
%% As a result of this operation, the association is created in the service
%% network account and
%% the association owner account.
create_service_network_service_association(Client, Input) ->
    create_service_network_service_association(Client, Input, []).
create_service_network_service_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworkserviceassociations"],
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

%% @doc Associates a VPC with a service network.
%%
%% When you associate a VPC with the service network,
%% it enables all the resources within that VPC to be clients and communicate
%% with other services in
%% the service network. For more information, see Manage VPC associations:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations
%% in the Amazon VPC Lattice User Guide.
%%
%% You can't use this operation if there is a disassociation in progress.
%% If the association
%% fails, retry by deleting the association and recreating it.
%%
%% As a result of this operation, the association gets created in the service
%% network account
%% and the VPC owner account.
%%
%% Once a security group is added to the VPC association it cannot be
%% removed. You can add or
%% update the security groups being used for the VPC association once a
%% security group is attached.
%% To remove all security groups you must reassociate the VPC.
create_service_network_vpc_association(Client, Input) ->
    create_service_network_vpc_association(Client, Input, []).
create_service_network_vpc_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/servicenetworkvpcassociations"],
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

%% @doc Creates a target group.
%%
%% A target group is a collection of targets, or compute resources,
%% that run your application or service. A target group can only be used by a
%% single service.
%%
%% For more information, see Target groups:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html in
%% the
%% Amazon VPC Lattice User Guide.
create_target_group(Client, Input) ->
    create_target_group(Client, Input, []).
create_target_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups"],
    SuccessStatusCode = 201,
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

%% @doc Deletes the specified access log subscription.
delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input) ->
    delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input, []).
delete_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified auth policy.
%%
%% If an auth is set to `Amazon Web Services_IAM'
%% and the auth policy is deleted, all requests will be denied by default. If
%% you are trying to
%% remove the auth policy completely, you must set the auth_type to
%% `NONE'. If auth is
%% enabled on the resource, but no auth policy is set, all requests will be
%% denied.
delete_auth_policy(Client, ResourceIdentifier, Input) ->
    delete_auth_policy(Client, ResourceIdentifier, Input, []).
delete_auth_policy(Client, ResourceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified listener.
delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input, []).
delete_listener(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the specified resource policy.
delete_resource_policy(Client, ResourceArn, Input) ->
    delete_resource_policy(Client, ResourceArn, Input, []).
delete_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a listener rule.
%%
%% Each listener has a default rule for checking connection requests,
%% but you can define additional rules. Each rule consists of a priority, one
%% or more actions, and
%% one or more conditions. You can delete additional listener rules, but you
%% cannot delete the
%% default rule.
%%
%% For more information, see Listener rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the
%% Amazon VPC Lattice User Guide.
delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input) ->
    delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input, []).
delete_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a service.
%%
%% A service can't be deleted if it's associated with a service
%% network. If
%% you delete a service, all resources related to the service, such as the
%% resource policy, auth
%% policy, listeners, listener rules, and access log subscriptions, are also
%% deleted. For more
%% information, see Delete a service:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service
%% in the
%% Amazon VPC Lattice User Guide.
delete_service(Client, ServiceIdentifier, Input) ->
    delete_service(Client, ServiceIdentifier, Input, []).
delete_service(Client, ServiceIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
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

%% @doc Deletes a service network.
%%
%% You can only delete the service network if there is no service or
%% VPC associated with it. If you delete a service network, all resources
%% related to the service
%% network, such as the resource policy, auth policy, and access log
%% subscriptions, are also
%% deleted. For more information, see Delete a service
%% network:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network
%% in the Amazon VPC Lattice User Guide.
delete_service_network(Client, ServiceNetworkIdentifier, Input) ->
    delete_service_network(Client, ServiceNetworkIdentifier, Input, []).
delete_service_network(Client, ServiceNetworkIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the association between a specified service and the specific
%% service network.
%%
%% This
%% request will fail if an association is still in progress.
delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input) ->
    delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input, []).
delete_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworkserviceassociations/", aws_util:encode_uri(ServiceNetworkServiceAssociationIdentifier), ""],
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

%% @doc Disassociates the VPC from the service network.
%%
%% You can't disassociate the VPC if there is a
%% create or update association in progress.
delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input) ->
    delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input, []).
delete_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
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

%% @doc Deletes a target group.
%%
%% You can't delete a target group if it is used in a listener rule or
%% if the target group creation is in progress.
delete_target_group(Client, TargetGroupIdentifier, Input) ->
    delete_target_group(Client, TargetGroupIdentifier, Input, []).
delete_target_group(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
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

%% @doc Deregisters the specified targets from the specified target group.
deregister_targets(Client, TargetGroupIdentifier, Input) ->
    deregister_targets(Client, TargetGroupIdentifier, Input, []).
deregister_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/deregistertargets"],
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

%% @doc Retrieves information about the specified access log subscription.
get_access_log_subscription(Client, AccessLogSubscriptionIdentifier)
  when is_map(Client) ->
    get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, #{}, #{}).

get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap, []).

get_access_log_subscription(Client, AccessLogSubscriptionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the auth policy for the specified service
%% or service
%% network.
get_auth_policy(Client, ResourceIdentifier)
  when is_map(Client) ->
    get_auth_policy(Client, ResourceIdentifier, #{}, #{}).

get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

get_auth_policy(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified listener for the specified
%% service.
get_listener(Client, ListenerIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_listener(Client, ListenerIdentifier, ServiceIdentifier, #{}, #{}).

get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

get_listener(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the resource policy.
%%
%% The resource policy is an IAM policy
%% created by AWS RAM on behalf of the resource owner when they share a
%% resource.
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about listener rules.
%%
%% You can also retrieve information about the
%% default listener rule. For more information, see Listener rules:
%% https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
%% in the
%% Amazon VPC Lattice User Guide.
get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, #{}, #{}).

get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

get_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified service.
get_service(Client, ServiceIdentifier)
  when is_map(Client) ->
    get_service(Client, ServiceIdentifier, #{}, #{}).

get_service(Client, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service(Client, ServiceIdentifier, QueryMap, HeadersMap, []).

get_service(Client, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified service network.
get_service_network(Client, ServiceNetworkIdentifier)
  when is_map(Client) ->
    get_service_network(Client, ServiceNetworkIdentifier, #{}, #{}).

get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, []).

get_service_network(Client, ServiceNetworkIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified association between a
%% service network and a
%% service.
get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier)
  when is_map(Client) ->
    get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, #{}, #{}).

get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap, []).

get_service_network_service_association(Client, ServiceNetworkServiceAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkserviceassociations/", aws_util:encode_uri(ServiceNetworkServiceAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the association between a service network
%% and a VPC.
get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier)
  when is_map(Client) ->
    get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, #{}, #{}).

get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap, []).

get_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified target group.
get_target_group(Client, TargetGroupIdentifier)
  when is_map(Client) ->
    get_target_group(Client, TargetGroupIdentifier, #{}, #{}).

get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap, []).

get_target_group(Client, TargetGroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all access log subscriptions for the specified service network
%% or service.
list_access_log_subscriptions(Client, ResourceIdentifier)
  when is_map(Client) ->
    list_access_log_subscriptions(Client, ResourceIdentifier, #{}, #{}).

list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap, []).

list_access_log_subscriptions(Client, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accesslogsubscriptions"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceIdentifier">>, ResourceIdentifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the listeners for the specified service.
list_listeners(Client, ServiceIdentifier)
  when is_map(Client) ->
    list_listeners(Client, ServiceIdentifier, #{}, #{}).

list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap, []).

list_listeners(Client, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners"],
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

%% @doc Lists the rules for the listener.
list_rules(Client, ListenerIdentifier, ServiceIdentifier)
  when is_map(Client) ->
    list_rules(Client, ListenerIdentifier, ServiceIdentifier, #{}, #{}).

list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, []).

list_rules(Client, ListenerIdentifier, ServiceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules"],
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

%% @doc Lists the associations between the service network and the service.
%%
%% You can filter the list
%% either by service or service network. You must provide either the service
%% network identifier or
%% the service identifier.
%%
%% Every association in Amazon VPC Lattice is given a unique Amazon Resource
%% Name (ARN), such as when a
%% service network is associated with a VPC or when a service is associated
%% with a service network.
%% If the association is for a resource that is shared with another account,
%% the association will
%% include the local account ID as the prefix in the ARN for each account the
%% resource is shared
%% with.
list_service_network_service_associations(Client)
  when is_map(Client) ->
    list_service_network_service_associations(Client, #{}, #{}).

list_service_network_service_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_service_associations(Client, QueryMap, HeadersMap, []).

list_service_network_service_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkserviceassociations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceIdentifier">>, maps:get(<<"serviceIdentifier">>, QueryMap, undefined)},
        {<<"serviceNetworkIdentifier">>, maps:get(<<"serviceNetworkIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service network and VPC associations.
%%
%% You can filter the list either by VPC or
%% service network. You must provide either the service network identifier or
%% the VPC
%% identifier.
list_service_network_vpc_associations(Client)
  when is_map(Client) ->
    list_service_network_vpc_associations(Client, #{}, #{}).

list_service_network_vpc_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_network_vpc_associations(Client, QueryMap, HeadersMap, []).

list_service_network_vpc_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworkvpcassociations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceNetworkIdentifier">>, maps:get(<<"serviceNetworkIdentifier">>, QueryMap, undefined)},
        {<<"vpcIdentifier">>, maps:get(<<"vpcIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service networks owned by the caller account or shared with
%% the caller account.
%%
%% Also includes the account ID in the ARN to show which account owns the
%% service network.
list_service_networks(Client)
  when is_map(Client) ->
    list_service_networks(Client, #{}, #{}).

list_service_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_networks(Client, QueryMap, HeadersMap, []).

list_service_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/servicenetworks"],
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

%% @doc Lists the services owned by the caller account or shared with the
%% caller account.
list_services(Client)
  when is_map(Client) ->
    list_services(Client, #{}, #{}).

list_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, QueryMap, HeadersMap, []).

list_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/services"],
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

%% @doc Lists the tags for the specified resource.
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

%% @doc Lists your target groups.
%%
%% You can narrow your search by using the filters below in your
%% request.
list_target_groups(Client)
  when is_map(Client) ->
    list_target_groups(Client, #{}, #{}).

list_target_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_target_groups(Client, QueryMap, HeadersMap, []).

list_target_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/targetgroups"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"targetGroupType">>, maps:get(<<"targetGroupType">>, QueryMap, undefined)},
        {<<"vpcIdentifier">>, maps:get(<<"vpcIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the targets for the target group.
%%
%% By default, all targets are included. You can use
%% this API to check the health status of targets. You can also ﬁlter the
%% results by target.
list_targets(Client, TargetGroupIdentifier, Input) ->
    list_targets(Client, TargetGroupIdentifier, Input, []).
list_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/listtargets"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates the auth policy.
put_auth_policy(Client, ResourceIdentifier, Input) ->
    put_auth_policy(Client, ResourceIdentifier, Input, []).
put_auth_policy(Client, ResourceIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/authpolicy/", aws_util:encode_uri(ResourceIdentifier), ""],
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

%% @doc Attaches a resource-based permission policy to a service or service
%% network.
%%
%% The policy must
%% contain the same actions and condition statements as the Amazon Web
%% Services Resource Access
%% Manager permission for sharing services and service networks.
put_resource_policy(Client, ResourceArn, Input) ->
    put_resource_policy(Client, ResourceArn, Input, []).
put_resource_policy(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/resourcepolicy/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Registers the targets with the target group.
%%
%% If it's a Lambda target, you can only have one
%% target in a target group.
register_targets(Client, TargetGroupIdentifier, Input) ->
    register_targets(Client, TargetGroupIdentifier, Input, []).
register_targets(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), "/registertargets"],
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

%% @doc Adds the specified tags to the specified resource.
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Updates the specified access log subscription.
update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input) ->
    update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input, []).
update_access_log_subscription(Client, AccessLogSubscriptionIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/accesslogsubscriptions/", aws_util:encode_uri(AccessLogSubscriptionIdentifier), ""],
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

%% @doc Updates the specified listener for the specified service.
update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input) ->
    update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input, []).
update_listener(Client, ListenerIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), ""],
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

%% @doc Updates a rule for the listener.
%%
%% You can't modify a default listener rule. To modify a
%% default listener rule, use `UpdateListener'.
update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input) ->
    update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input, []).
update_rule(Client, ListenerIdentifier, RuleIdentifier, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), "/listeners/", aws_util:encode_uri(ListenerIdentifier), "/rules/", aws_util:encode_uri(RuleIdentifier), ""],
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

%% @doc Updates the specified service.
update_service(Client, ServiceIdentifier, Input) ->
    update_service(Client, ServiceIdentifier, Input, []).
update_service(Client, ServiceIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/services/", aws_util:encode_uri(ServiceIdentifier), ""],
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

%% @doc Updates the specified service network.
update_service_network(Client, ServiceNetworkIdentifier, Input) ->
    update_service_network(Client, ServiceNetworkIdentifier, Input, []).
update_service_network(Client, ServiceNetworkIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/servicenetworks/", aws_util:encode_uri(ServiceNetworkIdentifier), ""],
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

%% @doc Updates the service network and VPC association.
%%
%% Once you add a security group, it cannot be
%% removed.
update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input) ->
    update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input, []).
update_service_network_vpc_association(Client, ServiceNetworkVpcAssociationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/servicenetworkvpcassociations/", aws_util:encode_uri(ServiceNetworkVpcAssociationIdentifier), ""],
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

%% @doc Updates the specified target group.
update_target_group(Client, TargetGroupIdentifier, Input) ->
    update_target_group(Client, TargetGroupIdentifier, Input, []).
update_target_group(Client, TargetGroupIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/targetgroups/", aws_util:encode_uri(TargetGroupIdentifier), ""],
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
    Client1 = Client#{service => <<"vpc-lattice">>},
    Host = build_host(<<"vpc-lattice">>, Client1),
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
