%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 is a highly available and scalable Domain Name System
%% (DNS) web service.
-module(aws_route53).

-export([activate_key_signing_key/4,
         activate_key_signing_key/5,
         associate_vpc_with_hosted_zone/3,
         associate_vpc_with_hosted_zone/4,
         change_cidr_collection/3,
         change_cidr_collection/4,
         change_resource_record_sets/3,
         change_resource_record_sets/4,
         change_tags_for_resource/4,
         change_tags_for_resource/5,
         create_cidr_collection/2,
         create_cidr_collection/3,
         create_health_check/2,
         create_health_check/3,
         create_hosted_zone/2,
         create_hosted_zone/3,
         create_key_signing_key/2,
         create_key_signing_key/3,
         create_query_logging_config/2,
         create_query_logging_config/3,
         create_reusable_delegation_set/2,
         create_reusable_delegation_set/3,
         create_traffic_policy/2,
         create_traffic_policy/3,
         create_traffic_policy_instance/2,
         create_traffic_policy_instance/3,
         create_traffic_policy_version/3,
         create_traffic_policy_version/4,
         create_vpc_association_authorization/3,
         create_vpc_association_authorization/4,
         deactivate_key_signing_key/4,
         deactivate_key_signing_key/5,
         delete_cidr_collection/3,
         delete_cidr_collection/4,
         delete_health_check/3,
         delete_health_check/4,
         delete_hosted_zone/3,
         delete_hosted_zone/4,
         delete_key_signing_key/4,
         delete_key_signing_key/5,
         delete_query_logging_config/3,
         delete_query_logging_config/4,
         delete_reusable_delegation_set/3,
         delete_reusable_delegation_set/4,
         delete_traffic_policy/4,
         delete_traffic_policy/5,
         delete_traffic_policy_instance/3,
         delete_traffic_policy_instance/4,
         delete_vpc_association_authorization/3,
         delete_vpc_association_authorization/4,
         disable_hosted_zone_dns_sec/3,
         disable_hosted_zone_dns_sec/4,
         disassociate_vpc_from_hosted_zone/3,
         disassociate_vpc_from_hosted_zone/4,
         enable_hosted_zone_dns_sec/3,
         enable_hosted_zone_dns_sec/4,
         get_account_limit/2,
         get_account_limit/4,
         get_account_limit/5,
         get_change/2,
         get_change/4,
         get_change/5,
         get_checker_ip_ranges/1,
         get_checker_ip_ranges/3,
         get_checker_ip_ranges/4,
         get_dns_sec/2,
         get_dns_sec/4,
         get_dns_sec/5,
         get_geo_location/1,
         get_geo_location/3,
         get_geo_location/4,
         get_health_check/2,
         get_health_check/4,
         get_health_check/5,
         get_health_check_count/1,
         get_health_check_count/3,
         get_health_check_count/4,
         get_health_check_last_failure_reason/2,
         get_health_check_last_failure_reason/4,
         get_health_check_last_failure_reason/5,
         get_health_check_status/2,
         get_health_check_status/4,
         get_health_check_status/5,
         get_hosted_zone/2,
         get_hosted_zone/4,
         get_hosted_zone/5,
         get_hosted_zone_count/1,
         get_hosted_zone_count/3,
         get_hosted_zone_count/4,
         get_hosted_zone_limit/3,
         get_hosted_zone_limit/5,
         get_hosted_zone_limit/6,
         get_query_logging_config/2,
         get_query_logging_config/4,
         get_query_logging_config/5,
         get_reusable_delegation_set/2,
         get_reusable_delegation_set/4,
         get_reusable_delegation_set/5,
         get_reusable_delegation_set_limit/3,
         get_reusable_delegation_set_limit/5,
         get_reusable_delegation_set_limit/6,
         get_traffic_policy/3,
         get_traffic_policy/5,
         get_traffic_policy/6,
         get_traffic_policy_instance/2,
         get_traffic_policy_instance/4,
         get_traffic_policy_instance/5,
         get_traffic_policy_instance_count/1,
         get_traffic_policy_instance_count/3,
         get_traffic_policy_instance_count/4,
         list_cidr_blocks/2,
         list_cidr_blocks/4,
         list_cidr_blocks/5,
         list_cidr_collections/1,
         list_cidr_collections/3,
         list_cidr_collections/4,
         list_cidr_locations/2,
         list_cidr_locations/4,
         list_cidr_locations/5,
         list_geo_locations/1,
         list_geo_locations/3,
         list_geo_locations/4,
         list_health_checks/1,
         list_health_checks/3,
         list_health_checks/4,
         list_hosted_zones/1,
         list_hosted_zones/3,
         list_hosted_zones/4,
         list_hosted_zones_by_name/1,
         list_hosted_zones_by_name/3,
         list_hosted_zones_by_name/4,
         list_hosted_zones_by_vpc/3,
         list_hosted_zones_by_vpc/5,
         list_hosted_zones_by_vpc/6,
         list_query_logging_configs/1,
         list_query_logging_configs/3,
         list_query_logging_configs/4,
         list_resource_record_sets/2,
         list_resource_record_sets/4,
         list_resource_record_sets/5,
         list_reusable_delegation_sets/1,
         list_reusable_delegation_sets/3,
         list_reusable_delegation_sets/4,
         list_tags_for_resource/3,
         list_tags_for_resource/5,
         list_tags_for_resource/6,
         list_tags_for_resources/3,
         list_tags_for_resources/4,
         list_traffic_policies/1,
         list_traffic_policies/3,
         list_traffic_policies/4,
         list_traffic_policy_instances/1,
         list_traffic_policy_instances/3,
         list_traffic_policy_instances/4,
         list_traffic_policy_instances_by_hosted_zone/2,
         list_traffic_policy_instances_by_hosted_zone/4,
         list_traffic_policy_instances_by_hosted_zone/5,
         list_traffic_policy_instances_by_policy/3,
         list_traffic_policy_instances_by_policy/5,
         list_traffic_policy_instances_by_policy/6,
         list_traffic_policy_versions/2,
         list_traffic_policy_versions/4,
         list_traffic_policy_versions/5,
         list_vpc_association_authorizations/2,
         list_vpc_association_authorizations/4,
         list_vpc_association_authorizations/5,
         test_dns_answer/4,
         test_dns_answer/6,
         test_dns_answer/7,
         update_health_check/3,
         update_health_check/4,
         update_hosted_zone_comment/3,
         update_hosted_zone_comment/4,
         update_traffic_policy_comment/4,
         update_traffic_policy_comment/5,
         update_traffic_policy_instance/3,
         update_traffic_policy_instance/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a key-signing key (KSK) so that it can be used for signing
%% by DNSSEC.
%%
%% This operation changes the KSK status to `ACTIVE'.
activate_key_signing_key(Client, HostedZoneId, Name, Input) ->
    activate_key_signing_key(Client, HostedZoneId, Name, Input, []).
activate_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), "/activate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an Amazon VPC with a private hosted zone.
%%
%% To perform the association, the VPC and the private hosted zone must
%% already exist. You can't convert a public hosted zone into a private
%% hosted zone.
%%
%% If you want to associate a VPC that was created by using one Amazon Web
%% Services account with a private hosted zone that was created by using a
%% different account, the Amazon Web Services account that created the
%% private hosted zone must first submit a
%% `CreateVPCAssociationAuthorization' request. Then the account that created
%% the VPC must submit an `AssociateVPCWithHostedZone' request.
%%
%% When granting access, the hosted zone and the Amazon VPC must belong to
%% the same partition. A partition is a group of Amazon Web Services Regions.
%% Each Amazon Web Services account is scoped to one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management in the Amazon Web Services
%% General Reference.
associate_vpc_with_hosted_zone(Client, HostedZoneId, Input) ->
    associate_vpc_with_hosted_zone(Client, HostedZoneId, Input, []).
associate_vpc_with_hosted_zone(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/associatevpc"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates, changes, or deletes CIDR blocks within a collection.
%%
%% Contains authoritative IP information mapping blocks to one or multiple
%% locations.
%%
%% A change request can update multiple locations in a collection at a time,
%% which is helpful if you want to move one or more CIDR blocks from one
%% location to another in one transaction, without downtime.
%%
%% Limits
%%
%% The max number of CIDR blocks included in the request is 1000. As a
%% result, big updates require multiple API calls.
%%
%% PUT and DELETE_IF_EXISTS
%%
%% Use `ChangeCidrCollection' to perform the following actions:
%%
%% <ul> <li> `PUT': Create a CIDR block within the specified collection.
%%
%% </li> <li> ` DELETE_IF_EXISTS': Delete an existing CIDR block from the
%% collection.
%%
%% </li> </ul>
change_cidr_collection(Client, Id, Input) ->
    change_cidr_collection(Client, Id, Input, []).
change_cidr_collection(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates, changes, or deletes a resource record set, which contains
%% authoritative DNS information for a specified domain name or subdomain
%% name.
%%
%% For example, you can use `ChangeResourceRecordSets' to create a resource
%% record set that routes traffic for test.example.com to a web server that
%% has an IP address of 192.0.2.44.
%%
%% Deleting Resource Record Sets
%%
%% To delete a resource record set, you must specify all the same values that
%% you specified when you created it.
%%
%% Change Batches and Transactional Changes
%%
%% The request body must include a document with a
%% `ChangeResourceRecordSetsRequest' element. The request body contains a
%% list of change items, known as a change batch. Change batches are
%% considered transactional changes. Route 53 validates the changes in the
%% request and then either makes all or none of the changes in the change
%% batch request. This ensures that DNS routing isn't adversely affected by
%% partial changes to the resource record sets in a hosted zone.
%%
%% For example, suppose a change batch request contains two changes: it
%% deletes the `CNAME' resource record set for www.example.com and creates an
%% alias resource record set for www.example.com. If validation for both
%% records succeeds, Route 53 deletes the first resource record set and
%% creates the second resource record set in a single operation. If
%% validation for either the `DELETE' or the `CREATE' action fails, then the
%% request is canceled, and the original `CNAME' record continues to exist.
%%
%% If you try to delete the same resource record set more than once in a
%% single change batch, Route 53 returns an `InvalidChangeBatch' error.
%%
%% Traffic Flow
%%
%% To create resource record sets for complex routing configurations, use
%% either the traffic flow visual editor in the Route 53 console or the API
%% actions for traffic policies and traffic policy instances. Save the
%% configuration as a traffic policy, then associate the traffic policy with
%% one or more domain names (such as example.com) or subdomain names (such as
%% www.example.com), in the same hosted zone or in multiple hosted zones. You
%% can roll back the updates if the new configuration isn't performing as
%% expected. For more information, see Using Traffic Flow to Route DNS
%% Traffic in the Amazon Route 53 Developer Guide.
%%
%% Create, Delete, and Upsert
%%
%% Use `ChangeResourceRecordsSetsRequest' to perform the following actions:
%%
%% <ul> <li> `CREATE': Creates a resource record set that has the specified
%% values.
%%
%% </li> <li> `DELETE': Deletes an existing resource record set that has the
%% specified values.
%%
%% </li> <li> `UPSERT': If a resource set exists Route 53 updates it with the
%% values in the request.
%%
%% </li> </ul> Syntaxes for Creating, Updating, and Deleting Resource Record
%% Sets
%%
%% The syntax for a request depends on the type of resource record set that
%% you want to create, delete, or update, such as weighted, alias, or
%% failover. The XML elements in your request must appear in the order listed
%% in the syntax.
%%
%% For an example for each type of resource record set, see "Examples."
%%
%% Don't refer to the syntax in the "Parameter Syntax" section, which
%% includes all of the elements for every kind of resource record set that
%% you can create, delete, or update by using `ChangeResourceRecordSets'.
%%
%% Change Propagation to Route 53 DNS Servers
%%
%% When you submit a `ChangeResourceRecordSets' request, Route 53 propagates
%% your changes to all of the Route 53 authoritative DNS servers. While your
%% changes are propagating, `GetChange' returns a status of `PENDING'. When
%% propagation is complete, `GetChange' returns a status of `INSYNC'. Changes
%% generally propagate to all Route 53 name servers within 60 seconds. For
%% more information, see GetChange.
%%
%% Limits on ChangeResourceRecordSets Requests
%%
%% For information about the limits on a `ChangeResourceRecordSets' request,
%% see Limits in the Amazon Route 53 Developer Guide.
change_resource_record_sets(Client, HostedZoneId, Input) ->
    change_resource_record_sets(Client, HostedZoneId, Input, []).
change_resource_record_sets(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/rrset/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds, edits, or deletes tags for a health check or a hosted zone.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation Tags in the Billing and Cost Management User Guide.
change_tags_for_resource(Client, ResourceId, ResourceType, Input) ->
    change_tags_for_resource(Client, ResourceId, ResourceType, Input, []).
change_tags_for_resource(Client, ResourceId, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a CIDR collection in the current Amazon Web Services account.
create_cidr_collection(Client, Input) ->
    create_cidr_collection(Client, Input, []).
create_cidr_collection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/cidrcollection"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new health check.
%%
%% For information about adding health checks to resource record sets, see
%% HealthCheckId in ChangeResourceRecordSets.
%%
%% ELB Load Balancers
%%
%% If you're registering EC2 instances with an Elastic Load Balancing (ELB)
%% load balancer, do not create Amazon Route 53 health checks for the EC2
%% instances. When you register an EC2 instance with a load balancer, you
%% configure settings for an ELB health check, which performs a similar
%% function to a Route 53 health check.
%%
%% Private Hosted Zones
%%
%% You can associate health checks with failover resource record sets in a
%% private hosted zone. Note the following:
%%
%% <ul> <li> Route 53 health checkers are outside the VPC. To check the
%% health of an endpoint within a VPC by IP address, you must assign a public
%% IP address to the instance in the VPC.
%%
%% </li> <li> You can configure a health checker to check the health of an
%% external resource that the instance relies on, such as a database server.
%%
%% </li> <li> You can create a CloudWatch metric, associate an alarm with the
%% metric, and then create a health check that is based on the state of the
%% alarm. For example, you might create a CloudWatch metric that checks the
%% status of the Amazon EC2 `StatusCheckFailed' metric, add an alarm to the
%% metric, and then create a health check that is based on the state of the
%% alarm. For information about creating CloudWatch metrics and alarms by
%% using the CloudWatch console, see the Amazon CloudWatch User Guide.
%%
%% </li> </ul>
create_health_check(Client, Input) ->
    create_health_check(Client, Input, []).
create_health_check(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new public or private hosted zone.
%%
%% You create records in a public hosted zone to define how you want to route
%% traffic on the internet for a domain, such as example.com, and its
%% subdomains (apex.example.com, acme.example.com). You create records in a
%% private hosted zone to define how you want to route traffic for a domain
%% and its subdomains within one or more Amazon Virtual Private Clouds
%% (Amazon VPCs).
%%
%% You can't convert a public hosted zone to a private hosted zone or vice
%% versa. Instead, you must create a new hosted zone with the same name and
%% create new resource record sets.
%%
%% For more information about charges for hosted zones, see Amazon Route 53
%% Pricing.
%%
%% Note the following:
%%
%% <ul> <li> You can't create a hosted zone for a top-level domain (TLD) such
%% as .com.
%%
%% </li> <li> For public hosted zones, Route 53 automatically creates a
%% default SOA record and four NS records for the zone. For more information
%% about SOA and NS records, see NS and SOA Records that Route 53 Creates for
%% a Hosted Zone in the Amazon Route 53 Developer Guide.
%%
%% If you want to use the same name servers for multiple public hosted zones,
%% you can optionally associate a reusable delegation set with the hosted
%% zone. See the `DelegationSetId' element.
%%
%% </li> <li> If your domain is registered with a registrar other than
%% Route 53, you must update the name servers with your registrar to make
%% Route 53 the DNS service for the domain. For more information, see
%% Migrating DNS Service for an Existing Domain to Amazon Route 53 in the
%% Amazon Route 53 Developer Guide.
%%
%% </li> </ul> When you submit a `CreateHostedZone' request, the initial
%% status of the hosted zone is `PENDING'. For public hosted zones, this
%% means that the NS and SOA records are not yet available on all Route 53
%% DNS servers. When the NS and SOA records are available, the status of the
%% zone changes to `INSYNC'.
%%
%% The `CreateHostedZone' request requires the caller to have an
%% `ec2:DescribeVpcs' permission.
%%
%% When creating private hosted zones, the Amazon VPC must belong to the same
%% partition where the hosted zone is created. A partition is a group of
%% Amazon Web Services Regions. Each Amazon Web Services account is scoped to
%% one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management in the Amazon Web Services
%% General Reference.
create_hosted_zone(Client, Input) ->
    create_hosted_zone(Client, Input, []).
create_hosted_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new key-signing key (KSK) associated with a hosted zone.
%%
%% You can only have two KSKs per hosted zone.
create_key_signing_key(Client, Input) ->
    create_key_signing_key(Client, Input, []).
create_key_signing_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a configuration for DNS query logging.
%%
%% After you create a query logging configuration, Amazon Route 53 begins to
%% publish log data to an Amazon CloudWatch Logs log group.
%%
%% DNS query logs contain information about the queries that Route 53
%% receives for a specified public hosted zone, such as the following:
%%
%% <ul> <li> Route 53 edge location that responded to the DNS query
%%
%% </li> <li> Domain or subdomain that was requested
%%
%% </li> <li> DNS record type, such as A or AAAA
%%
%% </li> <li> DNS response code, such as `NoError' or `ServFail'
%%
%% </li> </ul> <dl> <dt>Log Group and Resource Policy</dt> <dd> Before you
%% create a query logging configuration, perform the following operations.
%%
%% If you create a query logging configuration using the Route 53 console,
%% Route 53 performs these operations automatically.
%%
%% <ol> <li> Create a CloudWatch Logs log group, and make note of the ARN,
%% which you specify when you create a query logging configuration. Note the
%% following:
%%
%% <ul> <li> You must create the log group in the us-east-1 region.
%%
%% </li> <li> You must use the same Amazon Web Services account to create the
%% log group and the hosted zone that you want to configure query logging
%% for.
%%
%% </li> <li> When you create log groups for query logging, we recommend that
%% you use a consistent prefix, for example:
%%
%% `/aws/route53/hosted zone name '
%%
%% In the next step, you'll create a resource policy, which controls access
%% to one or more log groups and the associated Amazon Web Services
%% resources, such as Route 53 hosted zones. There's a limit on the number of
%% resource policies that you can create, so we recommend that you use a
%% consistent prefix so you can use the same resource policy for all the log
%% groups that you create for query logging.
%%
%% </li> </ul> </li> <li> Create a CloudWatch Logs resource policy, and give
%% it the permissions that Route 53 needs to create log streams and to send
%% query logs to log streams. For the value of `Resource', specify the ARN
%% for the log group that you created in the previous step. To use the same
%% resource policy for all the CloudWatch Logs log groups that you created
%% for query logging configurations, replace the hosted zone name with `*',
%% for example:
%%
%% `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*'
%%
%% To avoid the confused deputy problem, a security issue where an entity
%% without a permission for an action can coerce a more-privileged entity to
%% perform it, you can optionally limit the permissions that a service has to
%% a resource in a resource-based policy by supplying the following values:
%%
%% <ul> <li> For `aws:SourceArn', supply the hosted zone ARN used in creating
%% the query logging configuration. For example, `aws:SourceArn:
%% arn:aws:route53:::hostedzone/hosted zone ID'.
%%
%% </li> <li> For `aws:SourceAccount', supply the account ID for the account
%% that creates the query logging configuration. For example,
%% `aws:SourceAccount:111111111111'.
%%
%% </li> </ul> For more information, see The confused deputy problem in the
%% Amazon Web Services IAM User Guide.
%%
%% You can't use the CloudWatch console to create or edit a resource policy.
%% You must use the CloudWatch API, one of the Amazon Web Services SDKs, or
%% the CLI.
%%
%% </li> </ol> </dd> <dt>Log Streams and Edge Locations</dt> <dd> When Route
%% 53 finishes creating the configuration for DNS query logging, it does the
%% following:
%%
%% <ul> <li> Creates a log stream for an edge location the first time that
%% the edge location responds to DNS queries for the specified hosted zone.
%% That log stream is used to log all queries that Route 53 responds to for
%% that edge location.
%%
%% </li> <li> Begins to send query logs to the applicable log stream.
%%
%% </li> </ul> The name of each log stream is in the following format:
%%
%% ` hosted zone ID/edge location code '
%%
%% The edge location code is a three-letter code and an arbitrarily assigned
%% number, for example, DFW3. The three-letter code typically corresponds
%% with the International Air Transport Association airport code for an
%% airport near the edge location. (These abbreviations might change in the
%% future.) For a list of edge locations, see "The Route 53 Global Network"
%% on the Route 53 Product Details page.
%%
%% </dd> <dt>Queries That Are Logged</dt> <dd> Query logs contain only the
%% queries that DNS resolvers forward to Route 53. If a DNS resolver has
%% already cached the response to a query (such as the IP address for a load
%% balancer for example.com), the resolver will continue to return the cached
%% response. It doesn't forward another query to Route 53 until the TTL for
%% the corresponding resource record set expires. Depending on how many DNS
%% queries are submitted for a resource record set, and depending on the TTL
%% for that resource record set, query logs might contain information about
%% only one query out of every several thousand queries that are submitted to
%% DNS. For more information about how DNS works, see Routing Internet
%% Traffic to Your Website or Web Application in the Amazon Route 53
%% Developer Guide.
%%
%% </dd> <dt>Log File Format</dt> <dd> For a list of the values in each query
%% log and the format of each value, see Logging DNS Queries in the Amazon
%% Route 53 Developer Guide.
%%
%% </dd> <dt>Pricing</dt> <dd> For information about charges for query logs,
%% see Amazon CloudWatch Pricing.
%%
%% </dd> <dt>How to Stop Logging</dt> <dd> If you want Route 53 to stop
%% sending query logs to CloudWatch Logs, delete the query logging
%% configuration. For more information, see DeleteQueryLoggingConfig.
%%
%% </dd> </dl>
create_query_logging_config(Client, Input) ->
    create_query_logging_config(Client, Input, []).
create_query_logging_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/queryloggingconfig"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a delegation set (a group of four name servers) that can be
%% reused by multiple hosted zones that were created by the same Amazon Web
%% Services account.
%%
%% You can also create a reusable delegation set that uses the four name
%% servers that are associated with an existing hosted zone. Specify the
%% hosted zone ID in the `CreateReusableDelegationSet' request.
%%
%% You can't associate a reusable delegation set with a private hosted zone.
%%
%% For information about using a reusable delegation set to configure white
%% label name servers, see Configuring White Label Name Servers.
%%
%% The process for migrating existing hosted zones to use a reusable
%% delegation set is comparable to the process for configuring white label
%% name servers. You need to perform the following steps:
%%
%% <ol> <li> Create a reusable delegation set.
%%
%% </li> <li> Recreate hosted zones, and reduce the TTL to 60 seconds or
%% less.
%%
%% </li> <li> Recreate resource record sets in the new hosted zones.
%%
%% </li> <li> Change the registrar's name servers to use the name servers for
%% the new hosted zones.
%%
%% </li> <li> Monitor traffic for the website or application.
%%
%% </li> <li> Change TTLs back to their original values.
%%
%% </li> </ol> If you want to migrate existing hosted zones to use a reusable
%% delegation set, the existing hosted zones can't use any of the name
%% servers that are assigned to the reusable delegation set. If one or more
%% hosted zones do use one or more name servers that are assigned to the
%% reusable delegation set, you can do one of the following:
%%
%% <ul> <li> For small numbers of hosted zones—up to a few hundred—it's
%% relatively easy to create reusable delegation sets until you get one that
%% has four name servers that don't overlap with any of the name servers in
%% your hosted zones.
%%
%% </li> <li> For larger numbers of hosted zones, the easiest solution is to
%% use more than one reusable delegation set.
%%
%% </li> <li> For larger numbers of hosted zones, you can also migrate hosted
%% zones that have overlapping name servers to hosted zones that don't have
%% overlapping name servers, then migrate the hosted zones again to use the
%% reusable delegation set.
%%
%% </li> </ul>
create_reusable_delegation_set(Client, Input) ->
    create_reusable_delegation_set(Client, Input, []).
create_reusable_delegation_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/delegationset"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a traffic policy, which you use to create multiple DNS
%% resource record sets for one domain name (such as example.com) or one
%% subdomain name (such as www.example.com).
create_traffic_policy(Client, Input) ->
    create_traffic_policy(Client, Input, []).
create_traffic_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates resource record sets in a specified hosted zone based on the
%% settings in a specified traffic policy version.
%%
%% In addition, `CreateTrafficPolicyInstance' associates the resource record
%% sets with a specified domain name (such as example.com) or subdomain name
%% (such as www.example.com). Amazon Route 53 responds to DNS queries for the
%% domain or subdomain name by using the resource record sets that
%% `CreateTrafficPolicyInstance' created.
create_traffic_policy_instance(Client, Input) ->
    create_traffic_policy_instance(Client, Input, []).
create_traffic_policy_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new version of an existing traffic policy.
%%
%% When you create a new version of a traffic policy, you specify the ID of
%% the traffic policy that you want to update and a JSON-formatted document
%% that describes the new version. You use traffic policies to create
%% multiple DNS resource record sets for one domain name (such as
%% example.com) or one subdomain name (such as www.example.com). You can
%% create a maximum of 1000 versions of a traffic policy. If you reach the
%% limit and need to create another version, you'll need to start a new
%% traffic policy.
create_traffic_policy_version(Client, Id, Input) ->
    create_traffic_policy_version(Client, Id, Input, []).
create_traffic_policy_version(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Authorizes the Amazon Web Services account that created a specified
%% VPC to submit an `AssociateVPCWithHostedZone' request to associate the VPC
%% with a specified hosted zone that was created by a different account.
%%
%% To submit a `CreateVPCAssociationAuthorization' request, you must use the
%% account that created the hosted zone. After you authorize the association,
%% use the account that created the VPC to submit an
%% `AssociateVPCWithHostedZone' request.
%%
%% If you want to associate multiple VPCs that you created by using one
%% account with a hosted zone that you created by using a different account,
%% you must submit one authorization request for each VPC.
create_vpc_association_authorization(Client, HostedZoneId, Input) ->
    create_vpc_association_authorization(Client, HostedZoneId, Input, []).
create_vpc_association_authorization(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates a key-signing key (KSK) so that it will not be used for
%% signing by DNSSEC.
%%
%% This operation changes the KSK status to `INACTIVE'.
deactivate_key_signing_key(Client, HostedZoneId, Name, Input) ->
    deactivate_key_signing_key(Client, HostedZoneId, Name, Input, []).
deactivate_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), "/deactivate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CIDR collection in the current Amazon Web Services account.
%%
%% The collection must be empty before it can be deleted.
delete_cidr_collection(Client, Id, Input) ->
    delete_cidr_collection(Client, Id, Input, []).
delete_cidr_collection(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a health check.
%%
%% Amazon Route 53 does not prevent you from deleting a health check even if
%% the health check is associated with one or more resource record sets. If
%% you delete a health check and you don't update the associated resource
%% record sets, the future status of the health check can't be predicted and
%% may change. This will affect the routing of DNS queries for your DNS
%% failover configuration. For more information, see Replacing and Deleting
%% Health Checks in the Amazon Route 53 Developer Guide.
%%
%% If you're using Cloud Map and you configured Cloud Map to create a Route
%% 53 health check when you register an instance, you can't use the Route 53
%% `DeleteHealthCheck' command to delete the health check. The health check
%% is deleted automatically when you deregister the instance; there can be a
%% delay of several hours before the health check is deleted from Route 53.
delete_health_check(Client, HealthCheckId, Input) ->
    delete_health_check(Client, HealthCheckId, Input, []).
delete_health_check(Client, HealthCheckId, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a hosted zone.
%%
%% If the hosted zone was created by another service, such as Cloud Map, see
%% Deleting Public Hosted Zones That Were Created by Another Service in the
%% Amazon Route 53 Developer Guide for information about how to delete it.
%% (The process is the same for public and private hosted zones that were
%% created by another service.)
%%
%% If you want to keep your domain registration but you want to stop routing
%% internet traffic to your website or web application, we recommend that you
%% delete resource record sets in the hosted zone instead of deleting the
%% hosted zone.
%%
%% If you delete a hosted zone, you can't undelete it. You must create a new
%% hosted zone and update the name servers for your domain registration,
%% which can require up to 48 hours to take effect. (If you delegated
%% responsibility for a subdomain to a hosted zone and you delete the child
%% hosted zone, you must update the name servers in the parent hosted zone.)
%% In addition, if you delete a hosted zone, someone could hijack the domain
%% and route traffic to their own resources using your domain name.
%%
%% If you want to avoid the monthly charge for the hosted zone, you can
%% transfer DNS service for the domain to a free DNS service. When you
%% transfer DNS service, you have to update the name servers for the domain
%% registration. If the domain is registered with Route 53, see
%% UpdateDomainNameservers for information about how to replace Route 53 name
%% servers with name servers for the new DNS service. If the domain is
%% registered with another registrar, use the method provided by the
%% registrar to update name servers for the domain registration. For more
%% information, perform an internet search on "free DNS service."
%%
%% You can delete a hosted zone only if it contains only the default SOA
%% record and NS resource record sets. If the hosted zone contains other
%% resource record sets, you must delete them before you can delete the
%% hosted zone. If you try to delete a hosted zone that contains other
%% resource record sets, the request fails, and Route 53 returns a
%% `HostedZoneNotEmpty' error. For information about deleting records from
%% your hosted zone, see ChangeResourceRecordSets.
%%
%% To verify that the hosted zone has been deleted, do one of the following:
%%
%% <ul> <li> Use the `GetHostedZone' action to request information about the
%% hosted zone.
%%
%% </li> <li> Use the `ListHostedZones' action to get a list of the hosted
%% zones associated with the current Amazon Web Services account.
%%
%% </li> </ul>
delete_hosted_zone(Client, Id, Input) ->
    delete_hosted_zone(Client, Id, Input, []).
delete_hosted_zone(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a key-signing key (KSK).
%%
%% Before you can delete a KSK, you must deactivate it. The KSK must be
%% deactivated before you can delete it regardless of whether the hosted zone
%% is enabled for DNSSEC signing.
%%
%% You can use DeactivateKeySigningKey to deactivate the key before you
%% delete it.
%%
%% Use GetDNSSEC to verify that the KSK is in an `INACTIVE' status.
delete_key_signing_key(Client, HostedZoneId, Name, Input) ->
    delete_key_signing_key(Client, HostedZoneId, Name, Input, []).
delete_key_signing_key(Client, HostedZoneId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/keysigningkey/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a configuration for DNS query logging.
%%
%% If you delete a configuration, Amazon Route 53 stops sending query logs to
%% CloudWatch Logs. Route 53 doesn't delete any logs that are already in
%% CloudWatch Logs.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig.
delete_query_logging_config(Client, Id, Input) ->
    delete_query_logging_config(Client, Id, Input, []).
delete_query_logging_config(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/queryloggingconfig/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a reusable delegation set.
%%
%% You can delete a reusable delegation set only if it isn't associated with
%% any hosted zones.
%%
%% To verify that the reusable delegation set is not associated with any
%% hosted zones, submit a GetReusableDelegationSet request and specify the ID
%% of the reusable delegation set that you want to delete.
delete_reusable_delegation_set(Client, Id, Input) ->
    delete_reusable_delegation_set(Client, Id, Input, []).
delete_reusable_delegation_set(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/delegationset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy.
%%
%% When you delete a traffic policy, Route 53 sets a flag on the policy to
%% indicate that it has been deleted. However, Route 53 never fully deletes
%% the traffic policy. Note the following:
%%
%% <ul> <li> Deleted traffic policies aren't listed if you run
%% ListTrafficPolicies.
%%
%% </li> <li> There's no way to get a list of deleted policies.
%%
%% </li> <li> If you retain the ID of the policy, you can get information
%% about the policy, including the traffic policy document, by running
%% GetTrafficPolicy.
%%
%% </li> </ul>
delete_traffic_policy(Client, Id, Version, Input) ->
    delete_traffic_policy(Client, Id, Version, Input, []).
delete_traffic_policy(Client, Id, Version, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy instance and all of the resource record sets
%% that Amazon Route 53 created when you created the instance.
%%
%% In the Route 53 console, traffic policy instances are known as policy
%% records.
delete_traffic_policy_instance(Client, Id, Input) ->
    delete_traffic_policy_instance(Client, Id, Input, []).
delete_traffic_policy_instance(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes authorization to submit an `AssociateVPCWithHostedZone'
%% request to associate a specified VPC with a hosted zone that was created
%% by a different account.
%%
%% You must use the account that created the hosted zone to submit a
%% `DeleteVPCAssociationAuthorization' request.
%%
%% Sending this request only prevents the Amazon Web Services account that
%% created the VPC from associating the VPC with the Amazon Route 53 hosted
%% zone in the future. If the VPC is already associated with the hosted zone,
%% `DeleteVPCAssociationAuthorization' won't disassociate the VPC from the
%% hosted zone. If you want to delete an existing association, use
%% `DisassociateVPCFromHostedZone'.
delete_vpc_association_authorization(Client, HostedZoneId, Input) ->
    delete_vpc_association_authorization(Client, HostedZoneId, Input, []).
delete_vpc_association_authorization(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/deauthorizevpcassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables DNSSEC signing in a specific hosted zone.
%%
%% This action does not deactivate any key-signing keys (KSKs) that are
%% active in the hosted zone.
disable_hosted_zone_dns_sec(Client, HostedZoneId, Input) ->
    disable_hosted_zone_dns_sec(Client, HostedZoneId, Input, []).
disable_hosted_zone_dns_sec(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/disable-dnssec"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an
%% Amazon Route 53 private hosted zone.
%%
%% Note the following:
%%
%% <ul> <li> You can't disassociate the last Amazon VPC from a private hosted
%% zone.
%%
%% </li> <li> You can't convert a private hosted zone into a public hosted
%% zone.
%%
%% </li> <li> You can submit a `DisassociateVPCFromHostedZone' request using
%% either the account that created the hosted zone or the account that
%% created the Amazon VPC.
%%
%% </li> <li> Some services, such as Cloud Map and Amazon Elastic File System
%% (Amazon EFS) automatically create hosted zones and associate VPCs with the
%% hosted zones. A service can create a hosted zone using your account or
%% using its own account. You can disassociate a VPC from a hosted zone only
%% if the service created the hosted zone using your account.
%%
%% When you run DisassociateVPCFromHostedZone, if the hosted zone has a value
%% for `OwningAccount', you can use `DisassociateVPCFromHostedZone'. If the
%% hosted zone has a value for `OwningService', you can't use
%% `DisassociateVPCFromHostedZone'.
%%
%% </li> </ul> When revoking access, the hosted zone and the Amazon VPC must
%% belong to the same partition. A partition is a group of Amazon Web
%% Services Regions. Each Amazon Web Services account is scoped to one
%% partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management in the Amazon Web Services
%% General Reference.
disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input) ->
    disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input, []).
disassociate_vpc_from_hosted_zone(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/disassociatevpc"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables DNSSEC signing in a specific hosted zone.
enable_hosted_zone_dns_sec(Client, HostedZoneId, Input) ->
    enable_hosted_zone_dns_sec(Client, HostedZoneId, Input, []).
enable_hosted_zone_dns_sec(Client, HostedZoneId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/enable-dnssec"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified limit for the current account, for example, the
%% maximum number of health checks that you can create using the account.
%%
%% For the default limit, see Limits in the Amazon Route 53 Developer Guide.
%% To request a higher limit, open a case.
%%
%% You can also view account limits in Amazon Web Services Trusted Advisor.
%% Sign in to the Amazon Web Services Management Console and open the Trusted
%% Advisor console at https://console.aws.amazon.com/trustedadvisor/. Then
%% choose Service limits in the navigation pane.
get_account_limit(Client, Type)
  when is_map(Client) ->
    get_account_limit(Client, Type, #{}, #{}).

get_account_limit(Client, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_limit(Client, Type, QueryMap, HeadersMap, []).

get_account_limit(Client, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/accountlimit/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current status of a change batch request.
%%
%% The status is one of the following values:
%%
%% <ul> <li> `PENDING' indicates that the changes in this request have not
%% propagated to all Amazon Route 53 DNS servers. This is the initial status
%% of all change batch requests.
%%
%% </li> <li> `INSYNC' indicates that the changes have propagated to all
%% Route 53 DNS servers.
%%
%% </li> </ul>
get_change(Client, Id)
  when is_map(Client) ->
    get_change(Client, Id, #{}, #{}).

get_change(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_change(Client, Id, QueryMap, HeadersMap, []).

get_change(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/change/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Route 53 does not perform authorization for this API because it
%% retrieves information that is already available to the public.
%%
%% `GetCheckerIpRanges' still works, but we recommend that you download
%% ip-ranges.json, which includes IP address ranges for all Amazon Web
%% Services services. For more information, see IP Address Ranges of Amazon
%% Route 53 Servers in the Amazon Route 53 Developer Guide.
get_checker_ip_ranges(Client)
  when is_map(Client) ->
    get_checker_ip_ranges(Client, #{}, #{}).

get_checker_ip_ranges(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_checker_ip_ranges(Client, QueryMap, HeadersMap, []).

get_checker_ip_ranges(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/checkeripranges"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about DNSSEC for a specific hosted zone,
%% including the key-signing keys (KSKs) in the hosted zone.
get_dns_sec(Client, HostedZoneId)
  when is_map(Client) ->
    get_dns_sec(Client, HostedZoneId, #{}, #{}).

get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap, []).

get_dns_sec(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/dnssec"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about whether a specified geographic location is
%% supported for Amazon Route 53 geolocation resource record sets.
%%
%% Route 53 does not perform authorization for this API because it retrieves
%% information that is already available to the public.
%%
%% Use the following syntax to determine whether a continent is supported for
%% geolocation:
%%
%% `GET /2013-04-01/geolocation?continentcode=two-letter abbreviation for a
%% continent '
%%
%% Use the following syntax to determine whether a country is supported for
%% geolocation:
%%
%% `GET /2013-04-01/geolocation?countrycode=two-character country code '
%%
%% Use the following syntax to determine whether a subdivision of a country
%% is supported for geolocation:
%%
%% `GET /2013-04-01/geolocation?countrycode=two-character country
%% code&subdivisioncode=subdivision code '
get_geo_location(Client)
  when is_map(Client) ->
    get_geo_location(Client, #{}, #{}).

get_geo_location(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_geo_location(Client, QueryMap, HeadersMap, []).

get_geo_location(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/geolocation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"continentcode">>, maps:get(<<"continentcode">>, QueryMap, undefined)},
        {<<"countrycode">>, maps:get(<<"countrycode">>, QueryMap, undefined)},
        {<<"subdivisioncode">>, maps:get(<<"subdivisioncode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified health check.
get_health_check(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check(Client, HealthCheckId, #{}, #{}).

get_health_check(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check(Client, HealthCheckId, QueryMap, HeadersMap, []).

get_health_check(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of health checks that are associated with the
%% current Amazon Web Services account.
get_health_check_count(Client)
  when is_map(Client) ->
    get_health_check_count(Client, #{}, #{}).

get_health_check_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_count(Client, QueryMap, HeadersMap, []).

get_health_check_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheckcount"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the reason that a specified health check failed most recently.
get_health_check_last_failure_reason(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_last_failure_reason(Client, HealthCheckId, #{}, #{}).

get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap, []).

get_health_check_last_failure_reason(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), "/lastfailurereason"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets status of a specified health check.
%%
%% This API is intended for use during development to diagnose behavior. It
%% doesn’t support production use-cases with high query rates that require
%% immediate and actionable responses.
get_health_check_status(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_status(Client, HealthCheckId, #{}, #{}).

get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap, []).

get_health_check_status(Client, HealthCheckId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), "/status"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified hosted zone including the four
%% name servers assigned to the hosted zone.
get_hosted_zone(Client, Id)
  when is_map(Client) ->
    get_hosted_zone(Client, Id, #{}, #{}).

get_hosted_zone(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone(Client, Id, QueryMap, HeadersMap, []).

get_hosted_zone(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of hosted zones that are associated with the
%% current Amazon Web Services account.
get_hosted_zone_count(Client)
  when is_map(Client) ->
    get_hosted_zone_count(Client, #{}, #{}).

get_hosted_zone_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone_count(Client, QueryMap, HeadersMap, []).

get_hosted_zone_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonecount"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified limit for a specified hosted zone, for example,
%% the maximum number of records that you can create in the hosted zone.
%%
%% For the default limit, see Limits in the Amazon Route 53 Developer Guide.
%% To request a higher limit, open a case.
get_hosted_zone_limit(Client, HostedZoneId, Type)
  when is_map(Client) ->
    get_hosted_zone_limit(Client, HostedZoneId, Type, #{}, #{}).

get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap, []).

get_hosted_zone_limit(Client, HostedZoneId, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonelimit/", aws_util:encode_uri(HostedZoneId), "/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified configuration for DNS query
%% logging.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig
%% and Logging DNS Queries.
get_query_logging_config(Client, Id)
  when is_map(Client) ->
    get_query_logging_config(Client, Id, #{}, #{}).

get_query_logging_config(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_logging_config(Client, Id, QueryMap, HeadersMap, []).

get_query_logging_config(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/queryloggingconfig/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified reusable delegation set,
%% including the four name servers that are assigned to the delegation set.
get_reusable_delegation_set(Client, Id)
  when is_map(Client) ->
    get_reusable_delegation_set(Client, Id, #{}, #{}).

get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap, []).

get_reusable_delegation_set(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/delegationset/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the maximum number of hosted zones that you can associate with
%% the specified reusable delegation set.
%%
%% For the default limit, see Limits in the Amazon Route 53 Developer Guide.
%% To request a higher limit, open a case.
get_reusable_delegation_set_limit(Client, DelegationSetId, Type)
  when is_map(Client) ->
    get_reusable_delegation_set_limit(Client, DelegationSetId, Type, #{}, #{}).

get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap, []).

get_reusable_delegation_set_limit(Client, DelegationSetId, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/reusabledelegationsetlimit/", aws_util:encode_uri(DelegationSetId), "/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific traffic policy version.
%%
%% For information about how of deleting a traffic policy affects the
%% response from `GetTrafficPolicy', see DeleteTrafficPolicy.
get_traffic_policy(Client, Id, Version)
  when is_map(Client) ->
    get_traffic_policy(Client, Id, Version, #{}, #{}).

get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap, []).

get_traffic_policy(Client, Id, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified traffic policy instance.
%%
%% After you submit a `CreateTrafficPolicyInstance' or an
%% `UpdateTrafficPolicyInstance' request, there's a brief delay while Amazon
%% Route 53 creates the resource record sets that are specified in the
%% traffic policy definition. For more information, see the `State' response
%% element.
%%
%% In the Route 53 console, traffic policy instances are known as policy
%% records.
get_traffic_policy_instance(Client, Id)
  when is_map(Client) ->
    get_traffic_policy_instance(Client, Id, #{}, #{}).

get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap, []).

get_traffic_policy_instance(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the number of traffic policy instances that are associated with
%% the current Amazon Web Services account.
get_traffic_policy_instance_count(Client)
  when is_map(Client) ->
    get_traffic_policy_instance_count(Client, #{}, #{}).

get_traffic_policy_instance_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_traffic_policy_instance_count(Client, QueryMap, HeadersMap, []).

get_traffic_policy_instance_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstancecount"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of location objects and their CIDR blocks.
list_cidr_blocks(Client, CollectionId)
  when is_map(Client) ->
    list_cidr_blocks(Client, CollectionId, #{}, #{}).

list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap, []).

list_cidr_blocks(Client, CollectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(CollectionId), "/cidrblocks"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"location">>, maps:get(<<"location">>, QueryMap, undefined)},
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of CIDR collections in the Amazon Web
%% Services account (metadata only).
list_cidr_collections(Client)
  when is_map(Client) ->
    list_cidr_collections(Client, #{}, #{}).

list_cidr_collections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_collections(Client, QueryMap, HeadersMap, []).

list_cidr_collections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of CIDR locations for the given collection
%% (metadata only, does not include CIDR blocks).
list_cidr_locations(Client, CollectionId)
  when is_map(Client) ->
    list_cidr_locations(Client, CollectionId, #{}, #{}).

list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap, []).

list_cidr_locations(Client, CollectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/cidrcollection/", aws_util:encode_uri(CollectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of supported geographic locations.
%%
%% Countries are listed first, and continents are listed last. If Amazon
%% Route 53 supports subdivisions for a country (for example, states or
%% provinces), the subdivisions for that country are listed in alphabetical
%% order immediately after the corresponding country.
%%
%% Route 53 does not perform authorization for this API because it retrieves
%% information that is already available to the public.
%%
%% For a list of supported geolocation codes, see the GeoLocation data type.
list_geo_locations(Client)
  when is_map(Client) ->
    list_geo_locations(Client, #{}, #{}).

list_geo_locations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_geo_locations(Client, QueryMap, HeadersMap, []).

list_geo_locations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/geolocations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"startcontinentcode">>, maps:get(<<"startcontinentcode">>, QueryMap, undefined)},
        {<<"startcountrycode">>, maps:get(<<"startcountrycode">>, QueryMap, undefined)},
        {<<"startsubdivisioncode">>, maps:get(<<"startsubdivisioncode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the health checks that are associated with the
%% current Amazon Web Services account.
list_health_checks(Client)
  when is_map(Client) ->
    list_health_checks(Client, #{}, #{}).

list_health_checks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_health_checks(Client, QueryMap, HeadersMap, []).

list_health_checks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/healthcheck"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the public and private hosted zones that are
%% associated with the current Amazon Web Services account.
%%
%% The response includes a `HostedZones' child element for each hosted zone.
%%
%% Amazon Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of hosted zones, you can use the `maxitems' parameter to list
%% them in groups of up to 100.
list_hosted_zones(Client)
  when is_map(Client) ->
    list_hosted_zones(Client, #{}, #{}).

list_hosted_zones(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones(Client, QueryMap, HeadersMap, []).

list_hosted_zones(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"delegationsetid">>, maps:get(<<"delegationsetid">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of your hosted zones in lexicographic order.
%%
%% The response includes a `HostedZones' child element for each hosted zone
%% created by the current Amazon Web Services account.
%%
%% `ListHostedZonesByName' sorts hosted zones by name with the labels
%% reversed. For example:
%%
%% `com.example.www.'
%%
%% Note the trailing dot, which can change the sort order in some
%% circumstances.
%%
%% If the domain name includes escape characters or Punycode,
%% `ListHostedZonesByName' alphabetizes the domain name using the escaped or
%% Punycoded value, which is the format that Amazon Route 53 saves in its
%% database. For example, to create a hosted zone for exämple.com, you
%% specify ex\344mple.com for the domain name. `ListHostedZonesByName'
%% alphabetizes it as:
%%
%% `com.ex\344mple.'
%%
%% The labels are reversed and alphabetized using the escaped value. For more
%% information about valid domain name formats, including internationalized
%% domain names, see DNS Domain Name Format in the Amazon Route 53 Developer
%% Guide.
%%
%% Route 53 returns up to 100 items in each response. If you have a lot of
%% hosted zones, use the `MaxItems' parameter to list them in groups of up to
%% 100. The response includes values that help navigate from one group of
%% `MaxItems' hosted zones to the next:
%%
%% <ul> <li> The `DNSName' and `HostedZoneId' elements in the response
%% contain the values, if any, specified for the `dnsname' and `hostedzoneid'
%% parameters in the request that produced the current response.
%%
%% </li> <li> The `MaxItems' element in the response contains the value, if
%% any, that you specified for the `maxitems' parameter in the request that
%% produced the current response.
%%
%% </li> <li> If the value of `IsTruncated' in the response is true, there
%% are more hosted zones associated with the current Amazon Web Services
%% account.
%%
%% If `IsTruncated' is false, this response includes the last hosted zone
%% that is associated with the current account. The `NextDNSName' element and
%% `NextHostedZoneId' elements are omitted from the response.
%%
%% </li> <li> The `NextDNSName' and `NextHostedZoneId' elements in the
%% response contain the domain name and the hosted zone ID of the next hosted
%% zone that is associated with the current Amazon Web Services account. If
%% you want to list more hosted zones, make another call to
%% `ListHostedZonesByName', and specify the value of `NextDNSName' and
%% `NextHostedZoneId' in the `dnsname' and `hostedzoneid' parameters,
%% respectively.
%%
%% </li> </ul>
list_hosted_zones_by_name(Client)
  when is_map(Client) ->
    list_hosted_zones_by_name(Client, #{}, #{}).

list_hosted_zones_by_name(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones_by_name(Client, QueryMap, HeadersMap, []).

list_hosted_zones_by_name(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonesbyname"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dnsname">>, maps:get(<<"dnsname">>, QueryMap, undefined)},
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the private hosted zones that a specified VPC is associated
%% with, regardless of which Amazon Web Services account or Amazon Web
%% Services service owns the hosted zones.
%%
%% The `HostedZoneOwner' structure in the response contains one of the
%% following values:
%%
%% <ul> <li> An `OwningAccount' element, which contains the account number of
%% either the current Amazon Web Services account or another Amazon Web
%% Services account. Some services, such as Cloud Map, create hosted zones
%% using the current account.
%%
%% </li> <li> An `OwningService' element, which identifies the Amazon Web
%% Services service that created and owns the hosted zone. For example, if a
%% hosted zone was created by Amazon Elastic File System (Amazon EFS), the
%% value of `Owner' is `efs.amazonaws.com'.
%%
%% </li> </ul> When listing private hosted zones, the hosted zone and the
%% Amazon VPC must belong to the same partition where the hosted zones were
%% created. A partition is a group of Amazon Web Services Regions. Each
%% Amazon Web Services account is scoped to one partition.
%%
%% The following are the supported partitions:
%%
%% `aws' - Amazon Web Services Regions
%%
%% `aws-cn' - China Regions
%%
%% `aws-us-gov' - Amazon Web Services GovCloud (US) Region
%%
%% For more information, see Access Management in the Amazon Web Services
%% General Reference.
list_hosted_zones_by_vpc(Client, VPCId, VPCRegion)
  when is_map(Client) ->
    list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, #{}, #{}).

list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap, []).

list_hosted_zones_by_vpc(Client, VPCId, VPCRegion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzonesbyvpc"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)},
        {<<"vpcid">>, VPCId},
        {<<"vpcregion">>, VPCRegion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the configurations for DNS query logging that are associated
%% with the current Amazon Web Services account or the configuration that is
%% associated with a specified hosted zone.
%%
%% For more information about DNS query logs, see CreateQueryLoggingConfig.
%% Additional information, including the format of DNS query logs, appears in
%% Logging DNS Queries in the Amazon Route 53 Developer Guide.
list_query_logging_configs(Client)
  when is_map(Client) ->
    list_query_logging_configs(Client, #{}, #{}).

list_query_logging_configs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_query_logging_configs(Client, QueryMap, HeadersMap, []).

list_query_logging_configs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/queryloggingconfig"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource record sets in a specified hosted zone.
%%
%% `ListResourceRecordSets' returns up to 300 resource record sets at a time
%% in ASCII order, beginning at a position specified by the `name' and `type'
%% elements.
%%
%% Sort order
%%
%% `ListResourceRecordSets' sorts results first by DNS name with the labels
%% reversed, for example:
%%
%% `com.example.www.'
%%
%% Note the trailing dot, which can change the sort order when the record
%% name contains characters that appear before `.' (decimal 46) in the ASCII
%% table. These characters include the following: `! " # $ % & ' ( ) * + , -'
%%
%% When multiple records have the same DNS name, `ListResourceRecordSets'
%% sorts results by the record type.
%%
%% Specifying where to start listing records
%%
%% You can use the name and type elements to specify the resource record set
%% that the list begins with:
%%
%% <dl> <dt>If you do not specify Name or Type</dt> <dd> The results begin
%% with the first resource record set that the hosted zone contains.
%%
%% </dd> <dt>If you specify Name but not Type</dt> <dd> The results begin
%% with the first resource record set in the list whose name is greater than
%% or equal to `Name'.
%%
%% </dd> <dt>If you specify Type but not Name</dt> <dd> Amazon Route 53
%% returns the `InvalidInput' error.
%%
%% </dd> <dt>If you specify both Name and Type</dt> <dd> The results begin
%% with the first resource record set in the list whose name is greater than
%% or equal to `Name', and whose type is greater than or equal to `Type'.
%%
%% </dd> </dl> Resource record sets that are PENDING
%%
%% This action returns the most current version of the records. This includes
%% records that are `PENDING', and that are not yet available on all Route 53
%% DNS servers.
%%
%% Changing resource record sets
%%
%% To ensure that you get an accurate listing of the resource record sets for
%% a hosted zone at a point in time, do not submit a
%% `ChangeResourceRecordSets' request while you're paging through the results
%% of a `ListResourceRecordSets' request. If you do, some pages may display
%% results without the latest changes while other pages display results with
%% the latest changes.
%%
%% Displaying the next page of results
%%
%% If a `ListResourceRecordSets' command returns more than one page of
%% results, the value of `IsTruncated' is `true'. To display the next page of
%% results, get the values of `NextRecordName', `NextRecordType', and
%% `NextRecordIdentifier' (if any) from the response. Then submit another
%% `ListResourceRecordSets' request, and specify those values for
%% `StartRecordName', `StartRecordType', and `StartRecordIdentifier'.
list_resource_record_sets(Client, HostedZoneId)
  when is_map(Client) ->
    list_resource_record_sets(Client, HostedZoneId, #{}, #{}).

list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap, []).

list_resource_record_sets(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/rrset"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"identifier">>, maps:get(<<"identifier">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the reusable delegation sets that are associated
%% with the current Amazon Web Services account.
list_reusable_delegation_sets(Client)
  when is_map(Client) ->
    list_reusable_delegation_sets(Client, #{}, #{}).

list_reusable_delegation_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reusable_delegation_sets(Client, QueryMap, HeadersMap, []).

list_reusable_delegation_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/delegationset"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for one health check or hosted zone.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation Tags in the Billing and Cost Management User Guide.
list_tags_for_resource(Client, ResourceId, ResourceType)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, ResourceType, #{}, #{}).

list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceId, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for up to 10 health checks or hosted zones.
%%
%% For information about using tags for cost allocation, see Using Cost
%% Allocation Tags in the Billing and Cost Management User Guide.
list_tags_for_resources(Client, ResourceType, Input) ->
    list_tags_for_resources(Client, ResourceType, Input, []).
list_tags_for_resources(Client, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/tags/", aws_util:encode_uri(ResourceType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the latest version for every traffic policy
%% that is associated with the current Amazon Web Services account.
%%
%% Policies are listed in the order that they were created in.
%%
%% For information about how of deleting a traffic policy affects the
%% response from `ListTrafficPolicies', see DeleteTrafficPolicy.
list_traffic_policies(Client)
  when is_map(Client) ->
    list_traffic_policies(Client, #{}, #{}).

list_traffic_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policies(Client, QueryMap, HeadersMap, []).

list_traffic_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyid">>, maps:get(<<"trafficpolicyid">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using the current Amazon Web Services account.
%%
%% After you submit an `UpdateTrafficPolicyInstance' request, there's a brief
%% delay while Amazon Route 53 creates the resource record sets that are
%% specified in the traffic policy definition. For more information, see the
%% `State' response element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic policy instances, you can use the `MaxItems' parameter to
%% list them in groups of up to 100.
list_traffic_policy_instances(Client)
  when is_map(Client) ->
    list_traffic_policy_instances(Client, #{}, #{}).

list_traffic_policy_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances(Client, QueryMap, HeadersMap, []).

list_traffic_policy_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% in a specified hosted zone.
%%
%% After you submit a `CreateTrafficPolicyInstance' or an
%% `UpdateTrafficPolicyInstance' request, there's a brief delay while Amazon
%% Route 53 creates the resource record sets that are specified in the
%% traffic policy definition. For more information, see the `State' response
%% element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic policy instances, you can use the `MaxItems' parameter to
%% list them in groups of up to 100.
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId)
  when is_map(Client) ->
    list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, #{}, #{}).

list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap, []).

list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances/hostedzone"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, HostedZoneId},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using a specify traffic policy version.
%%
%% After you submit a `CreateTrafficPolicyInstance' or an
%% `UpdateTrafficPolicyInstance' request, there's a brief delay while Amazon
%% Route 53 creates the resource record sets that are specified in the
%% traffic policy definition. For more information, see the `State' response
%% element.
%%
%% Route 53 returns a maximum of 100 items in each response. If you have a
%% lot of traffic policy instances, you can use the `MaxItems' parameter to
%% list them in groups of up to 100.
list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion)
  when is_map(Client) ->
    list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, #{}, #{}).

list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap, []).

list_traffic_policy_instances_by_policy(Client, TrafficPolicyId, TrafficPolicyVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicyinstances/trafficpolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, maps:get(<<"hostedzoneid">>, QueryMap, undefined)},
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"id">>, TrafficPolicyId},
        {<<"trafficpolicyinstancename">>, maps:get(<<"trafficpolicyinstancename">>, QueryMap, undefined)},
        {<<"trafficpolicyinstancetype">>, maps:get(<<"trafficpolicyinstancetype">>, QueryMap, undefined)},
        {<<"version">>, TrafficPolicyVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions for a specified traffic
%% policy.
%%
%% Traffic policy versions are listed in numerical order by `VersionNumber'.
list_traffic_policy_versions(Client, Id)
  when is_map(Client) ->
    list_traffic_policy_versions(Client, Id, #{}, #{}).

list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap, []).

list_traffic_policy_versions(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/trafficpolicies/", aws_util:encode_uri(Id), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, maps:get(<<"maxitems">>, QueryMap, undefined)},
        {<<"trafficpolicyversion">>, maps:get(<<"trafficpolicyversion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the VPCs that were created by other accounts and that
%% can be associated with a specified hosted zone because you've submitted
%% one or more `CreateVPCAssociationAuthorization' requests.
%%
%% The response includes a `VPCs' element with a `VPC' child element for each
%% VPC that can be associated with the hosted zone.
list_vpc_association_authorizations(Client, HostedZoneId)
  when is_map(Client) ->
    list_vpc_association_authorizations(Client, HostedZoneId, #{}, #{}).

list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap, []).

list_vpc_association_authorizations(Client, HostedZoneId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, maps:get(<<"maxresults">>, QueryMap, undefined)},
        {<<"nexttoken">>, maps:get(<<"nexttoken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the value that Amazon Route 53 returns in response to a DNS
%% request for a specified record name and type.
%%
%% You can optionally specify the IP address of a DNS resolver, an EDNS0
%% client subnet IP address, and a subnet mask.
%%
%% This call only supports querying public hosted zones.
test_dns_answer(Client, HostedZoneId, RecordName, RecordType)
  when is_map(Client) ->
    test_dns_answer(Client, HostedZoneId, RecordName, RecordType, #{}, #{}).

test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap, []).

test_dns_answer(Client, HostedZoneId, RecordName, RecordType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-04-01/testdnsanswer"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"edns0clientsubnetip">>, maps:get(<<"edns0clientsubnetip">>, QueryMap, undefined)},
        {<<"edns0clientsubnetmask">>, maps:get(<<"edns0clientsubnetmask">>, QueryMap, undefined)},
        {<<"hostedzoneid">>, HostedZoneId},
        {<<"recordname">>, RecordName},
        {<<"recordtype">>, RecordType},
        {<<"resolverip">>, maps:get(<<"resolverip">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an existing health check.
%%
%% Note that some values can't be updated.
%%
%% For more information about updating health checks, see Creating, Updating,
%% and Deleting Health Checks in the Amazon Route 53 Developer Guide.
update_health_check(Client, HealthCheckId, Input) ->
    update_health_check(Client, HealthCheckId, Input, []).
update_health_check(Client, HealthCheckId, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck/", aws_util:encode_uri(HealthCheckId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified hosted zone.
update_hosted_zone_comment(Client, Id, Input) ->
    update_hosted_zone_comment(Client, Id, Input, []).
update_hosted_zone_comment(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified traffic policy version.
update_traffic_policy_comment(Client, Id, Version, Input) ->
    update_traffic_policy_comment(Client, Id, Version, Input, []).
update_traffic_policy_comment(Client, Id, Version, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", aws_util:encode_uri(Id), "/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource record sets in a specified hosted zone that were
%% created based on the settings in a specified traffic policy version.
%%
%% When you update a traffic policy instance, Amazon Route 53 continues to
%% respond to DNS queries for the root resource record set name (such as
%% example.com) while it replaces one group of resource record sets with
%% another. Route 53 performs the following operations:
%%
%% <ol> <li> Route 53 creates a new group of resource record sets based on
%% the specified traffic policy. This is true regardless of how significant
%% the differences are between the existing resource record sets and the new
%% resource record sets.
%%
%% </li> <li> When all of the new resource record sets have been created,
%% Route 53 starts to respond to DNS queries for the root resource record set
%% name (such as example.com) by using the new resource record sets.
%%
%% </li> <li> Route 53 deletes the old group of resource record sets that are
%% associated with the root resource record set name.
%%
%% </li> </ol>
update_traffic_policy_instance(Client, Id, Input) ->
    update_traffic_policy_instance(Client, Id, Input, []).
update_traffic_policy_instance(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"route53">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"route53">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"text/xml">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> aws_util:decode_xml(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
