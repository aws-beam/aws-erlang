%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the latest version of the AWS WAF API, released in November,
%% 2019.
%%
%% The names of the entities that you use to access this API, like endpoints
%% and namespaces, all have the versioning information added, like "V2" or
%% "v2", to distinguish from the prior version. We recommend migrating your
%% resources to this version, because it has a number of significant
%% improvements.
%%
%% If you used AWS WAF prior to this release, you can't use this AWS WAFV2
%% API to access any AWS WAF resources that you created before. You can
%% access your old rules, web ACLs, and other AWS WAF resources only through
%% the AWS WAF Classic APIs. The AWS WAF Classic APIs have retained the prior
%% names, endpoints, and namespaces.
%%
%% For information, including how to migrate your AWS WAF resources to this
%% version, see the AWS WAF Developer Guide.
%%
%% AWS WAF is a web application firewall that lets you monitor the HTTP and
%% HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API
%% Gateway REST API, an Application Load Balancer, or an AWS AppSync GraphQL
%% API. AWS WAF also lets you control access to your content. Based on
%% conditions that you specify, such as the IP addresses that requests
%% originate from or the values of query strings, the API Gateway REST API,
%% CloudFront distribution, the Application Load Balancer, or the AWS AppSync
%% GraphQL API responds to requests either with the requested content or with
%% an HTTP 403 status code (Forbidden). You also can configure CloudFront to
%% return a custom error page when a request is blocked.
%%
%% This API guide is for developers who need detailed information about AWS
%% WAF API actions, data types, and errors. For detailed information about
%% AWS WAF features and an overview of how to use AWS WAF, see the AWS WAF
%% Developer Guide.
%%
%% You can make calls using the endpoints listed in AWS Service Endpoints for
%% AWS WAF.
%%
%% <ul> <li> For regional applications, you can use any of the endpoints in
%% the list. A regional application can be an Application Load Balancer
%% (ALB), an API Gateway REST API, or an AppSync GraphQL API.
%%
%% </li> <li> For AWS CloudFront applications, you must use the API endpoint
%% listed for US East (N. Virginia): us-east-1.
%%
%% </li> </ul> Alternatively, you can use one of the AWS SDKs to access an
%% API that's tailored to the programming language or platform that you're
%% using. For more information, see AWS SDKs.
%%
%% We currently provide two versions of the AWS WAF API: this API and the
%% prior versions, the classic AWS WAF APIs. This new API provides the same
%% functionality as the older versions, with the following major
%% improvements:
%%
%% <ul> <li> You use one API for both global and regional applications. Where
%% you need to distinguish the scope, you specify a `Scope' parameter and set
%% it to `CLOUDFRONT' or `REGIONAL'.
%%
%% </li> <li> You can define a Web ACL or rule group with a single call, and
%% update it with a single call. You define all rule specifications in JSON
%% format, and pass them to your rule group or Web ACL calls.
%%
%% </li> <li> The limits AWS WAF places on the use of rules more closely
%% reflects the cost of running each type of rule. Rule groups include
%% capacity settings, so you know the maximum cost of a rule group when you
%% use it.
%%
%% </li> </ul>
-module(aws_wafv2).

-export([associate_web_acl/2,
         associate_web_acl/3,
         check_capacity/2,
         check_capacity/3,
         create_ip_set/2,
         create_ip_set/3,
         create_regex_pattern_set/2,
         create_regex_pattern_set/3,
         create_rule_group/2,
         create_rule_group/3,
         create_web_acl/2,
         create_web_acl/3,
         delete_firewall_manager_rule_groups/2,
         delete_firewall_manager_rule_groups/3,
         delete_ip_set/2,
         delete_ip_set/3,
         delete_logging_configuration/2,
         delete_logging_configuration/3,
         delete_permission_policy/2,
         delete_permission_policy/3,
         delete_regex_pattern_set/2,
         delete_regex_pattern_set/3,
         delete_rule_group/2,
         delete_rule_group/3,
         delete_web_acl/2,
         delete_web_acl/3,
         describe_managed_rule_group/2,
         describe_managed_rule_group/3,
         disassociate_web_acl/2,
         disassociate_web_acl/3,
         get_ip_set/2,
         get_ip_set/3,
         get_logging_configuration/2,
         get_logging_configuration/3,
         get_permission_policy/2,
         get_permission_policy/3,
         get_rate_based_statement_managed_keys/2,
         get_rate_based_statement_managed_keys/3,
         get_regex_pattern_set/2,
         get_regex_pattern_set/3,
         get_rule_group/2,
         get_rule_group/3,
         get_sampled_requests/2,
         get_sampled_requests/3,
         get_web_acl/2,
         get_web_acl/3,
         get_web_acl_for_resource/2,
         get_web_acl_for_resource/3,
         list_available_managed_rule_groups/2,
         list_available_managed_rule_groups/3,
         list_ip_sets/2,
         list_ip_sets/3,
         list_logging_configurations/2,
         list_logging_configurations/3,
         list_regex_pattern_sets/2,
         list_regex_pattern_sets/3,
         list_resources_for_web_acl/2,
         list_resources_for_web_acl/3,
         list_rule_groups/2,
         list_rule_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_web_acls/2,
         list_web_acls/3,
         put_logging_configuration/2,
         put_logging_configuration/3,
         put_permission_policy/2,
         put_permission_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_ip_set/2,
         update_ip_set/3,
         update_regex_pattern_set/2,
         update_regex_pattern_set/3,
         update_rule_group/2,
         update_rule_group/3,
         update_web_acl/2,
         update_web_acl/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Associates a Web ACL with a regional application resource, to protect the
%% resource. A regional application can be an Application Load Balancer
%% (ALB), an API Gateway REST API, or an AppSync GraphQL API.
%%
%% For AWS CloudFront, don't use this call. Instead, use your CloudFront
%% distribution configuration. To associate a Web ACL, in the CloudFront call
%% `UpdateDistribution', set the web ACL ID to the Amazon Resource Name (ARN)
%% of the Web ACL. For information, see UpdateDistribution.
associate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_web_acl(Client, Input, []).
associate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateWebACL">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Returns the web ACL capacity unit (WCU) requirements for a specified scope
%% and set of rules. You can use this to check the capacity requirements for
%% the rules you want to use in a `RuleGroup' or `WebACL'.
%%
%% AWS WAF uses WCUs to calculate and control the operating resources that
%% are used to run your rules, rule groups, and web ACLs. AWS WAF calculates
%% capacity differently for each rule type, to reflect the relative cost of
%% each rule. Simple rules that cost little to run use fewer WCUs than more
%% complex rules that use more processing power. Rule group capacity is fixed
%% at creation, which helps users plan their web ACL WCU usage when they use
%% a rule group. The WCU limit for web ACLs is 1,500.
check_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_capacity(Client, Input, []).
check_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckCapacity">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Creates an `IPSet', which you use to identify web requests that originate
%% from specific IP addresses or ranges of IP addresses. For example, if
%% you're receiving a lot of requests from a ranges of IP addresses, you can
%% configure AWS WAF to block them using an IPSet that lists those IP
%% addresses.
create_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ip_set(Client, Input, []).
create_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIPSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Creates a `RegexPatternSet', which you reference in a
%% `RegexPatternSetReferenceStatement', to have AWS WAF inspect a web request
%% component for the specified patterns.
create_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_pattern_set(Client, Input, []).
create_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexPatternSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Creates a `RuleGroup' per the specifications provided.
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group, you
%% define an immutable capacity limit. If you update a rule group, you must
%% stay within the capacity. This allows others to reuse the rule group with
%% confidence in its capacity requirements.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Creates a `WebACL' per the specifications provided.
%%
%% A Web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has an action defined (allow, block, or count) for
%% requests that match the statement of the rule. In the Web ACL, you assign
%% a default action to take (allow, block) for any request that does not
%% match any of the rules. The rules in a Web ACL can be a combination of the
%% types `Rule', `RuleGroup', and managed rule group. You can associate a Web
%% ACL with one or more AWS resources to protect. The resources can be Amazon
%% CloudFront, an Amazon API Gateway REST API, an Application Load Balancer,
%% or an AWS AppSync GraphQL API.
create_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_acl(Client, Input, []).
create_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACL">>, Input, Options).

%% @doc Deletes all rule groups that are managed by AWS Firewall Manager for
%% the specified web ACL.
%%
%% You can only use this if `ManagedByFirewallManager' is false in the
%% specified `WebACL'.
delete_firewall_manager_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_manager_rule_groups(Client, Input, []).
delete_firewall_manager_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallManagerRuleGroups">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Deletes the specified `IPSet'.
delete_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ip_set(Client, Input, []).
delete_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIPSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Deletes the `LoggingConfiguration' from the specified web ACL.
delete_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_logging_configuration(Client, Input, []).
delete_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoggingConfiguration">>, Input, Options).

%% @doc Permanently deletes an IAM policy from the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
delete_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_policy(Client, Input, []).
delete_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionPolicy">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Deletes the specified `RegexPatternSet'.
delete_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_pattern_set(Client, Input, []).
delete_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexPatternSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Deletes the specified `RuleGroup'.
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Deletes the specified `WebACL'.
%%
%% You can only use this if `ManagedByFirewallManager' is false in the
%% specified `WebACL'.
delete_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_acl(Client, Input, []).
delete_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebACL">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Provides high-level information for a managed rule group, including
%% descriptions of the rules.
describe_managed_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_rule_group(Client, Input, []).
describe_managed_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedRuleGroup">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Disassociates a Web ACL from a regional application resource. A regional
%% application can be an Application Load Balancer (ALB), an API Gateway REST
%% API, or an AppSync GraphQL API.
%%
%% For AWS CloudFront, don't use this call. Instead, use your CloudFront
%% distribution configuration. To disassociate a Web ACL, provide an empty
%% web ACL ID in the CloudFront call `UpdateDistribution'. For information,
%% see UpdateDistribution.
disassociate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_web_acl(Client, Input, []).
disassociate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateWebACL">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the specified `IPSet'.
get_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ip_set(Client, Input, []).
get_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIPSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Returns the `LoggingConfiguration' for the specified web ACL.
get_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_configuration(Client, Input, []).
get_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingConfiguration">>, Input, Options).

%% @doc Returns the IAM policy that is attached to the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
get_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permission_policy(Client, Input, []).
get_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionPolicy">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the keys that are currently blocked by a rate-based rule. The
%% maximum number of managed keys that can be blocked for a single rate-based
%% rule is 10,000. If more than 10,000 addresses exceed the rate limit, those
%% with the highest rates are blocked.
get_rate_based_statement_managed_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_statement_managed_keys(Client, Input, []).
get_rate_based_statement_managed_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedStatementManagedKeys">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the specified `RegexPatternSet'.
get_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_pattern_set(Client, Input, []).
get_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexPatternSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the specified `RuleGroup'.
get_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule_group(Client, Input, []).
get_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRuleGroup">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Gets detailed information about a specified number of requests--a
%% sample--that AWS WAF randomly selects from among the first 5,000 requests
%% that your AWS resource received during a time range that you choose. You
%% can specify a sample size of up to 500 requests, and you can specify any
%% time range in the previous three hours.
%%
%% `GetSampledRequests' returns a time range, which is usually the time range
%% that you specified. However, if your resource (such as a CloudFront
%% distribution) received 5,000 requests before the specified time range
%% elapsed, `GetSampledRequests' returns an updated time range. This new time
%% range indicates the actual period during which AWS WAF selected the
%% requests in the sample.
get_sampled_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sampled_requests(Client, Input, []).
get_sampled_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSampledRequests">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the specified `WebACL'.
get_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl(Client, Input, []).
get_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACL">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the `WebACL' for the specified resource.
get_web_acl_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl_for_resource(Client, Input, []).
get_web_acl_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACLForResource">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of managed rule groups that are available for you to
%% use. This list includes all AWS Managed Rules rule groups and the AWS
%% Marketplace managed rule groups that you're subscribed to.
list_available_managed_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_managed_rule_groups(Client, Input, []).
list_available_managed_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagedRuleGroups">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of `IPSetSummary' objects for the IP sets that you
%% manage.
list_ip_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ip_sets(Client, Input, []).
list_ip_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIPSets">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of your `LoggingConfiguration' objects.
list_logging_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_logging_configurations(Client, Input, []).
list_logging_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLoggingConfigurations">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of `RegexPatternSetSummary' objects for the regex
%% pattern sets that you manage.
list_regex_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_pattern_sets(Client, Input, []).
list_regex_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexPatternSets">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of the Amazon Resource Names (ARNs) for the regional
%% resources that are associated with the specified web ACL. If you want the
%% list of AWS CloudFront resources, use the AWS CloudFront call
%% `ListDistributionsByWebACLId'.
list_resources_for_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_for_web_acl(Client, Input, []).
list_resources_for_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesForWebACL">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of `RuleGroupSummary' objects for the rule groups that
%% you manage.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves the `TagInfoForResource' for the specified resource. Tags are
%% key:value pairs that you can use to categorize and manage your resources,
%% for purposes like billing. For example, you might set the tag key to
%% "customer" and the value to the customer name or ID. You can specify one
%% or more tags to add to each AWS resource, up to 50 tags for a resource.
%%
%% You can tag the AWS resources that you manage through AWS WAF: web ACLs,
%% rule groups, IP sets, and regex pattern sets. You can't manage or view
%% tags through the AWS WAF console.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Retrieves an array of `WebACLSummary' objects for the web ACLs that you
%% manage.
list_web_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_acls(Client, Input, []).
list_web_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebACLs">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Enables the specified `LoggingConfiguration', to start logging from a web
%% ACL, according to the configuration provided.
%%
%% You can access information about all traffic that AWS WAF inspects using
%% the following steps:
%%
%% <ol> <li> Create an Amazon Kinesis Data Firehose.
%%
%% Create the data firehose with a PUT source and in the Region that you are
%% operating. If you are capturing logs for Amazon CloudFront, always create
%% the firehose in US East (N. Virginia).
%%
%% Give the data firehose a name that starts with the prefix `aws-waf-logs-'.
%% For example, `aws-waf-logs-us-east-2-analytics'.
%%
%% Do not create the data firehose using a `Kinesis stream' as your source.
%%
%% </li> <li> Associate that firehose to your web ACL using a
%% `PutLoggingConfiguration' request.
%%
%% </li> </ol> When you successfully enable logging using a
%% `PutLoggingConfiguration' request, AWS WAF will create a service linked
%% role with the necessary permissions to write logs to the Amazon Kinesis
%% Data Firehose. For more information, see Logging Web ACL Traffic
%% Information in the AWS WAF Developer Guide.
put_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_configuration(Client, Input, []).
put_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingConfiguration">>, Input, Options).

%% @doc Attaches an IAM policy to the specified resource.
%%
%% Use this to share a rule group across accounts.
%%
%% You must be the owner of the rule group to perform this operation.
%%
%% This action is subject to the following restrictions:
%%
%% <ul> <li> You can attach only one policy with each `PutPermissionPolicy'
%% request.
%%
%% </li> <li> The ARN in the request must be a valid WAF `RuleGroup' ARN and
%% the rule group must exist in the same region.
%%
%% </li> <li> The user making the request must be the owner of the rule
%% group.
%%
%% </li> </ul>
put_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission_policy(Client, Input, []).
put_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionPolicy">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Associates tags with the specified AWS resource. Tags are key:value pairs
%% that you can use to categorize and manage your resources, for purposes
%% like billing. For example, you might set the tag key to "customer" and the
%% value to the customer name or ID. You can specify one or more tags to add
%% to each AWS resource, up to 50 tags for a resource.
%%
%% You can tag the AWS resources that you manage through AWS WAF: web ACLs,
%% rule groups, IP sets, and regex pattern sets. You can't manage or view
%% tags through the AWS WAF console.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Disassociates tags from an AWS resource. Tags are key:value pairs that you
%% can associate with AWS resources. For example, the tag key might be
%% "customer" and the tag value might be "companyA." You can specify one or
%% more tags to add to each container. You can add up to 50 tags to each AWS
%% resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Updates the specified `IPSet'.
update_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ip_set(Client, Input, []).
update_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIPSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Updates the specified `RegexPatternSet'.
update_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_pattern_set(Client, Input, []).
update_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexPatternSet">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Updates the specified `RuleGroup'.
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group, you
%% define an immutable capacity limit. If you update a rule group, you must
%% stay within the capacity. This allows others to reuse the rule group with
%% confidence in its capacity requirements.
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc This is the latest version of AWS WAF, named AWS WAFV2, released in
%% November, 2019.
%%
%% For information, including how to migrate your AWS WAF resources from the
%% prior release, see the AWS WAF Developer Guide.
%%
%% Updates the specified `WebACL'.
%%
%% A Web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has an action defined (allow, block, or count) for
%% requests that match the statement of the rule. In the Web ACL, you assign
%% a default action to take (allow, block) for any request that does not
%% match any of the rules. The rules in a Web ACL can be a combination of the
%% types `Rule', `RuleGroup', and managed rule group. You can associate a Web
%% ACL with one or more AWS resources to protect. The resources can be Amazon
%% CloudFront, an Amazon API Gateway REST API, an Application Load Balancer,
%% or an AWS AppSync GraphQL API.
update_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_acl(Client, Input, []).
update_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebACL">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"wafv2">>},
    Host = build_host(<<"wafv2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSWAF_20190729.", Action/binary>>}
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
