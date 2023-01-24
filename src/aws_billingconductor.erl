%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Billing Conductor is a fully managed service that
%% you can use to customize a pro forma version of your billing data each
%% month, to accurately show or chargeback your end customers.
%%
%% Amazon Web Services Billing Conductor doesn't change the way you're billed
%% by Amazon Web Services each month by design. Instead, it provides you with
%% a mechanism to configure, generate, and display rates to certain customers
%% over a given billing period. You can also analyze the difference between
%% the rates you apply to your accounting groupings relative to your actual
%% rates from Amazon Web Services. As a result of your Amazon Web Services
%% Billing Conductor configuration, the payer account can also see the custom
%% rate applied on the billing details page of the Amazon Web Services
%% Billing console, or configure a cost and usage report per billing group.
%%
%% This documentation shows how you can configure Amazon Web Services Billing
%% Conductor using its API. For more information about using the Amazon Web
%% Services Billing Conductor user interface, see the Amazon Web Services
%% Billing Conductor User Guide.
-module(aws_billingconductor).

-export([associate_accounts/2,
         associate_accounts/3,
         associate_pricing_rules/2,
         associate_pricing_rules/3,
         batch_associate_resources_to_custom_line_item/2,
         batch_associate_resources_to_custom_line_item/3,
         batch_disassociate_resources_from_custom_line_item/2,
         batch_disassociate_resources_from_custom_line_item/3,
         create_billing_group/2,
         create_billing_group/3,
         create_custom_line_item/2,
         create_custom_line_item/3,
         create_pricing_plan/2,
         create_pricing_plan/3,
         create_pricing_rule/2,
         create_pricing_rule/3,
         delete_billing_group/2,
         delete_billing_group/3,
         delete_custom_line_item/2,
         delete_custom_line_item/3,
         delete_pricing_plan/2,
         delete_pricing_plan/3,
         delete_pricing_rule/2,
         delete_pricing_rule/3,
         disassociate_accounts/2,
         disassociate_accounts/3,
         disassociate_pricing_rules/2,
         disassociate_pricing_rules/3,
         list_account_associations/2,
         list_account_associations/3,
         list_billing_group_cost_reports/2,
         list_billing_group_cost_reports/3,
         list_billing_groups/2,
         list_billing_groups/3,
         list_custom_line_item_versions/2,
         list_custom_line_item_versions/3,
         list_custom_line_items/2,
         list_custom_line_items/3,
         list_pricing_plans/2,
         list_pricing_plans/3,
         list_pricing_plans_associated_with_pricing_rule/2,
         list_pricing_plans_associated_with_pricing_rule/3,
         list_pricing_rules/2,
         list_pricing_rules/3,
         list_pricing_rules_associated_to_pricing_plan/2,
         list_pricing_rules_associated_to_pricing_plan/3,
         list_resources_associated_to_custom_line_item/2,
         list_resources_associated_to_custom_line_item/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_billing_group/2,
         update_billing_group/3,
         update_custom_line_item/2,
         update_custom_line_item/3,
         update_pricing_plan/2,
         update_pricing_plan/3,
         update_pricing_rule/2,
         update_pricing_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Connects an array of account IDs in a consolidated billing family to
%% a predefined billing group.
%%
%% The account IDs must be a part of the consolidated billing family during
%% the current month, and not already associated with another billing group.
%% The maximum number of accounts that can be associated in one call is 30.
associate_accounts(Client, Input) ->
    associate_accounts(Client, Input, []).
associate_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associate-accounts"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Connects an array of `PricingRuleArns' to a defined `PricingPlan'.
%%
%% The maximum number `PricingRuleArn' that can be associated in one call is
%% 30.
associate_pricing_rules(Client, Input) ->
    associate_pricing_rules(Client, Input, []).
associate_pricing_rules(Client, Input0, Options0) ->
    Method = put,
    Path = ["/associate-pricing-rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a batch of resources to a percentage custom line item.
batch_associate_resources_to_custom_line_item(Client, Input) ->
    batch_associate_resources_to_custom_line_item(Client, Input, []).
batch_associate_resources_to_custom_line_item(Client, Input0, Options0) ->
    Method = put,
    Path = ["/batch-associate-resources-to-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a batch of resources from a percentage custom line
%% item.
batch_disassociate_resources_from_custom_line_item(Client, Input) ->
    batch_disassociate_resources_from_custom_line_item(Client, Input, []).
batch_disassociate_resources_from_custom_line_item(Client, Input0, Options0) ->
    Method = put,
    Path = ["/batch-disassociate-resources-from-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a billing group that resembles a consolidated billing family
%% that Amazon Web Services charges, based off of the predefined pricing plan
%% computation.
create_billing_group(Client, Input) ->
    create_billing_group(Client, Input, []).
create_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-billing-group"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom line item that can be used to create a one-time
%% fixed charge that can be applied to a single billing group for the current
%% or previous billing period.
%%
%% The one-time fixed charge is either a fee or discount.
create_custom_line_item(Client, Input) ->
    create_custom_line_item(Client, Input, []).
create_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a pricing plan that is used for computing Amazon Web Services
%% charges for billing groups.
create_pricing_plan(Client, Input) ->
    create_pricing_plan(Client, Input, []).
create_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-pricing-plan"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a pricing rule can be associated to a pricing plan, or a set
%% of pricing plans.
create_pricing_rule(Client, Input) ->
    create_pricing_rule(Client, Input, []).
create_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-pricing-rule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a billing group.
delete_billing_group(Client, Input) ->
    delete_billing_group(Client, Input, []).
delete_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-billing-group"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the custom line item identified by the given ARN in the
%% current, or previous billing period.
delete_custom_line_item(Client, Input) ->
    delete_custom_line_item(Client, Input, []).
delete_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a pricing plan.
%%
%% The pricing plan must not be associated with any billing groups to delete
%% successfully.
delete_pricing_plan(Client, Input) ->
    delete_pricing_plan(Client, Input, []).
delete_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-pricing-plan"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the pricing rule that's identified by the input Amazon
%% Resource Name (ARN).
delete_pricing_rule(Client, Input) ->
    delete_pricing_rule(Client, Input, []).
delete_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-pricing-rule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified list of account IDs from the given billing
%% group.
disassociate_accounts(Client, Input) ->
    disassociate_accounts(Client, Input, []).
disassociate_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociate-accounts"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a list of pricing rules from a pricing plan.
disassociate_pricing_rules(Client, Input) ->
    disassociate_pricing_rules(Client, Input, []).
disassociate_pricing_rules(Client, Input0, Options0) ->
    Method = put,
    Path = ["/disassociate-pricing-rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This is a paginated call to list linked accounts that are linked to
%% the payer account for the specified time period.
%%
%% If no information is provided, the current billing period is used. The
%% response will optionally include the billing group that's associated with
%% the linked account.
list_account_associations(Client, Input) ->
    list_account_associations(Client, Input, []).
list_account_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-account-associations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to retrieve a summary report of actual Amazon Web
%% Services charges and the calculated Amazon Web Services charges based on
%% the associated pricing plan of a billing group.
list_billing_group_cost_reports(Client, Input) ->
    list_billing_group_cost_reports(Client, Input, []).
list_billing_group_cost_reports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-billing-group-cost-reports"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to retrieve a list of billing groups for the given
%% billing period.
%%
%% If you don't provide a billing group, the current billing period is used.
list_billing_groups(Client, Input) ->
    list_billing_groups(Client, Input, []).
list_billing_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-billing-groups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get a list of all custom line item versions.
list_custom_line_item_versions(Client, Input) ->
    list_custom_line_item_versions(Client, Input, []).
list_custom_line_item_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-custom-line-item-versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get a list of all custom line items (FFLIs) for
%% the given billing period.
%%
%% If you don't provide a billing period, the current billing period is used.
list_custom_line_items(Client, Input) ->
    list_custom_line_items(Client, Input, []).
list_custom_line_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-custom-line-items"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A paginated call to get pricing plans for the given billing period.
%%
%% If you don't provide a billing period, the current billing period is used.
list_pricing_plans(Client, Input) ->
    list_pricing_plans(Client, Input, []).
list_pricing_plans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-plans"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A list of the pricing plans that are associated with a pricing rule.
list_pricing_plans_associated_with_pricing_rule(Client, Input) ->
    list_pricing_plans_associated_with_pricing_rule(Client, Input, []).
list_pricing_plans_associated_with_pricing_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-plans-associated-with-pricing-rule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a pricing rule that can be associated to a pricing plan, or
%% set of pricing plans.
list_pricing_rules(Client, Input) ->
    list_pricing_rules(Client, Input, []).
list_pricing_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the pricing rules that are associated with a pricing plan.
list_pricing_rules_associated_to_pricing_plan(Client, Input) ->
    list_pricing_rules_associated_to_pricing_plan(Client, Input, []).
list_pricing_rules_associated_to_pricing_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-pricing-rules-associated-to-pricing-plan"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List the resources that are associated to a custom line item.
list_resources_associated_to_custom_line_item(Client, Input) ->
    list_resources_associated_to_custom_line_item(Client, Input, []).
list_resources_associated_to_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-resources-associated-to-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A list the tags for a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Associates the specified tags to a resource with the specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This updates an existing billing group.
update_billing_group(Client, Input) ->
    update_billing_group(Client, Input, []).
update_billing_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-billing-group"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update an existing custom line item in the current or previous
%% billing period.
update_custom_line_item(Client, Input) ->
    update_custom_line_item(Client, Input, []).
update_custom_line_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-custom-line-item"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This updates an existing pricing plan.
update_pricing_plan(Client, Input) ->
    update_pricing_plan(Client, Input, []).
update_pricing_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/update-pricing-plan"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing pricing rule.
update_pricing_rule(Client, Input) ->
    update_pricing_rule(Client, Input, []).
update_pricing_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/update-pricing-rule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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
    Client1 = Client#{service => <<"billingconductor">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"billingconductor">>, Client1),
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
  jsx:encode(Input).
