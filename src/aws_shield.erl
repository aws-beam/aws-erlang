%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Shield Advanced
%%
%% This is the Shield Advanced API Reference.
%%
%% This guide is for developers who need detailed information about the
%% Shield Advanced API actions, data types, and errors. For detailed
%% information about WAF and Shield Advanced features and an overview of how
%% to use the WAF and Shield Advanced APIs, see the WAF and Shield Developer
%% Guide.
-module(aws_shield).

-export([associate_drt_log_bucket/2,
         associate_drt_log_bucket/3,
         associate_drt_role/2,
         associate_drt_role/3,
         associate_health_check/2,
         associate_health_check/3,
         associate_proactive_engagement_details/2,
         associate_proactive_engagement_details/3,
         create_protection/2,
         create_protection/3,
         create_protection_group/2,
         create_protection_group/3,
         create_subscription/2,
         create_subscription/3,
         delete_protection/2,
         delete_protection/3,
         delete_protection_group/2,
         delete_protection_group/3,
         delete_subscription/2,
         delete_subscription/3,
         describe_attack/2,
         describe_attack/3,
         describe_attack_statistics/2,
         describe_attack_statistics/3,
         describe_drt_access/2,
         describe_drt_access/3,
         describe_emergency_contact_settings/2,
         describe_emergency_contact_settings/3,
         describe_protection/2,
         describe_protection/3,
         describe_protection_group/2,
         describe_protection_group/3,
         describe_subscription/2,
         describe_subscription/3,
         disable_proactive_engagement/2,
         disable_proactive_engagement/3,
         disassociate_drt_log_bucket/2,
         disassociate_drt_log_bucket/3,
         disassociate_drt_role/2,
         disassociate_drt_role/3,
         disassociate_health_check/2,
         disassociate_health_check/3,
         enable_proactive_engagement/2,
         enable_proactive_engagement/3,
         get_subscription_state/2,
         get_subscription_state/3,
         list_attacks/2,
         list_attacks/3,
         list_protection_groups/2,
         list_protection_groups/3,
         list_protections/2,
         list_protections/3,
         list_resources_in_protection_group/2,
         list_resources_in_protection_group/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_emergency_contact_settings/2,
         update_emergency_contact_settings/3,
         update_protection_group/2,
         update_protection_group/3,
         update_subscription/2,
         update_subscription/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Authorizes the Shield Response Team (SRT) to access the specified
%% Amazon S3 bucket containing log data such as Application Load Balancer
%% access logs, CloudFront logs, or logs from third party sources.
%%
%% You can associate up to 10 Amazon S3 buckets with your subscription.
%%
%% To use the services of the SRT and make an `AssociateDRTLogBucket'
%% request, you must be subscribed to the Business Support plan or the
%% Enterprise Support plan.
associate_drt_log_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_drt_log_bucket(Client, Input, []).
associate_drt_log_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDRTLogBucket">>, Input, Options).

%% @doc Authorizes the Shield Response Team (SRT) using the specified role,
%% to access your Amazon Web Services account to assist with DDoS attack
%% mitigation during potential attacks.
%%
%% This enables the SRT to inspect your WAF configuration and create or
%% update WAF rules and web ACLs.
%%
%% You can associate only one `RoleArn' with your subscription. If you submit
%% an `AssociateDRTRole' request for an account that already has an
%% associated role, the new `RoleArn' will replace the existing `RoleArn'.
%%
%% Prior to making the `AssociateDRTRole' request, you must attach the
%% AWSShieldDRTAccessPolicy managed policy to the role you will specify in
%% the request. For more information see Attaching and Detaching IAM
%% Policies. The role must also trust the service principal `
%% drt.shield.amazonaws.com'. For more information, see IAM JSON Policy
%% Elements: Principal.
%%
%% The SRT will have access only to your WAF and Shield resources. By
%% submitting this request, you authorize the SRT to inspect your WAF and
%% Shield configuration and create and update WAF rules and web ACLs on your
%% behalf. The SRT takes these actions only if explicitly authorized by you.
%%
%% You must have the `iam:PassRole' permission to make an `AssociateDRTRole'
%% request. For more information, see Granting a User Permissions to Pass a
%% Role to an Amazon Web Services Service.
%%
%% To use the services of the SRT and make an `AssociateDRTRole' request, you
%% must be subscribed to the Business Support plan or the Enterprise Support
%% plan.
associate_drt_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_drt_role(Client, Input, []).
associate_drt_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDRTRole">>, Input, Options).

%% @doc Adds health-based detection to the Shield Advanced protection for a
%% resource.
%%
%% Shield Advanced health-based detection uses the health of your Amazon Web
%% Services resource to improve responsiveness and accuracy in attack
%% detection and mitigation.
%%
%% You define the health check in Route 53 and then associate it with your
%% Shield Advanced protection. For more information, see Shield Advanced
%% Health-Based Detection in the WAF Developer Guide.
associate_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_health_check(Client, Input, []).
associate_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateHealthCheck">>, Input, Options).

%% @doc Initializes proactive engagement and sets the list of contacts for
%% the Shield Response Team (SRT) to use.
%%
%% You must provide at least one phone number in the emergency contact list.
%%
%% After you have initialized proactive engagement using this call, to
%% disable or enable proactive engagement, use the calls
%% `DisableProactiveEngagement' and `EnableProactiveEngagement'.
%%
%% This call defines the list of email addresses and phone numbers that the
%% SRT can use to contact you for escalations to the SRT and to initiate
%% proactive customer support.
%%
%% The contacts that you provide in the request replace any contacts that
%% were already defined. If you already have contacts defined and want to use
%% them, retrieve the list using `DescribeEmergencyContactSettings' and then
%% provide it to this call.
associate_proactive_engagement_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_proactive_engagement_details(Client, Input, []).
associate_proactive_engagement_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateProactiveEngagementDetails">>, Input, Options).

%% @doc Enables Shield Advanced for a specific Amazon Web Services resource.
%%
%% The resource can be an Amazon CloudFront distribution, Elastic Load
%% Balancing load balancer, Global Accelerator accelerator, Elastic IP
%% Address, or an Amazon Route 53 hosted zone.
%%
%% You can add protection to only a single resource with each
%% CreateProtection request. If you want to add protection to multiple
%% resources at once, use the WAF console. For more information see Getting
%% Started with Shield Advanced and Add Shield Advanced Protection to more
%% Amazon Web Services Resources.
create_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_protection(Client, Input, []).
create_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProtection">>, Input, Options).

%% @doc Creates a grouping of protected resources so they can be handled as a
%% collective.
%%
%% This resource grouping improves the accuracy of detection and reduces
%% false positives.
create_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_protection_group(Client, Input, []).
create_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProtectionGroup">>, Input, Options).

%% @doc Activates Shield Advanced for an account.
%%
%% When you initally create a subscription, your subscription is set to be
%% automatically renewed at the end of the existing subscription period. You
%% can change this by submitting an `UpdateSubscription' request.
create_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subscription(Client, Input, []).
create_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubscription">>, Input, Options).

%% @doc Deletes an Shield Advanced `Protection'.
delete_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protection(Client, Input, []).
delete_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtection">>, Input, Options).

%% @doc Removes the specified protection group.
delete_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_protection_group(Client, Input, []).
delete_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProtectionGroup">>, Input, Options).

%% @doc Removes Shield Advanced from an account.
%%
%% Shield Advanced requires a 1-year subscription commitment. You cannot
%% delete a subscription prior to the completion of that commitment.
delete_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscription(Client, Input, []).
delete_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscription">>, Input, Options).

%% @doc Describes the details of a DDoS attack.
describe_attack(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attack(Client, Input, []).
describe_attack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttack">>, Input, Options).

%% @doc Provides information about the number and type of attacks Shield has
%% detected in the last year for all resources that belong to your account,
%% regardless of whether you've defined Shield protections for them.
%%
%% This operation is available to Shield customers as well as to Shield
%% Advanced customers.
%%
%% The operation returns data for the time range of midnight UTC, one year
%% ago, to midnight UTC, today. For example, if the current time is
%% `2020-10-26 15:39:32 PDT', equal to `2020-10-26 22:39:32 UTC', then the
%% time range for the attack data returned is from `2019-10-26 00:00:00 UTC'
%% to `2020-10-26 00:00:00 UTC'.
%%
%% The time range indicates the period covered by the attack statistics data
%% items.
describe_attack_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attack_statistics(Client, Input, []).
describe_attack_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttackStatistics">>, Input, Options).

%% @doc Returns the current role and list of Amazon S3 log buckets used by
%% the Shield Response Team (SRT) to access your Amazon Web Services account
%% while assisting with attack mitigation.
describe_drt_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_drt_access(Client, Input, []).
describe_drt_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDRTAccess">>, Input, Options).

%% @doc A list of email addresses and phone numbers that the Shield Response
%% Team (SRT) can use to contact you if you have proactive engagement
%% enabled, for escalations to the SRT and to initiate proactive customer
%% support.
describe_emergency_contact_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_emergency_contact_settings(Client, Input, []).
describe_emergency_contact_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEmergencyContactSettings">>, Input, Options).

%% @doc Lists the details of a `Protection' object.
describe_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_protection(Client, Input, []).
describe_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProtection">>, Input, Options).

%% @doc Returns the specification for the specified protection group.
describe_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_protection_group(Client, Input, []).
describe_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProtectionGroup">>, Input, Options).

%% @doc Provides details about the Shield Advanced subscription for an
%% account.
describe_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscription(Client, Input, []).
describe_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscription">>, Input, Options).

%% @doc Removes authorization from the Shield Response Team (SRT) to notify
%% contacts about escalations to the SRT and to initiate proactive customer
%% support.
disable_proactive_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_proactive_engagement(Client, Input, []).
disable_proactive_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableProactiveEngagement">>, Input, Options).

%% @doc Removes the Shield Response Team's (SRT) access to the specified
%% Amazon S3 bucket containing the logs that you shared previously.
%%
%% To make a `DisassociateDRTLogBucket' request, you must be subscribed to
%% the Business Support plan or the Enterprise Support plan. However, if you
%% are not subscribed to one of these support plans, but had been previously
%% and had granted the SRT access to your account, you can submit a
%% `DisassociateDRTLogBucket' request to remove this access.
disassociate_drt_log_bucket(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_drt_log_bucket(Client, Input, []).
disassociate_drt_log_bucket(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDRTLogBucket">>, Input, Options).

%% @doc Removes the Shield Response Team's (SRT) access to your Amazon Web
%% Services account.
%%
%% To make a `DisassociateDRTRole' request, you must be subscribed to the
%% Business Support plan or the Enterprise Support plan. However, if you are
%% not subscribed to one of these support plans, but had been previously and
%% had granted the SRT access to your account, you can submit a
%% `DisassociateDRTRole' request to remove this access.
disassociate_drt_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_drt_role(Client, Input, []).
disassociate_drt_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDRTRole">>, Input, Options).

%% @doc Removes health-based detection from the Shield Advanced protection
%% for a resource.
%%
%% Shield Advanced health-based detection uses the health of your Amazon Web
%% Services resource to improve responsiveness and accuracy in attack
%% detection and mitigation.
%%
%% You define the health check in Route 53 and then associate or disassociate
%% it with your Shield Advanced protection. For more information, see Shield
%% Advanced Health-Based Detection in the WAF Developer Guide.
disassociate_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_health_check(Client, Input, []).
disassociate_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateHealthCheck">>, Input, Options).

%% @doc Authorizes the Shield Response Team (SRT) to use email and phone to
%% notify contacts about escalations to the SRT and to initiate proactive
%% customer support.
enable_proactive_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_proactive_engagement(Client, Input, []).
enable_proactive_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableProactiveEngagement">>, Input, Options).

%% @doc Returns the `SubscriptionState', either `Active' or `Inactive'.
get_subscription_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subscription_state(Client, Input, []).
get_subscription_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubscriptionState">>, Input, Options).

%% @doc Returns all ongoing DDoS attacks or all DDoS attacks during a
%% specified time period.
list_attacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_attacks(Client, Input, []).
list_attacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAttacks">>, Input, Options).

%% @doc Retrieves the `ProtectionGroup' objects for the account.
list_protection_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protection_groups(Client, Input, []).
list_protection_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtectionGroups">>, Input, Options).

%% @doc Lists all `Protection' objects for the account.
list_protections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_protections(Client, Input, []).
list_protections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProtections">>, Input, Options).

%% @doc Retrieves the resources that are included in the protection group.
list_resources_in_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_in_protection_group(Client, Input, []).
list_resources_in_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesInProtectionGroup">>, Input, Options).

%% @doc Gets information about Amazon Web Services tags for a specified
%% Amazon Resource Name (ARN) in Shield.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds or updates tags for a resource in Shield.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from a resource in Shield.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the details of the list of email addresses and phone numbers
%% that the Shield Response Team (SRT) can use to contact you if you have
%% proactive engagement enabled, for escalations to the SRT and to initiate
%% proactive customer support.
update_emergency_contact_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_emergency_contact_settings(Client, Input, []).
update_emergency_contact_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEmergencyContactSettings">>, Input, Options).

%% @doc Updates an existing protection group.
%%
%% A protection group is a grouping of protected resources so they can be
%% handled as a collective. This resource grouping improves the accuracy of
%% detection and reduces false positives.
update_protection_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_protection_group(Client, Input, []).
update_protection_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProtectionGroup">>, Input, Options).

%% @doc Updates the details of an existing subscription.
%%
%% Only enter values for parameters you want to change. Empty parameters are
%% not updated.
update_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscription(Client, Input, []).
update_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscription">>, Input, Options).

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
    Client1 = Client#{service => <<"shield">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"shield">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSShield_20160616.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
