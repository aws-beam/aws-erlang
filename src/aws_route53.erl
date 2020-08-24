%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 is a highly available and scalable Domain Name System
%% (DNS) web service.
-module(aws_route53).

-export([associate_v_p_c_with_hosted_zone/3,
         associate_v_p_c_with_hosted_zone/4,
         change_resource_record_sets/3,
         change_resource_record_sets/4,
         change_tags_for_resource/4,
         change_tags_for_resource/5,
         create_health_check/2,
         create_health_check/3,
         create_hosted_zone/2,
         create_hosted_zone/3,
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
         create_v_p_c_association_authorization/3,
         create_v_p_c_association_authorization/4,
         delete_health_check/3,
         delete_health_check/4,
         delete_hosted_zone/3,
         delete_hosted_zone/4,
         delete_query_logging_config/3,
         delete_query_logging_config/4,
         delete_reusable_delegation_set/3,
         delete_reusable_delegation_set/4,
         delete_traffic_policy/4,
         delete_traffic_policy/5,
         delete_traffic_policy_instance/3,
         delete_traffic_policy_instance/4,
         delete_v_p_c_association_authorization/3,
         delete_v_p_c_association_authorization/4,
         disassociate_v_p_c_from_hosted_zone/3,
         disassociate_v_p_c_from_hosted_zone/4,
         get_account_limit/2,
         get_account_limit/3,
         get_change/2,
         get_change/3,
         get_checker_ip_ranges/1,
         get_checker_ip_ranges/2,
         get_geo_location/4,
         get_geo_location/5,
         get_health_check/2,
         get_health_check/3,
         get_health_check_count/1,
         get_health_check_count/2,
         get_health_check_last_failure_reason/2,
         get_health_check_last_failure_reason/3,
         get_health_check_status/2,
         get_health_check_status/3,
         get_hosted_zone/2,
         get_hosted_zone/3,
         get_hosted_zone_count/1,
         get_hosted_zone_count/2,
         get_hosted_zone_limit/3,
         get_hosted_zone_limit/4,
         get_query_logging_config/2,
         get_query_logging_config/3,
         get_reusable_delegation_set/2,
         get_reusable_delegation_set/3,
         get_reusable_delegation_set_limit/3,
         get_reusable_delegation_set_limit/4,
         get_traffic_policy/3,
         get_traffic_policy/4,
         get_traffic_policy_instance/2,
         get_traffic_policy_instance/3,
         get_traffic_policy_instance_count/1,
         get_traffic_policy_instance_count/2,
         list_geo_locations/5,
         list_geo_locations/6,
         list_health_checks/3,
         list_health_checks/4,
         list_hosted_zones/4,
         list_hosted_zones/5,
         list_hosted_zones_by_name/4,
         list_hosted_zones_by_name/5,
         list_hosted_zones_by_v_p_c/5,
         list_hosted_zones_by_v_p_c/6,
         list_query_logging_configs/4,
         list_query_logging_configs/5,
         list_resource_record_sets/6,
         list_resource_record_sets/7,
         list_reusable_delegation_sets/3,
         list_reusable_delegation_sets/4,
         list_tags_for_resource/3,
         list_tags_for_resource/4,
         list_tags_for_resources/3,
         list_tags_for_resources/4,
         list_traffic_policies/3,
         list_traffic_policies/4,
         list_traffic_policy_instances/5,
         list_traffic_policy_instances/6,
         list_traffic_policy_instances_by_hosted_zone/5,
         list_traffic_policy_instances_by_hosted_zone/6,
         list_traffic_policy_instances_by_policy/7,
         list_traffic_policy_instances_by_policy/8,
         list_traffic_policy_versions/4,
         list_traffic_policy_versions/5,
         list_v_p_c_association_authorizations/4,
         list_v_p_c_association_authorizations/5,
         test_d_n_s_answer/7,
         test_d_n_s_answer/8,
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

%% @doc Associates an Amazon VPC with a private hosted zone.
%%
%% <note> To perform the association, the VPC and the private hosted zone
%% must already exist. Also, you can't convert a public hosted zone into a
%% private hosted zone.
%%
%% </note> If you want to associate a VPC that was created by one AWS account
%% with a private hosted zone that was created by a different account, do one
%% of the following:
%%
%% <ul> <li> Use the AWS account that created the private hosted zone to
%% submit a <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateVPCAssociationAuthorization.html">CreateVPCAssociationAuthorization</a>
%% request. Then use the account that created the VPC to submit an
%% <code>AssociateVPCWithHostedZone</code> request.
%%
%% </li> <li> If a subnet in the VPC was shared with another account, you can
%% use the account that the subnet was shared with to submit an
%% <code>AssociateVPCWithHostedZone</code> request. For more information
%% about sharing subnets, see <a
%% href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">Working
%% with Shared VPCs</a>.
%%
%% </li> </ul>
associate_v_p_c_with_hosted_zone(Client, HostedZoneId, Input) ->
    associate_v_p_c_with_hosted_zone(Client, HostedZoneId, Input, []).
associate_v_p_c_with_hosted_zone(Client, HostedZoneId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/associatevpc"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates, changes, or deletes a resource record set, which contains
%% authoritative DNS information for a specified domain name or subdomain
%% name. For example, you can use <code>ChangeResourceRecordSets</code> to
%% create a resource record set that routes traffic for test.example.com to a
%% web server that has an IP address of 192.0.2.44.
%%
%% <b>Deleting Resource Record Sets</b>
%%
%% To delete a resource record set, you must specify all the same values that
%% you specified when you created it.
%%
%% <b>Change Batches and Transactional Changes</b>
%%
%% The request body must include a document with a
%% <code>ChangeResourceRecordSetsRequest</code> element. The request body
%% contains a list of change items, known as a change batch. Change batches
%% are considered transactional changes. Route 53 validates the changes in
%% the request and then either makes all or none of the changes in the change
%% batch request. This ensures that DNS routing isn't adversely affected by
%% partial changes to the resource record sets in a hosted zone.
%%
%% For example, suppose a change batch request contains two changes: it
%% deletes the <code>CNAME</code> resource record set for www.example.com and
%% creates an alias resource record set for www.example.com. If validation
%% for both records succeeds, Route 53 deletes the first resource record set
%% and creates the second resource record set in a single operation. If
%% validation for either the <code>DELETE</code> or the <code>CREATE</code>
%% action fails, then the request is canceled, and the original
%% <code>CNAME</code> record continues to exist.
%%
%% <note> If you try to delete the same resource record set more than once in
%% a single change batch, Route 53 returns an <code>InvalidChangeBatch</code>
%% error.
%%
%% </note> <b>Traffic Flow</b>
%%
%% To create resource record sets for complex routing configurations, use
%% either the traffic flow visual editor in the Route 53 console or the API
%% actions for traffic policies and traffic policy instances. Save the
%% configuration as a traffic policy, then associate the traffic policy with
%% one or more domain names (such as example.com) or subdomain names (such as
%% www.example.com), in the same hosted zone or in multiple hosted zones. You
%% can roll back the updates if the new configuration isn't performing as
%% expected. For more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html">Using
%% Traffic Flow to Route DNS Traffic</a> in the <i>Amazon Route 53 Developer
%% Guide</i>.
%%
%% <b>Create, Delete, and Upsert</b>
%%
%% Use <code>ChangeResourceRecordsSetsRequest</code> to perform the following
%% actions:
%%
%% <ul> <li> <code>CREATE</code>: Creates a resource record set that has the
%% specified values.
%%
%% </li> <li> <code>DELETE</code>: Deletes an existing resource record set
%% that has the specified values.
%%
%% </li> <li> <code>UPSERT</code>: If a resource record set does not already
%% exist, AWS creates it. If a resource set does exist, Route 53 updates it
%% with the values in the request.
%%
%% </li> </ul> <b>Syntaxes for Creating, Updating, and Deleting Resource
%% Record Sets</b>
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
%% you can create, delete, or update by using
%% <code>ChangeResourceRecordSets</code>.
%%
%% <b>Change Propagation to Route 53 DNS Servers</b>
%%
%% When you submit a <code>ChangeResourceRecordSets</code> request, Route 53
%% propagates your changes to all of the Route 53 authoritative DNS servers.
%% While your changes are propagating, <code>GetChange</code> returns a
%% status of <code>PENDING</code>. When propagation is complete,
%% <code>GetChange</code> returns a status of <code>INSYNC</code>. Changes
%% generally propagate to all Route 53 name servers within 60 seconds. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html">GetChange</a>.
%%
%% <b>Limits on ChangeResourceRecordSets Requests</b>
%%
%% For information about the limits on a
%% <code>ChangeResourceRecordSets</code> request, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a>
%% in the <i>Amazon Route 53 Developer Guide</i>.
change_resource_record_sets(Client, HostedZoneId, Input) ->
    change_resource_record_sets(Client, HostedZoneId, Input, []).
change_resource_record_sets(Client, HostedZoneId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/rrset/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds, edits, or deletes tags for a health check or a hosted zone.
%%
%% For information about using tags for cost allocation, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
%% Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>.
change_tags_for_resource(Client, ResourceId, ResourceType, Input) ->
    change_tags_for_resource(Client, ResourceId, ResourceType, Input, []).
change_tags_for_resource(Client, ResourceId, ResourceType, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/tags/", http_uri:encode(ResourceType), "/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new health check.
%%
%% For information about adding health checks to resource record sets, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId">HealthCheckId</a>
%% in <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>.
%%
%% <b>ELB Load Balancers</b>
%%
%% If you're registering EC2 instances with an Elastic Load Balancing (ELB)
%% load balancer, do not create Amazon Route 53 health checks for the EC2
%% instances. When you register an EC2 instance with a load balancer, you
%% configure settings for an ELB health check, which performs a similar
%% function to a Route 53 health check.
%%
%% <b>Private Hosted Zones</b>
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
%% status of the Amazon EC2 <code>StatusCheckFailed</code> metric, add an
%% alarm to the metric, and then create a health check that is based on the
%% state of the alarm. For information about creating CloudWatch metrics and
%% alarms by using the CloudWatch console, see the <a
%% href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html">Amazon
%% CloudWatch User Guide</a>.
%%
%% </li> </ul>
create_health_check(Client, Input) ->
    create_health_check(Client, Input, []).
create_health_check(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a new public or private hosted zone. You create records in a
%% public hosted zone to define how you want to route traffic on the internet
%% for a domain, such as example.com, and its subdomains (apex.example.com,
%% acme.example.com). You create records in a private hosted zone to define
%% how you want to route traffic for a domain and its subdomains within one
%% or more Amazon Virtual Private Clouds (Amazon VPCs).
%%
%% <important> You can't convert a public hosted zone to a private hosted
%% zone or vice versa. Instead, you must create a new hosted zone with the
%% same name and create new resource record sets.
%%
%% </important> For more information about charges for hosted zones, see <a
%% href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.
%%
%% Note the following:
%%
%% <ul> <li> You can't create a hosted zone for a top-level domain (TLD) such
%% as .com.
%%
%% </li> <li> For public hosted zones, Route 53 automatically creates a
%% default SOA record and four NS records for the zone. For more information
%% about SOA and NS records, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html">NS
%% and SOA Records that Route 53 Creates for a Hosted Zone</a> in the
%% <i>Amazon Route 53 Developer Guide</i>.
%%
%% If you want to use the same name servers for multiple public hosted zones,
%% you can optionally associate a reusable delegation set with the hosted
%% zone. See the <code>DelegationSetId</code> element.
%%
%% </li> <li> If your domain is registered with a registrar other than Route
%% 53, you must update the name servers with your registrar to make Route 53
%% the DNS service for the domain. For more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html">Migrating
%% DNS Service for an Existing Domain to Amazon Route 53</a> in the <i>Amazon
%% Route 53 Developer Guide</i>.
%%
%% </li> </ul> When you submit a <code>CreateHostedZone</code> request, the
%% initial status of the hosted zone is <code>PENDING</code>. For public
%% hosted zones, this means that the NS and SOA records are not yet available
%% on all Route 53 DNS servers. When the NS and SOA records are available,
%% the status of the zone changes to <code>INSYNC</code>.
create_hosted_zone(Client, Input) ->
    create_hosted_zone(Client, Input, []).
create_hosted_zone(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a configuration for DNS query logging. After you create a
%% query logging configuration, Amazon Route 53 begins to publish log data to
%% an Amazon CloudWatch Logs log group.
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
%% </li> <li> DNS response code, such as <code>NoError</code> or
%% <code>ServFail</code>
%%
%% </li> </ul> <dl> <dt>Log Group and Resource Policy</dt> <dd> Before you
%% create a query logging configuration, perform the following operations.
%%
%% <note> If you create a query logging configuration using the Route 53
%% console, Route 53 performs these operations automatically.
%%
%% </note> <ol> <li> Create a CloudWatch Logs log group, and make note of the
%% ARN, which you specify when you create a query logging configuration. Note
%% the following:
%%
%% <ul> <li> You must create the log group in the us-east-1 region.
%%
%% </li> <li> You must use the same AWS account to create the log group and
%% the hosted zone that you want to configure query logging for.
%%
%% </li> <li> When you create log groups for query logging, we recommend that
%% you use a consistent prefix, for example:
%%
%% <code>/aws/route53/<i>hosted zone name</i> </code>
%%
%% In the next step, you'll create a resource policy, which controls access
%% to one or more log groups and the associated AWS resources, such as Route
%% 53 hosted zones. There's a limit on the number of resource policies that
%% you can create, so we recommend that you use a consistent prefix so you
%% can use the same resource policy for all the log groups that you create
%% for query logging.
%%
%% </li> </ul> </li> <li> Create a CloudWatch Logs resource policy, and give
%% it the permissions that Route 53 needs to create log streams and to send
%% query logs to log streams. For the value of <code>Resource</code>, specify
%% the ARN for the log group that you created in the previous step. To use
%% the same resource policy for all the CloudWatch Logs log groups that you
%% created for query logging configurations, replace the hosted zone name
%% with <code>*</code>, for example:
%%
%% <code>arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*</code>
%%
%% <note> You can't use the CloudWatch console to create or edit a resource
%% policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS
%% CLI.
%%
%% </note> </li> </ol> </dd> <dt>Log Streams and Edge Locations</dt> <dd>
%% When Route 53 finishes creating the configuration for DNS query logging,
%% it does the following:
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
%% <code> <i>hosted zone ID</i>/<i>edge location code</i> </code>
%%
%% The edge location code is a three-letter code and an arbitrarily assigned
%% number, for example, DFW3. The three-letter code typically corresponds
%% with the International Air Transport Association airport code for an
%% airport near the edge location. (These abbreviations might change in the
%% future.) For a list of edge locations, see "The Route 53 Global Network"
%% on the <a href="http://aws.amazon.com/route53/details/">Route 53 Product
%% Details</a> page.
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
%% DNS. For more information about how DNS works, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html">Routing
%% Internet Traffic to Your Website or Web Application</a> in the <i>Amazon
%% Route 53 Developer Guide</i>.
%%
%% </dd> <dt>Log File Format</dt> <dd> For a list of the values in each query
%% log and the format of each value, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging
%% DNS Queries</a> in the <i>Amazon Route 53 Developer Guide</i>.
%%
%% </dd> <dt>Pricing</dt> <dd> For information about charges for query logs,
%% see <a href="http://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
%% Pricing</a>.
%%
%% </dd> <dt>How to Stop Logging</dt> <dd> If you want Route 53 to stop
%% sending query logs to CloudWatch Logs, delete the query logging
%% configuration. For more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html">DeleteQueryLoggingConfig</a>.
%%
%% </dd> </dl>
create_query_logging_config(Client, Input) ->
    create_query_logging_config(Client, Input, []).
create_query_logging_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/queryloggingconfig"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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
%% reused by multiple hosted zones that were created by the same AWS account.
%%
%% You can also create a reusable delegation set that uses the four name
%% servers that are associated with an existing hosted zone. Specify the
%% hosted zone ID in the <code>CreateReusableDelegationSet</code> request.
%%
%% <note> You can't associate a reusable delegation set with a private hosted
%% zone.
%%
%% </note> For information about using a reusable delegation set to configure
%% white label name servers, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html">Configuring
%% White Label Name Servers</a>.
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
create_reusable_delegation_set(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/delegationset"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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
create_traffic_policy(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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
%% settings in a specified traffic policy version. In addition,
%% <code>CreateTrafficPolicyInstance</code> associates the resource record
%% sets with a specified domain name (such as example.com) or subdomain name
%% (such as www.example.com). Amazon Route 53 responds to DNS queries for the
%% domain or subdomain name by using the resource record sets that
%% <code>CreateTrafficPolicyInstance</code> created.
create_traffic_policy_instance(Client, Input) ->
    create_traffic_policy_instance(Client, Input, []).
create_traffic_policy_instance(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates a new version of an existing traffic policy. When you create
%% a new version of a traffic policy, you specify the ID of the traffic
%% policy that you want to update and a JSON-formatted document that
%% describes the new version. You use traffic policies to create multiple DNS
%% resource record sets for one domain name (such as example.com) or one
%% subdomain name (such as www.example.com). You can create a maximum of 1000
%% versions of a traffic policy. If you reach the limit and need to create
%% another version, you'll need to start a new traffic policy.
create_traffic_policy_version(Client, Id, Input) ->
    create_traffic_policy_version(Client, Id, Input, []).
create_traffic_policy_version(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", http_uri:encode(Id), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Authorizes the AWS account that created a specified VPC to submit an
%% <code>AssociateVPCWithHostedZone</code> request to associate the VPC with
%% a specified hosted zone that was created by a different account. To submit
%% a <code>CreateVPCAssociationAuthorization</code> request, you must use the
%% account that created the hosted zone. After you authorize the association,
%% use the account that created the VPC to submit an
%% <code>AssociateVPCWithHostedZone</code> request.
%%
%% <note> If you want to associate multiple VPCs that you created by using
%% one account with a hosted zone that you created by using a different
%% account, you must submit one authorization request for each VPC.
%%
%% </note>
create_v_p_c_association_authorization(Client, HostedZoneId, Input) ->
    create_v_p_c_association_authorization(Client, HostedZoneId, Input, []).
create_v_p_c_association_authorization(Client, HostedZoneId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a health check.
%%
%% <important> Amazon Route 53 does not prevent you from deleting a health
%% check even if the health check is associated with one or more resource
%% record sets. If you delete a health check and you don't update the
%% associated resource record sets, the future status of the health check
%% can't be predicted and may change. This will affect the routing of DNS
%% queries for your DNS failover configuration. For more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html">Replacing
%% and Deleting Health Checks</a> in the <i>Amazon Route 53 Developer
%% Guide</i>.
%%
%% </important> If you're using AWS Cloud Map and you configured Cloud Map to
%% create a Route 53 health check when you register an instance, you can't
%% use the Route 53 <code>DeleteHealthCheck</code> command to delete the
%% health check. The health check is deleted automatically when you
%% deregister the instance; there can be a delay of several hours before the
%% health check is deleted from Route 53.
delete_health_check(Client, HealthCheckId, Input) ->
    delete_health_check(Client, HealthCheckId, Input, []).
delete_health_check(Client, HealthCheckId, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/healthcheck/", http_uri:encode(HealthCheckId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a hosted zone.
%%
%% If the hosted zone was created by another service, such as AWS Cloud Map,
%% see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service">Deleting
%% Public Hosted Zones That Were Created by Another Service</a> in the
%% <i>Amazon Route 53 Developer Guide</i> for information about how to delete
%% it. (The process is the same for public and private hosted zones that were
%% created by another service.)
%%
%% If you want to keep your domain registration but you want to stop routing
%% internet traffic to your website or web application, we recommend that you
%% delete resource record sets in the hosted zone instead of deleting the
%% hosted zone.
%%
%% <important> If you delete a hosted zone, you can't undelete it. You must
%% create a new hosted zone and update the name servers for your domain
%% registration, which can require up to 48 hours to take effect. (If you
%% delegated responsibility for a subdomain to a hosted zone and you delete
%% the child hosted zone, you must update the name servers in the parent
%% hosted zone.) In addition, if you delete a hosted zone, someone could
%% hijack the domain and route traffic to their own resources using your
%% domain name.
%%
%% </important> If you want to avoid the monthly charge for the hosted zone,
%% you can transfer DNS service for the domain to a free DNS service. When
%% you transfer DNS service, you have to update the name servers for the
%% domain registration. If the domain is registered with Route 53, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html">UpdateDomainNameservers</a>
%% for information about how to replace Route 53 name servers with name
%% servers for the new DNS service. If the domain is registered with another
%% registrar, use the method provided by the registrar to update name servers
%% for the domain registration. For more information, perform an internet
%% search on "free DNS service."
%%
%% You can delete a hosted zone only if it contains only the default SOA
%% record and NS resource record sets. If the hosted zone contains other
%% resource record sets, you must delete them before you can delete the
%% hosted zone. If you try to delete a hosted zone that contains other
%% resource record sets, the request fails, and Route 53 returns a
%% <code>HostedZoneNotEmpty</code> error. For information about deleting
%% records from your hosted zone, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>.
%%
%% To verify that the hosted zone has been deleted, do one of the following:
%%
%% <ul> <li> Use the <code>GetHostedZone</code> action to request information
%% about the hosted zone.
%%
%% </li> <li> Use the <code>ListHostedZones</code> action to get a list of
%% the hosted zones associated with the current AWS account.
%%
%% </li> </ul>
delete_hosted_zone(Client, Id, Input) ->
    delete_hosted_zone(Client, Id, Input, []).
delete_hosted_zone(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a configuration for DNS query logging. If you delete a
%% configuration, Amazon Route 53 stops sending query logs to CloudWatch
%% Logs. Route 53 doesn't delete any logs that are already in CloudWatch
%% Logs.
%%
%% For more information about DNS query logs, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>.
delete_query_logging_config(Client, Id, Input) ->
    delete_query_logging_config(Client, Id, Input, []).
delete_query_logging_config(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/queryloggingconfig/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a reusable delegation set.
%%
%% <important> You can delete a reusable delegation set only if it isn't
%% associated with any hosted zones.
%%
%% </important> To verify that the reusable delegation set is not associated
%% with any hosted zones, submit a <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html">GetReusableDelegationSet</a>
%% request and specify the ID of the reusable delegation set that you want to
%% delete.
delete_reusable_delegation_set(Client, Id, Input) ->
    delete_reusable_delegation_set(Client, Id, Input, []).
delete_reusable_delegation_set(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/delegationset/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy.
delete_traffic_policy(Client, Id, Version, Input) ->
    delete_traffic_policy(Client, Id, Version, Input, []).
delete_traffic_policy(Client, Id, Version, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicy/", http_uri:encode(Id), "/", http_uri:encode(Version), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a traffic policy instance and all of the resource record sets
%% that Amazon Route 53 created when you created the instance.
%%
%% <note> In the Route 53 console, traffic policy instances are known as
%% policy records.
%%
%% </note>
delete_traffic_policy_instance(Client, Id, Input) ->
    delete_traffic_policy_instance(Client, Id, Input, []).
delete_traffic_policy_instance(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/2013-04-01/trafficpolicyinstance/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes authorization to submit an
%% <code>AssociateVPCWithHostedZone</code> request to associate a specified
%% VPC with a hosted zone that was created by a different account. You must
%% use the account that created the hosted zone to submit a
%% <code>DeleteVPCAssociationAuthorization</code> request.
%%
%% <important> Sending this request only prevents the AWS account that
%% created the VPC from associating the VPC with the Amazon Route 53 hosted
%% zone in the future. If the VPC is already associated with the hosted zone,
%% <code>DeleteVPCAssociationAuthorization</code> won't disassociate the VPC
%% from the hosted zone. If you want to delete an existing association, use
%% <code>DisassociateVPCFromHostedZone</code>.
%%
%% </important>
delete_v_p_c_association_authorization(Client, HostedZoneId, Input) ->
    delete_v_p_c_association_authorization(Client, HostedZoneId, Input, []).
delete_v_p_c_association_authorization(Client, HostedZoneId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/deauthorizevpcassociation"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an
%% Amazon Route 53 private hosted zone. Note the following:
%%
%% <ul> <li> You can't disassociate the last Amazon VPC from a private hosted
%% zone.
%%
%% </li> <li> You can't convert a private hosted zone into a public hosted
%% zone.
%%
%% </li> <li> You can submit a <code>DisassociateVPCFromHostedZone</code>
%% request using either the account that created the hosted zone or the
%% account that created the Amazon VPC.
%%
%% </li> <li> Some services, such as AWS Cloud Map and Amazon Elastic File
%% System (Amazon EFS) automatically create hosted zones and associate VPCs
%% with the hosted zones. A service can create a hosted zone using your
%% account or using its own account. You can disassociate a VPC from a hosted
%% zone only if the service created the hosted zone using your account.
%%
%% When you run <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html">DisassociateVPCFromHostedZone</a>,
%% if the hosted zone has a value for <code>OwningAccount</code>, you can use
%% <code>DisassociateVPCFromHostedZone</code>. If the hosted zone has a value
%% for <code>OwningService</code>, you can't use
%% <code>DisassociateVPCFromHostedZone</code>.
%%
%% </li> </ul>
disassociate_v_p_c_from_hosted_zone(Client, HostedZoneId, Input) ->
    disassociate_v_p_c_from_hosted_zone(Client, HostedZoneId, Input, []).
disassociate_v_p_c_from_hosted_zone(Client, HostedZoneId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/disassociatevpc"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified limit for the current account, for example, the
%% maximum number of health checks that you can create using the account.
%%
%% For the default limit, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a>
%% in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
%% <a
%% href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open
%% a case</a>.
%%
%% <note> You can also view account limits in AWS Trusted Advisor. Sign in to
%% the AWS Management Console and open the Trusted Advisor console at <a
%% href="https://console.aws.amazon.com/trustedadvisor">https://console.aws.amazon.com/trustedadvisor/</a>.
%% Then choose <b>Service limits</b> in the navigation pane.
%%
%% </note>
get_account_limit(Client, Type)
  when is_map(Client) ->
    get_account_limit(Client, Type, []).
get_account_limit(Client, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/accountlimit/", http_uri:encode(Type), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current status of a change batch request. The status is
%% one of the following values:
%%
%% <ul> <li> <code>PENDING</code> indicates that the changes in this request
%% have not propagated to all Amazon Route 53 DNS servers. This is the
%% initial status of all change batch requests.
%%
%% </li> <li> <code>INSYNC</code> indicates that the changes have propagated
%% to all Route 53 DNS servers.
%%
%% </li> </ul>
get_change(Client, Id)
  when is_map(Client) ->
    get_change(Client, Id, []).
get_change(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/change/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc <important> <code>GetCheckerIpRanges</code> still works, but we
%% recommend that you download ip-ranges.json, which includes IP address
%% ranges for all AWS services. For more information, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html">IP
%% Address Ranges of Amazon Route 53 Servers</a> in the <i>Amazon Route 53
%% Developer Guide</i>.
%%
%% </important>
get_checker_ip_ranges(Client)
  when is_map(Client) ->
    get_checker_ip_ranges(Client, []).
get_checker_ip_ranges(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/checkeripranges"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about whether a specified geographic location is
%% supported for Amazon Route 53 geolocation resource record sets.
%%
%% Use the following syntax to determine whether a continent is supported for
%% geolocation:
%%
%% <code>GET /2013-04-01/geolocation?continentcode=<i>two-letter abbreviation
%% for a continent</i> </code>
%%
%% Use the following syntax to determine whether a country is supported for
%% geolocation:
%%
%% <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
%% code</i> </code>
%%
%% Use the following syntax to determine whether a subdivision of a country
%% is supported for geolocation:
%%
%% <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
%% code</i>&amp;subdivisioncode=<i>subdivision code</i> </code>
get_geo_location(Client, ContinentCode, CountryCode, SubdivisionCode)
  when is_map(Client) ->
    get_geo_location(Client, ContinentCode, CountryCode, SubdivisionCode, []).
get_geo_location(Client, ContinentCode, CountryCode, SubdivisionCode, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/geolocation"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"continentcode">>, ContinentCode},
        {<<"countrycode">>, CountryCode},
        {<<"subdivisioncode">>, SubdivisionCode}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified health check.
get_health_check(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check(Client, HealthCheckId, []).
get_health_check(Client, HealthCheckId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/healthcheck/", http_uri:encode(HealthCheckId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of health checks that are associated with the
%% current AWS account.
get_health_check_count(Client)
  when is_map(Client) ->
    get_health_check_count(Client, []).
get_health_check_count(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/healthcheckcount"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the reason that a specified health check failed most recently.
get_health_check_last_failure_reason(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_last_failure_reason(Client, HealthCheckId, []).
get_health_check_last_failure_reason(Client, HealthCheckId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/healthcheck/", http_uri:encode(HealthCheckId), "/lastfailurereason"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets status of a specified health check.
get_health_check_status(Client, HealthCheckId)
  when is_map(Client) ->
    get_health_check_status(Client, HealthCheckId, []).
get_health_check_status(Client, HealthCheckId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/healthcheck/", http_uri:encode(HealthCheckId), "/status"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified hosted zone including the four
%% name servers assigned to the hosted zone.
get_hosted_zone(Client, Id)
  when is_map(Client) ->
    get_hosted_zone(Client, Id, []).
get_hosted_zone(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the number of hosted zones that are associated with the
%% current AWS account.
get_hosted_zone_count(Client)
  when is_map(Client) ->
    get_hosted_zone_count(Client, []).
get_hosted_zone_count(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzonecount"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified limit for a specified hosted zone, for example,
%% the maximum number of records that you can create in the hosted zone.
%%
%% For the default limit, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a>
%% in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
%% <a
%% href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open
%% a case</a>.
get_hosted_zone_limit(Client, HostedZoneId, Type)
  when is_map(Client) ->
    get_hosted_zone_limit(Client, HostedZoneId, Type, []).
get_hosted_zone_limit(Client, HostedZoneId, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzonelimit/", http_uri:encode(HostedZoneId), "/", http_uri:encode(Type), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified configuration for DNS query
%% logging.
%%
%% For more information about DNS query logs, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>
%% and <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging
%% DNS Queries</a>.
get_query_logging_config(Client, Id)
  when is_map(Client) ->
    get_query_logging_config(Client, Id, []).
get_query_logging_config(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/queryloggingconfig/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified reusable delegation set,
%% including the four name servers that are assigned to the delegation set.
get_reusable_delegation_set(Client, Id)
  when is_map(Client) ->
    get_reusable_delegation_set(Client, Id, []).
get_reusable_delegation_set(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/delegationset/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the maximum number of hosted zones that you can associate with
%% the specified reusable delegation set.
%%
%% For the default limit, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a>
%% in the <i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
%% <a
%% href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53">open
%% a case</a>.
get_reusable_delegation_set_limit(Client, DelegationSetId, Type)
  when is_map(Client) ->
    get_reusable_delegation_set_limit(Client, DelegationSetId, Type, []).
get_reusable_delegation_set_limit(Client, DelegationSetId, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/reusabledelegationsetlimit/", http_uri:encode(DelegationSetId), "/", http_uri:encode(Type), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specific traffic policy version.
get_traffic_policy(Client, Id, Version)
  when is_map(Client) ->
    get_traffic_policy(Client, Id, Version, []).
get_traffic_policy(Client, Id, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicy/", http_uri:encode(Id), "/", http_uri:encode(Version), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified traffic policy instance.
%%
%% <note> After you submit a <code>CreateTrafficPolicyInstance</code> or an
%% <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay
%% while Amazon Route 53 creates the resource record sets that are specified
%% in the traffic policy definition. For more information, see the
%% <code>State</code> response element.
%%
%% </note> <note> In the Route 53 console, traffic policy instances are known
%% as policy records.
%%
%% </note>
get_traffic_policy_instance(Client, Id)
  when is_map(Client) ->
    get_traffic_policy_instance(Client, Id, []).
get_traffic_policy_instance(Client, Id, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicyinstance/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the number of traffic policy instances that are associated with
%% the current AWS account.
get_traffic_policy_instance_count(Client)
  when is_map(Client) ->
    get_traffic_policy_instance_count(Client, []).
get_traffic_policy_instance_count(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicyinstancecount"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of supported geographic locations.
%%
%% Countries are listed first, and continents are listed last. If Amazon
%% Route 53 supports subdivisions for a country (for example, states or
%% provinces), the subdivisions for that country are listed in alphabetical
%% order immediately after the corresponding country.
%%
%% For a list of supported geolocation codes, see the <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html">GeoLocation</a>
%% data type.
list_geo_locations(Client, MaxItems, StartContinentCode, StartCountryCode, StartSubdivisionCode)
  when is_map(Client) ->
    list_geo_locations(Client, MaxItems, StartContinentCode, StartCountryCode, StartSubdivisionCode, []).
list_geo_locations(Client, MaxItems, StartContinentCode, StartCountryCode, StartSubdivisionCode, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/geolocations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, MaxItems},
        {<<"startcontinentcode">>, StartContinentCode},
        {<<"startcountrycode">>, StartCountryCode},
        {<<"startsubdivisioncode">>, StartSubdivisionCode}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the health checks that are associated with the
%% current AWS account.
list_health_checks(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_health_checks(Client, Marker, MaxItems, []).
list_health_checks(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/healthcheck"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, Marker},
        {<<"maxitems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the public and private hosted zones that are
%% associated with the current AWS account. The response includes a
%% <code>HostedZones</code> child element for each hosted zone.
%%
%% Amazon Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of hosted zones, you can use the <code>maxitems</code>
%% parameter to list them in groups of up to 100.
list_hosted_zones(Client, DelegationSetId, Marker, MaxItems)
  when is_map(Client) ->
    list_hosted_zones(Client, DelegationSetId, Marker, MaxItems, []).
list_hosted_zones(Client, DelegationSetId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzone"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"delegationsetid">>, DelegationSetId},
        {<<"marker">>, Marker},
        {<<"maxitems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of your hosted zones in lexicographic order. The
%% response includes a <code>HostedZones</code> child element for each hosted
%% zone created by the current AWS account.
%%
%% <code>ListHostedZonesByName</code> sorts hosted zones by name with the
%% labels reversed. For example:
%%
%% <code>com.example.www.</code>
%%
%% Note the trailing dot, which can change the sort order in some
%% circumstances.
%%
%% If the domain name includes escape characters or Punycode,
%% <code>ListHostedZonesByName</code> alphabetizes the domain name using the
%% escaped or Punycoded value, which is the format that Amazon Route 53 saves
%% in its database. For example, to create a hosted zone for exämple.com, you
%% specify ex\344mple.com for the domain name.
%% <code>ListHostedZonesByName</code> alphabetizes it as:
%%
%% <code>com.ex\344mple.</code>
%%
%% The labels are reversed and alphabetized using the escaped value. For more
%% information about valid domain name formats, including internationalized
%% domain names, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS
%% Domain Name Format</a> in the <i>Amazon Route 53 Developer Guide</i>.
%%
%% Route 53 returns up to 100 items in each response. If you have a lot of
%% hosted zones, use the <code>MaxItems</code> parameter to list them in
%% groups of up to 100. The response includes values that help navigate from
%% one group of <code>MaxItems</code> hosted zones to the next:
%%
%% <ul> <li> The <code>DNSName</code> and <code>HostedZoneId</code> elements
%% in the response contain the values, if any, specified for the
%% <code>dnsname</code> and <code>hostedzoneid</code> parameters in the
%% request that produced the current response.
%%
%% </li> <li> The <code>MaxItems</code> element in the response contains the
%% value, if any, that you specified for the <code>maxitems</code> parameter
%% in the request that produced the current response.
%%
%% </li> <li> If the value of <code>IsTruncated</code> in the response is
%% true, there are more hosted zones associated with the current AWS account.
%%
%% If <code>IsTruncated</code> is false, this response includes the last
%% hosted zone that is associated with the current account. The
%% <code>NextDNSName</code> element and <code>NextHostedZoneId</code>
%% elements are omitted from the response.
%%
%% </li> <li> The <code>NextDNSName</code> and <code>NextHostedZoneId</code>
%% elements in the response contain the domain name and the hosted zone ID of
%% the next hosted zone that is associated with the current AWS account. If
%% you want to list more hosted zones, make another call to
%% <code>ListHostedZonesByName</code>, and specify the value of
%% <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the
%% <code>dnsname</code> and <code>hostedzoneid</code> parameters,
%% respectively.
%%
%% </li> </ul>
list_hosted_zones_by_name(Client, DNSName, HostedZoneId, MaxItems)
  when is_map(Client) ->
    list_hosted_zones_by_name(Client, DNSName, HostedZoneId, MaxItems, []).
list_hosted_zones_by_name(Client, DNSName, HostedZoneId, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzonesbyname"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"dnsname">>, DNSName},
        {<<"hostedzoneid">>, HostedZoneId},
        {<<"maxitems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the private hosted zones that a specified VPC is associated
%% with, regardless of which AWS account or AWS service owns the hosted
%% zones. The <code>HostedZoneOwner</code> structure in the response contains
%% one of the following values:
%%
%% <ul> <li> An <code>OwningAccount</code> element, which contains the
%% account number of either the current AWS account or another AWS account.
%% Some services, such as AWS Cloud Map, create hosted zones using the
%% current account.
%%
%% </li> <li> An <code>OwningService</code> element, which identifies the AWS
%% service that created and owns the hosted zone. For example, if a hosted
%% zone was created by Amazon Elastic File System (Amazon EFS), the value of
%% <code>Owner</code> is <code>efs.amazonaws.com</code>.
%%
%% </li> </ul>
list_hosted_zones_by_v_p_c(Client, MaxItems, NextToken, VPCId, VPCRegion)
  when is_map(Client) ->
    list_hosted_zones_by_v_p_c(Client, MaxItems, NextToken, VPCId, VPCRegion, []).
list_hosted_zones_by_v_p_c(Client, MaxItems, NextToken, VPCId, VPCRegion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzonesbyvpc"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, MaxItems},
        {<<"nexttoken">>, NextToken},
        {<<"vpcid">>, VPCId},
        {<<"vpcregion">>, VPCRegion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the configurations for DNS query logging that are associated
%% with the current AWS account or the configuration that is associated with
%% a specified hosted zone.
%%
%% For more information about DNS query logs, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>.
%% Additional information, including the format of DNS query logs, appears in
%% <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging
%% DNS Queries</a> in the <i>Amazon Route 53 Developer Guide</i>.
list_query_logging_configs(Client, HostedZoneId, MaxResults, NextToken)
  when is_map(Client) ->
    list_query_logging_configs(Client, HostedZoneId, MaxResults, NextToken, []).
list_query_logging_configs(Client, HostedZoneId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/queryloggingconfig"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, HostedZoneId},
        {<<"maxresults">>, MaxResults},
        {<<"nexttoken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource record sets in a specified hosted zone.
%%
%% <code>ListResourceRecordSets</code> returns up to 100 resource record sets
%% at a time in ASCII order, beginning at a position specified by the
%% <code>name</code> and <code>type</code> elements.
%%
%% <b>Sort order</b>
%%
%% <code>ListResourceRecordSets</code> sorts results first by DNS name with
%% the labels reversed, for example:
%%
%% <code>com.example.www.</code>
%%
%% Note the trailing dot, which can change the sort order when the record
%% name contains characters that appear before <code>.</code> (decimal 46) in
%% the ASCII table. These characters include the following: <code>! " # $ %
%% &amp; ' ( ) * + , -</code>
%%
%% When multiple records have the same DNS name,
%% <code>ListResourceRecordSets</code> sorts results by the record type.
%%
%% <b>Specifying where to start listing records</b>
%%
%% You can use the name and type elements to specify the resource record set
%% that the list begins with:
%%
%% <dl> <dt>If you do not specify Name or Type</dt> <dd> The results begin
%% with the first resource record set that the hosted zone contains.
%%
%% </dd> <dt>If you specify Name but not Type</dt> <dd> The results begin
%% with the first resource record set in the list whose name is greater than
%% or equal to <code>Name</code>.
%%
%% </dd> <dt>If you specify Type but not Name</dt> <dd> Amazon Route 53
%% returns the <code>InvalidInput</code> error.
%%
%% </dd> <dt>If you specify both Name and Type</dt> <dd> The results begin
%% with the first resource record set in the list whose name is greater than
%% or equal to <code>Name</code>, and whose type is greater than or equal to
%% <code>Type</code>.
%%
%% </dd> </dl> <b>Resource record sets that are PENDING</b>
%%
%% This action returns the most current version of the records. This includes
%% records that are <code>PENDING</code>, and that are not yet available on
%% all Route 53 DNS servers.
%%
%% <b>Changing resource record sets</b>
%%
%% To ensure that you get an accurate listing of the resource record sets for
%% a hosted zone at a point in time, do not submit a
%% <code>ChangeResourceRecordSets</code> request while you're paging through
%% the results of a <code>ListResourceRecordSets</code> request. If you do,
%% some pages may display results without the latest changes while other
%% pages display results with the latest changes.
%%
%% <b>Displaying the next page of results</b>
%%
%% If a <code>ListResourceRecordSets</code> command returns more than one
%% page of results, the value of <code>IsTruncated</code> is
%% <code>true</code>. To display the next page of results, get the values of
%% <code>NextRecordName</code>, <code>NextRecordType</code>, and
%% <code>NextRecordIdentifier</code> (if any) from the response. Then submit
%% another <code>ListResourceRecordSets</code> request, and specify those
%% values for <code>StartRecordName</code>, <code>StartRecordType</code>, and
%% <code>StartRecordIdentifier</code>.
list_resource_record_sets(Client, HostedZoneId, MaxItems, StartRecordIdentifier, StartRecordName, StartRecordType)
  when is_map(Client) ->
    list_resource_record_sets(Client, HostedZoneId, MaxItems, StartRecordIdentifier, StartRecordName, StartRecordType, []).
list_resource_record_sets(Client, HostedZoneId, MaxItems, StartRecordIdentifier, StartRecordName, StartRecordType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/rrset"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, MaxItems},
        {<<"identifier">>, StartRecordIdentifier},
        {<<"name">>, StartRecordName},
        {<<"type">>, StartRecordType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the reusable delegation sets that are associated
%% with the current AWS account.
list_reusable_delegation_sets(Client, Marker, MaxItems)
  when is_map(Client) ->
    list_reusable_delegation_sets(Client, Marker, MaxItems, []).
list_reusable_delegation_sets(Client, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/delegationset"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"marker">>, Marker},
        {<<"maxitems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for one health check or hosted zone.
%%
%% For information about using tags for cost allocation, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
%% Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>.
list_tags_for_resource(Client, ResourceId, ResourceType)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, ResourceType, []).
list_tags_for_resource(Client, ResourceId, ResourceType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/tags/", http_uri:encode(ResourceType), "/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for up to 10 health checks or hosted zones.
%%
%% For information about using tags for cost allocation, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using
%% Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User
%% Guide</i>.
list_tags_for_resources(Client, ResourceType, Input) ->
    list_tags_for_resources(Client, ResourceType, Input, []).
list_tags_for_resources(Client, ResourceType, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/tags/", http_uri:encode(ResourceType), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the latest version for every traffic policy
%% that is associated with the current AWS account. Policies are listed in
%% the order that they were created in.
list_traffic_policies(Client, MaxItems, TrafficPolicyIdMarker)
  when is_map(Client) ->
    list_traffic_policies(Client, MaxItems, TrafficPolicyIdMarker, []).
list_traffic_policies(Client, MaxItems, TrafficPolicyIdMarker, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicies"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, MaxItems},
        {<<"trafficpolicyid">>, TrafficPolicyIdMarker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using the current AWS account.
%%
%% <note> After you submit an <code>UpdateTrafficPolicyInstance</code>
%% request, there's a brief delay while Amazon Route 53 creates the resource
%% record sets that are specified in the traffic policy definition. For more
%% information, see the <code>State</code> response element.
%%
%% </note> Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of traffic policy instances, you can use the
%% <code>MaxItems</code> parameter to list them in groups of up to 100.
list_traffic_policy_instances(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker)
  when is_map(Client) ->
    list_traffic_policy_instances(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, []).
list_traffic_policy_instances(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicyinstances"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, HostedZoneIdMarker},
        {<<"maxitems">>, MaxItems},
        {<<"trafficpolicyinstancename">>, TrafficPolicyInstanceNameMarker},
        {<<"trafficpolicyinstancetype">>, TrafficPolicyInstanceTypeMarker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% in a specified hosted zone.
%%
%% <note> After you submit a <code>CreateTrafficPolicyInstance</code> or an
%% <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay
%% while Amazon Route 53 creates the resource record sets that are specified
%% in the traffic policy definition. For more information, see the
%% <code>State</code> response element.
%%
%% </note> Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of traffic policy instances, you can use the
%% <code>MaxItems</code> parameter to list them in groups of up to 100.
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker)
  when is_map(Client) ->
    list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, []).
list_traffic_policy_instances_by_hosted_zone(Client, HostedZoneId, MaxItems, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicyinstances/hostedzone"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"id">>, HostedZoneId},
        {<<"maxitems">>, MaxItems},
        {<<"trafficpolicyinstancename">>, TrafficPolicyInstanceNameMarker},
        {<<"trafficpolicyinstancetype">>, TrafficPolicyInstanceTypeMarker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the traffic policy instances that you created
%% by using a specify traffic policy version.
%%
%% <note> After you submit a <code>CreateTrafficPolicyInstance</code> or an
%% <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay
%% while Amazon Route 53 creates the resource record sets that are specified
%% in the traffic policy definition. For more information, see the
%% <code>State</code> response element.
%%
%% </note> Route 53 returns a maximum of 100 items in each response. If you
%% have a lot of traffic policy instances, you can use the
%% <code>MaxItems</code> parameter to list them in groups of up to 100.
list_traffic_policy_instances_by_policy(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyId, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, TrafficPolicyVersion)
  when is_map(Client) ->
    list_traffic_policy_instances_by_policy(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyId, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, TrafficPolicyVersion, []).
list_traffic_policy_instances_by_policy(Client, HostedZoneIdMarker, MaxItems, TrafficPolicyId, TrafficPolicyInstanceNameMarker, TrafficPolicyInstanceTypeMarker, TrafficPolicyVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicyinstances/trafficpolicy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"hostedzoneid">>, HostedZoneIdMarker},
        {<<"maxitems">>, MaxItems},
        {<<"id">>, TrafficPolicyId},
        {<<"trafficpolicyinstancename">>, TrafficPolicyInstanceNameMarker},
        {<<"trafficpolicyinstancetype">>, TrafficPolicyInstanceTypeMarker},
        {<<"version">>, TrafficPolicyVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about all of the versions for a specified traffic
%% policy.
%%
%% Traffic policy versions are listed in numerical order by
%% <code>VersionNumber</code>.
list_traffic_policy_versions(Client, Id, MaxItems, TrafficPolicyVersionMarker)
  when is_map(Client) ->
    list_traffic_policy_versions(Client, Id, MaxItems, TrafficPolicyVersionMarker, []).
list_traffic_policy_versions(Client, Id, MaxItems, TrafficPolicyVersionMarker, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/trafficpolicies/", http_uri:encode(Id), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxitems">>, MaxItems},
        {<<"trafficpolicyversion">>, TrafficPolicyVersionMarker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of the VPCs that were created by other accounts and that
%% can be associated with a specified hosted zone because you've submitted
%% one or more <code>CreateVPCAssociationAuthorization</code> requests.
%%
%% The response includes a <code>VPCs</code> element with a <code>VPC</code>
%% child element for each VPC that can be associated with the hosted zone.
list_v_p_c_association_authorizations(Client, HostedZoneId, MaxResults, NextToken)
  when is_map(Client) ->
    list_v_p_c_association_authorizations(Client, HostedZoneId, MaxResults, NextToken, []).
list_v_p_c_association_authorizations(Client, HostedZoneId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(HostedZoneId), "/authorizevpcassociation"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxresults">>, MaxResults},
        {<<"nexttoken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the value that Amazon Route 53 returns in response to a DNS
%% request for a specified record name and type. You can optionally specify
%% the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a
%% subnet mask.
test_d_n_s_answer(Client, EDNS0ClientSubnetIP, EDNS0ClientSubnetMask, HostedZoneId, RecordName, RecordType, ResolverIP)
  when is_map(Client) ->
    test_d_n_s_answer(Client, EDNS0ClientSubnetIP, EDNS0ClientSubnetMask, HostedZoneId, RecordName, RecordType, ResolverIP, []).
test_d_n_s_answer(Client, EDNS0ClientSubnetIP, EDNS0ClientSubnetMask, HostedZoneId, RecordName, RecordType, ResolverIP, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-04-01/testdnsanswer"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"edns0clientsubnetip">>, EDNS0ClientSubnetIP},
        {<<"edns0clientsubnetmask">>, EDNS0ClientSubnetMask},
        {<<"hostedzoneid">>, HostedZoneId},
        {<<"recordname">>, RecordName},
        {<<"recordtype">>, RecordType},
        {<<"resolverip">>, ResolverIP}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an existing health check. Note that some values can't be
%% updated.
%%
%% For more information about updating health checks, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html">Creating,
%% Updating, and Deleting Health Checks</a> in the <i>Amazon Route 53
%% Developer Guide</i>.
update_health_check(Client, HealthCheckId, Input) ->
    update_health_check(Client, HealthCheckId, Input, []).
update_health_check(Client, HealthCheckId, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/healthcheck/", http_uri:encode(HealthCheckId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified hosted zone.
update_hosted_zone_comment(Client, Id, Input) ->
    update_hosted_zone_comment(Client, Id, Input, []).
update_hosted_zone_comment(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/hostedzone/", http_uri:encode(Id), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the comment for a specified traffic policy version.
update_traffic_policy_comment(Client, Id, Version, Input) ->
    update_traffic_policy_comment(Client, Id, Version, Input, []).
update_traffic_policy_comment(Client, Id, Version, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicy/", http_uri:encode(Id), "/", http_uri:encode(Version), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
update_traffic_policy_instance(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/2013-04-01/trafficpolicyinstance/", http_uri:encode(Id), ""],
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
    Client1 = Client#{service => <<"route53">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"route53">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"text/xml">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
            Result = aws_util:decode_xml(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

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
