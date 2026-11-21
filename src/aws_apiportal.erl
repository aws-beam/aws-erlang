%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc API Portal discovers the APIs running in your AWS accounts and
%% organization, lets you manage them as Managed APIs, and publishes their
%% documentation to developer portals.
-module(aws_apiportal).

-export([associate_managed_apis/3,
         associate_managed_apis/4,
         create_managed_api/2,
         create_managed_api/3,
         create_portal/2,
         create_portal/3,
         create_portal_preview/3,
         create_portal_preview/4,
         create_product/2,
         create_product/3,
         create_product_api_page/3,
         create_product_api_page/4,
         create_product_page/3,
         create_product_page/4,
         delete_discovery_configuration/2,
         delete_discovery_configuration/3,
         delete_managed_api/3,
         delete_managed_api/4,
         delete_organization_discovery_configuration/2,
         delete_organization_discovery_configuration/3,
         delete_portal/3,
         delete_portal/4,
         delete_product/3,
         delete_product/4,
         delete_product_api_page/4,
         delete_product_api_page/5,
         delete_product_page/4,
         delete_product_page/5,
         delete_product_sharing_policy/3,
         delete_product_sharing_policy/4,
         disassociate_managed_apis/3,
         disassociate_managed_apis/4,
         get_api_inventory_item/6,
         get_api_inventory_item/8,
         get_api_inventory_item/9,
         get_discovery_configuration/1,
         get_discovery_configuration/3,
         get_discovery_configuration/4,
         get_managed_api/2,
         get_managed_api/4,
         get_managed_api/5,
         get_organization_discovery_configuration/1,
         get_organization_discovery_configuration/3,
         get_organization_discovery_configuration/4,
         get_portal/2,
         get_portal/4,
         get_portal/5,
         get_product/2,
         get_product/4,
         get_product/5,
         get_product_api_page/3,
         get_product_api_page/5,
         get_product_api_page/6,
         get_product_page/3,
         get_product_page/5,
         get_product_page/6,
         get_product_sharing_policy/2,
         get_product_sharing_policy/4,
         get_product_sharing_policy/5,
         list_api_inventory_items/2,
         list_api_inventory_items/3,
         list_discovery_statuses/1,
         list_discovery_statuses/3,
         list_discovery_statuses/4,
         list_managed_api_events/2,
         list_managed_api_events/4,
         list_managed_api_events/5,
         list_managed_apis/1,
         list_managed_apis/3,
         list_managed_apis/4,
         list_portals/1,
         list_portals/3,
         list_portals/4,
         list_product_api_pages/2,
         list_product_api_pages/4,
         list_product_api_pages/5,
         list_product_pages/2,
         list_product_pages/4,
         list_product_pages/5,
         list_products/1,
         list_products/3,
         list_products/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_discovery_configuration/2,
         put_discovery_configuration/3,
         put_organization_discovery_configuration/2,
         put_organization_discovery_configuration/3,
         put_product_sharing_policy/3,
         put_product_sharing_policy/4,
         start_discovery/2,
         start_discovery/3,
         stop_discovery/2,
         stop_discovery/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_portal/3,
         update_portal/4,
         update_portal_publish_status/3,
         update_portal_publish_status/4,
         update_product/3,
         update_product/4,
         update_product_api_page/4,
         update_product_api_page/5,
         update_product_page/4,
         update_product_page/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% a_cm_managed() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"domainName">> => string()
%% }
-type a_cm_managed() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% api_id() :: #{
%%   <<"identifierParts">> => identifier_parts()
%% }
-type api_id() :: #{binary() => any()}.


%% Example:
%% api_inventory_filters() :: #{
%%   <<"discoverySource">> => list(any()),
%%   <<"resourceArn">> => string()
%% }
-type api_inventory_filters() :: #{binary() => any()}.


%% Example:
%% api_inventory_item() :: #{
%%   <<"accountId">> => string(),
%%   <<"classification">> => list(any()),
%%   <<"discoverySource">> => list(any()),
%%   <<"firstSeen">> => [non_neg_integer()],
%%   <<"host">> => string(),
%%   <<"lastSeen">> => [non_neg_integer()],
%%   <<"managedBy">> => list(any()),
%%   <<"method">> => list(any()),
%%   <<"path">> => string(),
%%   <<"port">> => [integer()],
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"visibility">> => list(any()),
%%   <<"wafStatus">> => list(any()),
%%   <<"workloads">> => list(list(any())())
%% }
-type api_inventory_item() :: #{binary() => any()}.


%% Example:
%% api_inventory_item_detail() :: #{
%%   <<"accountId">> => string(),
%%   <<"classification">> => list(any()),
%%   <<"discoverySource">> => list(any()),
%%   <<"host">> => string(),
%%   <<"managedApiId">> => string(),
%%   <<"managedBy">> => list(any()),
%%   <<"method">> => list(any()),
%%   <<"path">> => string(),
%%   <<"port">> => [integer()],
%%   <<"region">> => [string()],
%%   <<"resourceArn">> => string(),
%%   <<"visibility">> => list(any()),
%%   <<"wafStatus">> => list(any()),
%%   <<"workloads">> => list(list(any())())
%% }
-type api_inventory_item_detail() :: #{binary() => any()}.


%% Example:
%% api_page_display_content_response() :: #{
%%   <<"apiUrl">> => string(),
%%   <<"body">> => string(),
%%   <<"operationName">> => string()
%% }
-type api_page_display_content_response() :: #{binary() => any()}.


%% Example:
%% api_selection_configuration() :: #{
%%   <<"apiSelectionMode">> => list(any()),
%%   <<"ruleFilters">> => list(rule_filter())
%% }
-type api_selection_configuration() :: #{binary() => any()}.


%% Example:
%% api_signature() :: #{
%%   <<"hostname">> => [string()],
%%   <<"method">> => list(any()),
%%   <<"path">> => [string()],
%%   <<"port">> => [integer()],
%%   <<"resourceArn">> => string()
%% }
-type api_signature() :: #{binary() => any()}.

%% Example:
%% apiportal_none() :: #{}
-type apiportal_none() :: #{}.


%% Example:
%% associate_managed_apis_request() :: #{
%%   <<"managedApiIds">> := list(string())
%% }
-type associate_managed_apis_request() :: #{binary() => any()}.


%% Example:
%% associate_managed_apis_response() :: #{
%%   <<"failedItems">> => list(failed_managed_api_item())
%% }
-type associate_managed_apis_response() :: #{binary() => any()}.


%% Example:
%% authorization() :: #{
%%   <<"authorizationConfig">> => list(),
%%   <<"fineGrainedAccessControl">> => list(any())
%% }
-type authorization() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% cognito_config() :: #{
%%   <<"appClientId">> => string(),
%%   <<"identityPoolId">> => string(),
%%   <<"userPoolArn">> => string(),
%%   <<"userPoolDomain">> => string()
%% }
-type cognito_config() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_managed_api_request() :: #{
%%   <<"apiSignature">> := api_signature(),
%%   <<"tags">> => map()
%% }
-type create_managed_api_request() :: #{binary() => any()}.


%% Example:
%% create_managed_api_response() :: #{
%%   <<"apiSignature">> => api_signature(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"managedApiArn">> => string(),
%%   <<"managedApiId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_managed_api_response() :: #{binary() => any()}.

%% Example:
%% create_portal_preview_request() :: #{}
-type create_portal_preview_request() :: #{}.


%% Example:
%% create_portal_request() :: #{
%%   <<"authorization">> := authorization(),
%%   <<"endpointConfiguration">> := list(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"logoUri">> => string(),
%%   <<"portalContent">> := portal_content(),
%%   <<"rumAppMonitorName">> => string(),
%%   <<"tags">> => map()
%% }
-type create_portal_request() :: #{binary() => any()}.


%% Example:
%% create_portal_response() :: #{
%%   <<"authorization">> => authorization(),
%%   <<"endpointConfiguration">> => endpoint_configuration_response(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"portalArn">> => string(),
%%   <<"portalContent">> => portal_content(),
%%   <<"portalId">> => string(),
%%   <<"publishDescription">> => string(),
%%   <<"publishStatus">> => list(any()),
%%   <<"publishedAt">> => [non_neg_integer()],
%%   <<"rumAppMonitorName">> => string(),
%%   <<"statusException">> => portal_status_exception(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_portal_response() :: #{binary() => any()}.


%% Example:
%% create_product_api_page_request() :: #{
%%   <<"displayContent">> => list(),
%%   <<"managedApiId">> := string(),
%%   <<"tags">> => map(),
%%   <<"tryItState">> => list(any())
%% }
-type create_product_api_page_request() :: #{binary() => any()}.


%% Example:
%% create_product_api_page_response() :: #{
%%   <<"apiId">> => api_id(),
%%   <<"displayContent">> => api_page_display_content_response(),
%%   <<"productApiPageArn">> => string(),
%%   <<"productApiPageId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusException">> => product_api_page_status_exception(),
%%   <<"tags">> => map(),
%%   <<"tryItState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_product_api_page_response() :: #{binary() => any()}.


%% Example:
%% create_product_page_request() :: #{
%%   <<"displayContent">> := display_content(),
%%   <<"tags">> => map()
%% }
-type create_product_page_request() :: #{binary() => any()}.


%% Example:
%% create_product_page_response() :: #{
%%   <<"displayContent">> => display_content(),
%%   <<"productPageArn">> => string(),
%%   <<"productPageId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_product_page_response() :: #{binary() => any()}.


%% Example:
%% create_product_request() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_product_request() :: #{binary() => any()}.


%% Example:
%% create_product_response() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"displayOrder">> => display_order(),
%%   <<"failureReason">> => list(any()),
%%   <<"productArn">> => string(),
%%   <<"productId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type create_product_response() :: #{binary() => any()}.


%% Example:
%% custom_colors() :: #{
%%   <<"accentColor">> => string(),
%%   <<"backgroundColor">> => string(),
%%   <<"errorValidationColor">> => string(),
%%   <<"headerColor">> => string(),
%%   <<"navigationColor">> => string(),
%%   <<"textColor">> => string()
%% }
-type custom_colors() :: #{binary() => any()}.

%% Example:
%% delete_discovery_configuration_request() :: #{}
-type delete_discovery_configuration_request() :: #{}.

%% Example:
%% delete_managed_api_request() :: #{}
-type delete_managed_api_request() :: #{}.

%% Example:
%% delete_managed_api_response() :: #{}
-type delete_managed_api_response() :: #{}.

%% Example:
%% delete_organization_discovery_configuration_request() :: #{}
-type delete_organization_discovery_configuration_request() :: #{}.

%% Example:
%% delete_portal_request() :: #{}
-type delete_portal_request() :: #{}.

%% Example:
%% delete_product_api_page_request() :: #{}
-type delete_product_api_page_request() :: #{}.

%% Example:
%% delete_product_page_request() :: #{}
-type delete_product_page_request() :: #{}.

%% Example:
%% delete_product_request() :: #{}
-type delete_product_request() :: #{}.

%% Example:
%% delete_product_sharing_policy_request() :: #{}
-type delete_product_sharing_policy_request() :: #{}.


%% Example:
%% disassociate_managed_apis_request() :: #{
%%   <<"managedApiIds">> := list(string())
%% }
-type disassociate_managed_apis_request() :: #{binary() => any()}.


%% Example:
%% disassociate_managed_apis_response() :: #{
%%   <<"failedItems">> => list(failed_managed_api_item())
%% }
-type disassociate_managed_apis_response() :: #{binary() => any()}.


%% Example:
%% discovery_configuration_data() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"discoverySources">> => list(list(any())()),
%%   <<"excludedResources">> => list(string()),
%%   <<"features">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type discovery_configuration_data() :: #{binary() => any()}.


%% Example:
%% discovery_exclusion_filters() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"organizationalUnitIds">> => list(string()),
%%   <<"resourceArns">> => list(string())
%% }
-type discovery_exclusion_filters() :: #{binary() => any()}.


%% Example:
%% discovery_inclusion_filters() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"organizationalUnitIds">> => list(string())
%% }
-type discovery_inclusion_filters() :: #{binary() => any()}.


%% Example:
%% discovery_status() :: #{
%%   <<"accountId">> => string(),
%%   <<"discoverySource">> => list(any()),
%%   <<"failureReason">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type discovery_status() :: #{binary() => any()}.


%% Example:
%% display_content() :: #{
%%   <<"body">> => string(),
%%   <<"title">> => string()
%% }
-type display_content() :: #{binary() => any()}.


%% Example:
%% display_content_overrides() :: #{
%%   <<"apiUrl">> => string(),
%%   <<"body">> => string(),
%%   <<"operationName">> => string()
%% }
-type display_content_overrides() :: #{binary() => any()}.


%% Example:
%% display_order() :: #{
%%   <<"contents">> => list(section()),
%%   <<"overviewPageArn">> => string(),
%%   <<"productPageArns">> => list(string())
%% }
-type display_order() :: #{binary() => any()}.


%% Example:
%% endpoint_configuration_response() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"domainName">> => string(),
%%   <<"portalDefaultDomainName">> => string(),
%%   <<"portalDomainHostedZoneId">> => string()
%% }
-type endpoint_configuration_response() :: #{binary() => any()}.


%% Example:
%% failed_managed_api_item() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => [string()],
%%   <<"managedApiId">> => string()
%% }
-type failed_managed_api_item() :: #{binary() => any()}.


%% Example:
%% get_api_inventory_item_request() :: #{
%%   <<"host">> := string(),
%%   <<"method">> := list(any()),
%%   <<"path">> := string(),
%%   <<"port">> := [integer()],
%%   <<"resourceArn">> := string()
%% }
-type get_api_inventory_item_request() :: #{binary() => any()}.


%% Example:
%% get_api_inventory_item_response() :: #{
%%   <<"item">> => api_inventory_item_detail()
%% }
-type get_api_inventory_item_response() :: #{binary() => any()}.

%% Example:
%% get_discovery_configuration_request() :: #{}
-type get_discovery_configuration_request() :: #{}.


%% Example:
%% get_discovery_configuration_response() :: #{
%%   <<"discoveryConfiguration">> => discovery_configuration_data(),
%%   <<"tags">> => map()
%% }
-type get_discovery_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_managed_api_request() :: #{}
-type get_managed_api_request() :: #{}.


%% Example:
%% get_managed_api_response() :: #{
%%   <<"apiSignature">> => api_signature(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"findings">> => list(managed_api_finding()),
%%   <<"managedApiArn">> => string(),
%%   <<"managedApiId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_managed_api_response() :: #{binary() => any()}.

%% Example:
%% get_organization_discovery_configuration_request() :: #{}
-type get_organization_discovery_configuration_request() :: #{}.


%% Example:
%% get_organization_discovery_configuration_response() :: #{
%%   <<"discoveryConfiguration">> => organization_discovery_configuration_data(),
%%   <<"tags">> => map()
%% }
-type get_organization_discovery_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_portal_request() :: #{}
-type get_portal_request() :: #{}.


%% Example:
%% get_portal_response() :: #{
%%   <<"authorization">> => authorization(),
%%   <<"endpointConfiguration">> => endpoint_configuration_response(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"portalArn">> => string(),
%%   <<"portalContent">> => portal_content(),
%%   <<"portalId">> => string(),
%%   <<"preview">> => preview(),
%%   <<"publishDescription">> => string(),
%%   <<"publishStatus">> => list(any()),
%%   <<"publishedAt">> => [non_neg_integer()],
%%   <<"rumAppMonitorName">> => string(),
%%   <<"statusException">> => portal_status_exception(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_portal_response() :: #{binary() => any()}.


%% Example:
%% get_product_api_page_request() :: #{
%%   <<"includeRawDisplayContent">> => [boolean()],
%%   <<"resourceOwnerAccountId">> => string()
%% }
-type get_product_api_page_request() :: #{binary() => any()}.


%% Example:
%% get_product_api_page_response() :: #{
%%   <<"apiId">> => api_id(),
%%   <<"displayContent">> => api_page_display_content_response(),
%%   <<"productApiPageArn">> => string(),
%%   <<"productApiPageId">> => string(),
%%   <<"rawDisplayContent">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusException">> => product_api_page_status_exception(),
%%   <<"tags">> => map(),
%%   <<"tryItState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_product_api_page_response() :: #{binary() => any()}.


%% Example:
%% get_product_page_request() :: #{
%%   <<"resourceOwnerAccountId">> => string()
%% }
-type get_product_page_request() :: #{binary() => any()}.


%% Example:
%% get_product_page_response() :: #{
%%   <<"displayContent">> => display_content(),
%%   <<"productPageArn">> => string(),
%%   <<"productPageId">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_product_page_response() :: #{binary() => any()}.


%% Example:
%% get_product_request() :: #{
%%   <<"resourceOwnerAccountId">> => string()
%% }
-type get_product_request() :: #{binary() => any()}.


%% Example:
%% get_product_response() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"displayOrder">> => display_order(),
%%   <<"failureReason">> => list(any()),
%%   <<"productArn">> => string(),
%%   <<"productId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_product_response() :: #{binary() => any()}.

%% Example:
%% get_product_sharing_policy_request() :: #{}
-type get_product_sharing_policy_request() :: #{}.


%% Example:
%% get_product_sharing_policy_response() :: #{
%%   <<"policyDocument">> => string(),
%%   <<"productId">> => string(),
%%   <<"tags">> => map()
%% }
-type get_product_sharing_policy_response() :: #{binary() => any()}.


%% Example:
%% identifier_parts() :: #{
%%   <<"method">> => string(),
%%   <<"path">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type identifier_parts() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_api_inventory_items_request() :: #{
%%   <<"filters">> => api_inventory_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_api_inventory_items_request() :: #{binary() => any()}.


%% Example:
%% list_api_inventory_items_response() :: #{
%%   <<"items">> => list(api_inventory_item()),
%%   <<"nextToken">> => string()
%% }
-type list_api_inventory_items_response() :: #{binary() => any()}.


%% Example:
%% list_discovery_statuses_request() :: #{
%%   <<"discoverySource">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_discovery_statuses_request() :: #{binary() => any()}.


%% Example:
%% list_discovery_statuses_response() :: #{
%%   <<"items">> => list(discovery_status()),
%%   <<"nextToken">> => string()
%% }
-type list_discovery_statuses_response() :: #{binary() => any()}.


%% Example:
%% list_managed_api_events_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startedAfter">> => [non_neg_integer()],
%%   <<"startedBefore">> => [non_neg_integer()]
%% }
-type list_managed_api_events_request() :: #{binary() => any()}.


%% Example:
%% list_managed_api_events_response() :: #{
%%   <<"items">> => list(managed_api_event_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_api_events_response() :: #{binary() => any()}.


%% Example:
%% list_managed_apis_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"productId">> => string()
%% }
-type list_managed_apis_request() :: #{binary() => any()}.


%% Example:
%% list_managed_apis_response() :: #{
%%   <<"items">> => list(managed_api_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_managed_apis_response() :: #{binary() => any()}.


%% Example:
%% list_portals_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_portals_request() :: #{binary() => any()}.


%% Example:
%% list_portals_response() :: #{
%%   <<"items">> => list(portal_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_portals_response() :: #{binary() => any()}.


%% Example:
%% list_product_api_pages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceOwnerAccountId">> => string()
%% }
-type list_product_api_pages_request() :: #{binary() => any()}.


%% Example:
%% list_product_api_pages_response() :: #{
%%   <<"items">> => list(product_api_page_summary_no_body()),
%%   <<"nextToken">> => string()
%% }
-type list_product_api_pages_response() :: #{binary() => any()}.


%% Example:
%% list_product_pages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceOwnerAccountId">> => string()
%% }
-type list_product_pages_request() :: #{binary() => any()}.


%% Example:
%% list_product_pages_response() :: #{
%%   <<"items">> => list(product_page_summary_no_body()),
%%   <<"nextToken">> => string()
%% }
-type list_product_pages_response() :: #{binary() => any()}.


%% Example:
%% list_products_request() :: #{
%%   <<"managedApiId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceOwner">> => list(any())
%% }
-type list_products_request() :: #{binary() => any()}.


%% Example:
%% list_products_response() :: #{
%%   <<"items">> => list(product_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_products_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% managed_api_event_summary() :: #{
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"eventId">> => string(),
%%   <<"eventType">> => list(any()),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"wafApiSecurityEventDetail">> => waf_api_security_event_detail()
%% }
-type managed_api_event_summary() :: #{binary() => any()}.


%% Example:
%% managed_api_finding() :: #{
%%   <<"postureId">> => [string()],
%%   <<"postureStatus">> => list(any()),
%%   <<"reason">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type managed_api_finding() :: #{binary() => any()}.


%% Example:
%% managed_api_summary() :: #{
%%   <<"apiSignature">> => api_signature(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"managedApiArn">> => string(),
%%   <<"managedApiId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type managed_api_summary() :: #{binary() => any()}.


%% Example:
%% organization_discovery_configuration_data() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"discoveryFilters">> => list(),
%%   <<"discoverySources">> => list(list(any())()),
%%   <<"exclusionFilters">> => discovery_exclusion_filters(),
%%   <<"features">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type organization_discovery_configuration_data() :: #{binary() => any()}.


%% Example:
%% portal_content() :: #{
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"theme">> => portal_theme()
%% }
-type portal_content() :: #{binary() => any()}.


%% Example:
%% portal_status_exception() :: #{
%%   <<"exception">> => list(any()),
%%   <<"message">> => string()
%% }
-type portal_status_exception() :: #{binary() => any()}.


%% Example:
%% portal_summary() :: #{
%%   <<"authorization">> => authorization(),
%%   <<"endpointConfiguration">> => endpoint_configuration_response(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"portalArn">> => string(),
%%   <<"portalContent">> => portal_content(),
%%   <<"portalId">> => string(),
%%   <<"preview">> => preview(),
%%   <<"publishDescription">> => string(),
%%   <<"publishStatus">> => list(any()),
%%   <<"publishedAt">> => [non_neg_integer()],
%%   <<"rumAppMonitorName">> => string(),
%%   <<"statusException">> => portal_status_exception(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type portal_summary() :: #{binary() => any()}.


%% Example:
%% portal_theme() :: #{
%%   <<"customColors">> => custom_colors(),
%%   <<"logoUploadedAt">> => [non_neg_integer()]
%% }
-type portal_theme() :: #{binary() => any()}.


%% Example:
%% preview() :: #{
%%   <<"previewStatus">> => list(any()),
%%   <<"previewUrl">> => [string()],
%%   <<"statusException">> => portal_status_exception()
%% }
-type preview() :: #{binary() => any()}.


%% Example:
%% product_api_page_status_exception() :: #{
%%   <<"exception">> => list(any()),
%%   <<"message">> => string()
%% }
-type product_api_page_status_exception() :: #{binary() => any()}.


%% Example:
%% product_api_page_summary_no_body() :: #{
%%   <<"apiId">> => api_id(),
%%   <<"apiUrl">> => string(),
%%   <<"operationName">> => string(),
%%   <<"productApiPageArn">> => string(),
%%   <<"productApiPageId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusException">> => product_api_page_status_exception(),
%%   <<"tryItState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type product_api_page_summary_no_body() :: #{binary() => any()}.


%% Example:
%% product_page_summary_no_body() :: #{
%%   <<"pageTitle">> => string(),
%%   <<"productPageArn">> => string(),
%%   <<"productPageId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type product_page_summary_no_body() :: #{binary() => any()}.


%% Example:
%% product_summary() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"failureReason">> => list(any()),
%%   <<"productArn">> => string(),
%%   <<"productId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type product_summary() :: #{binary() => any()}.


%% Example:
%% put_discovery_configuration_request() :: #{
%%   <<"discoverySources">> => list(list(any())()),
%%   <<"excludedResources">> => list(string()),
%%   <<"features">> => list(list(any())()),
%%   <<"tags">> => map()
%% }
-type put_discovery_configuration_request() :: #{binary() => any()}.


%% Example:
%% put_discovery_configuration_response() :: #{
%%   <<"discoveryConfiguration">> => discovery_configuration_data(),
%%   <<"tags">> => map()
%% }
-type put_discovery_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_organization_discovery_configuration_request() :: #{
%%   <<"discoveryFilters">> => list(),
%%   <<"discoverySources">> => list(list(any())()),
%%   <<"exclusionFilters">> => discovery_exclusion_filters(),
%%   <<"features">> => list(list(any())()),
%%   <<"tags">> => map()
%% }
-type put_organization_discovery_configuration_request() :: #{binary() => any()}.


%% Example:
%% put_organization_discovery_configuration_response() :: #{
%%   <<"discoveryConfiguration">> => organization_discovery_configuration_data(),
%%   <<"tags">> => map()
%% }
-type put_organization_discovery_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_product_sharing_policy_request() :: #{
%%   <<"policyDocument">> := string(),
%%   <<"tags">> => map()
%% }
-type put_product_sharing_policy_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% rule_filter() :: #{
%%   <<"key">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type rule_filter() :: #{binary() => any()}.


%% Example:
%% section() :: #{
%%   <<"productApiPageArns">> => list(string()),
%%   <<"sectionName">> => [string()]
%% }
-type section() :: #{binary() => any()}.


%% Example:
%% start_discovery_request() :: #{
%%   <<"id">> := string()
%% }
-type start_discovery_request() :: #{binary() => any()}.


%% Example:
%% stop_discovery_request() :: #{
%%   <<"id">> := string()
%% }
-type stop_discovery_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_portal_publish_status_request() :: #{
%%   <<"description">> => string(),
%%   <<"status">> := list(any())
%% }
-type update_portal_publish_status_request() :: #{binary() => any()}.


%% Example:
%% update_portal_request() :: #{
%%   <<"authorization">> => authorization(),
%%   <<"endpointConfiguration">> => list(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"logoUri">> => string(),
%%   <<"portalContent">> => portal_content(),
%%   <<"rumAppMonitorName">> => string()
%% }
-type update_portal_request() :: #{binary() => any()}.


%% Example:
%% update_portal_response() :: #{
%%   <<"authorization">> => authorization(),
%%   <<"endpointConfiguration">> => endpoint_configuration_response(),
%%   <<"includedProductArns">> => list(string()),
%%   <<"portalArn">> => string(),
%%   <<"portalContent">> => portal_content(),
%%   <<"portalId">> => string(),
%%   <<"preview">> => preview(),
%%   <<"publishDescription">> => string(),
%%   <<"publishStatus">> => list(any()),
%%   <<"publishedAt">> => [non_neg_integer()],
%%   <<"rumAppMonitorName">> => string(),
%%   <<"statusException">> => portal_status_exception(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_portal_response() :: #{binary() => any()}.


%% Example:
%% update_product_api_page_request() :: #{
%%   <<"displayContent">> => list(),
%%   <<"tryItState">> => list(any())
%% }
-type update_product_api_page_request() :: #{binary() => any()}.


%% Example:
%% update_product_api_page_response() :: #{
%%   <<"apiId">> => api_id(),
%%   <<"displayContent">> => api_page_display_content_response(),
%%   <<"productApiPageArn">> => string(),
%%   <<"productApiPageId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusException">> => product_api_page_status_exception(),
%%   <<"tryItState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_product_api_page_response() :: #{binary() => any()}.


%% Example:
%% update_product_page_request() :: #{
%%   <<"displayContent">> => display_content()
%% }
-type update_product_page_request() :: #{binary() => any()}.


%% Example:
%% update_product_page_response() :: #{
%%   <<"displayContent">> => display_content(),
%%   <<"productPageArn">> => string(),
%%   <<"productPageId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_product_page_response() :: #{binary() => any()}.


%% Example:
%% update_product_request() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"displayOrder">> => display_order()
%% }
-type update_product_request() :: #{binary() => any()}.


%% Example:
%% update_product_response() :: #{
%%   <<"apiSelectionConfiguration">> => api_selection_configuration(),
%%   <<"description">> => string(),
%%   <<"displayName">> => string(),
%%   <<"displayOrder">> => display_order(),
%%   <<"failureReason">> => list(any()),
%%   <<"productArn">> => string(),
%%   <<"productId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type update_product_response() :: #{binary() => any()}.


%% Example:
%% waf_api_security_event_detail() :: #{
%%   <<"category">> => string(),
%%   <<"confidence">> => list(any()),
%%   <<"label">> => string(),
%%   <<"webAclArn">> => string()
%% }
-type waf_api_security_event_detail() :: #{binary() => any()}.

-type associate_managed_apis_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_managed_api_errors() ::
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_portal_errors() ::
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_portal_preview_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_product_errors() ::
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_product_api_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type create_product_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_discovery_configuration_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_managed_api_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_organization_discovery_configuration_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_portal_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_product_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_product_api_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_product_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type delete_product_sharing_policy_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type disassociate_managed_apis_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_api_inventory_item_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_discovery_configuration_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_managed_api_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_organization_discovery_configuration_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_portal_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_product_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_product_api_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_product_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type get_product_sharing_policy_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_api_inventory_items_errors() ::
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_discovery_statuses_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_managed_api_events_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_managed_apis_errors() ::
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_portals_errors() ::
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_product_api_pages_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_product_pages_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_products_errors() ::
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type put_discovery_configuration_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type put_organization_discovery_configuration_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type put_product_sharing_policy_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type start_discovery_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type stop_discovery_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type update_portal_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type update_portal_publish_status_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type update_product_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type update_product_api_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

-type update_product_page_errors() ::
    resource_not_found_exception() | 
    limit_exceeded_exception() | 
    bad_request_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate one or more Managed APIs with a product.
%%
%% Best-effort — IDs that fail are returned in
%% {@link AssociateManagedApisResponse#failedItems}; IDs that succeed are
%% omitted. Associating an
%% already-associated Managed API is a no-op (not reported as failure).
-spec associate_managed_apis(aws_client:aws_client(), binary() | list(), associate_managed_apis_request()) ->
    {ok, associate_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_apis_errors(), tuple()}.
associate_managed_apis(Client, ProductId, Input) ->
    associate_managed_apis(Client, ProductId, Input, []).

-spec associate_managed_apis(aws_client:aws_client(), binary() | list(), associate_managed_apis_request(), proplists:proplist()) ->
    {ok, associate_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, associate_managed_apis_errors(), tuple()}.
associate_managed_apis(Client, ProductId, Input0, Options0) ->
    Method = post,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/associate"],
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

%% @doc Promote a discovered API in the API inventory into the managed API
%% list.
-spec create_managed_api(aws_client:aws_client(), create_managed_api_request()) ->
    {ok, create_managed_api_response(), tuple()} |
    {error, any()} |
    {error, create_managed_api_errors(), tuple()}.
create_managed_api(Client, Input) ->
    create_managed_api(Client, Input, []).

-spec create_managed_api(aws_client:aws_client(), create_managed_api_request(), proplists:proplist()) ->
    {ok, create_managed_api_response(), tuple()} |
    {error, any()} |
    {error, create_managed_api_errors(), tuple()}.
create_managed_api(Client, Input0, Options0) ->
    Method = post,
    Path = ["/managedapis"],
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

%% @doc Creates a portal that publishes documentation for the products it
%% includes.
%%
%% Use UpdatePortalPublishStatus to publish it.
-spec create_portal(aws_client:aws_client(), create_portal_request()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input) ->
    create_portal(Client, Input, []).

-spec create_portal(aws_client:aws_client(), create_portal_request(), proplists:proplist()) ->
    {ok, create_portal_response(), tuple()} |
    {error, any()} |
    {error, create_portal_errors(), tuple()}.
create_portal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/portals"],
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

%% @doc Starts building a preview of the portal's current content.
%%
%% Use GetPortal to check the preview status and get the preview URL.
-spec create_portal_preview(aws_client:aws_client(), binary() | list(), create_portal_preview_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_portal_preview_errors(), tuple()}.
create_portal_preview(Client, PortalId, Input) ->
    create_portal_preview(Client, PortalId, Input, []).

-spec create_portal_preview(aws_client:aws_client(), binary() | list(), create_portal_preview_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_portal_preview_errors(), tuple()}.
create_portal_preview(Client, PortalId, Input0, Options0) ->
    Method = post,
    Path = ["/portals/", aws_util:encode_uri(PortalId), "/preview"],
    SuccessStatusCode = 202,
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

%% @doc Creates a product.
%%
%% A product groups Managed APIs with their API pages and product pages so a
%% portal can publish them together.
-spec create_product(aws_client:aws_client(), create_product_request()) ->
    {ok, create_product_response(), tuple()} |
    {error, any()} |
    {error, create_product_errors(), tuple()}.
create_product(Client, Input) ->
    create_product(Client, Input, []).

-spec create_product(aws_client:aws_client(), create_product_request(), proplists:proplist()) ->
    {ok, create_product_response(), tuple()} |
    {error, any()} |
    {error, create_product_errors(), tuple()}.
create_product(Client, Input0, Options0) ->
    Method = post,
    Path = ["/products"],
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

%% @doc Creates an API page that documents a Managed API in a product.
%%
%% The page content is generated asynchronously. Use `status` to track it.
-spec create_product_api_page(aws_client:aws_client(), binary() | list(), create_product_api_page_request()) ->
    {ok, create_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, create_product_api_page_errors(), tuple()}.
create_product_api_page(Client, ProductId, Input) ->
    create_product_api_page(Client, ProductId, Input, []).

-spec create_product_api_page(aws_client:aws_client(), binary() | list(), create_product_api_page_request(), proplists:proplist()) ->
    {ok, create_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, create_product_api_page_errors(), tuple()}.
create_product_api_page(Client, ProductId, Input0, Options0) ->
    Method = post,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/apipages"],
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

%% @doc Creates a product page with free-form documentation.
%%
%% A product can have up to 40 pages.
-spec create_product_page(aws_client:aws_client(), binary() | list(), create_product_page_request()) ->
    {ok, create_product_page_response(), tuple()} |
    {error, any()} |
    {error, create_product_page_errors(), tuple()}.
create_product_page(Client, ProductId, Input) ->
    create_product_page(Client, ProductId, Input, []).

-spec create_product_page(aws_client:aws_client(), binary() | list(), create_product_page_request(), proplists:proplist()) ->
    {ok, create_product_page_response(), tuple()} |
    {error, any()} |
    {error, create_product_page_errors(), tuple()}.
create_product_page(Client, ProductId, Input0, Options0) ->
    Method = post,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/productpages"],
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

%% @doc Deletes the discovery configuration and stops any running discovery.
-spec delete_discovery_configuration(aws_client:aws_client(), delete_discovery_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_discovery_configuration_errors(), tuple()}.
delete_discovery_configuration(Client, Input) ->
    delete_discovery_configuration(Client, Input, []).

-spec delete_discovery_configuration(aws_client:aws_client(), delete_discovery_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_discovery_configuration_errors(), tuple()}.
delete_discovery_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/discovery-configuration"],
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

%% @doc Deletes a Managed API.
-spec delete_managed_api(aws_client:aws_client(), binary() | list(), delete_managed_api_request()) ->
    {ok, delete_managed_api_response(), tuple()} |
    {error, any()} |
    {error, delete_managed_api_errors(), tuple()}.
delete_managed_api(Client, ManagedApiId, Input) ->
    delete_managed_api(Client, ManagedApiId, Input, []).

-spec delete_managed_api(aws_client:aws_client(), binary() | list(), delete_managed_api_request(), proplists:proplist()) ->
    {ok, delete_managed_api_response(), tuple()} |
    {error, any()} |
    {error, delete_managed_api_errors(), tuple()}.
delete_managed_api(Client, ManagedApiId, Input0, Options0) ->
    Method = delete,
    Path = ["/managedapis/", aws_util:encode_uri(ManagedApiId), ""],
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

%% @doc Deletes the organization-wide discovery configuration and stops any
%% running discovery across
%% the organization.
%%
%% Only the organization management account may call this operation.
-spec delete_organization_discovery_configuration(aws_client:aws_client(), delete_organization_discovery_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_discovery_configuration_errors(), tuple()}.
delete_organization_discovery_configuration(Client, Input) ->
    delete_organization_discovery_configuration(Client, Input, []).

-spec delete_organization_discovery_configuration(aws_client:aws_client(), delete_organization_discovery_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_discovery_configuration_errors(), tuple()}.
delete_organization_discovery_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/org-discovery-configuration"],
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

%% @doc Deletes a portal.
-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalId, Input) ->
    delete_portal(Client, PortalId, Input, []).

-spec delete_portal(aws_client:aws_client(), binary() | list(), delete_portal_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_portal_errors(), tuple()}.
delete_portal(Client, PortalId, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
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

%% @doc Deletes a product.
-spec delete_product(aws_client:aws_client(), binary() | list(), delete_product_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_errors(), tuple()}.
delete_product(Client, ProductId, Input) ->
    delete_product(Client, ProductId, Input, []).

-spec delete_product(aws_client:aws_client(), binary() | list(), delete_product_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_errors(), tuple()}.
delete_product(Client, ProductId, Input0, Options0) ->
    Method = delete,
    Path = ["/products/", aws_util:encode_uri(ProductId), ""],
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

%% @doc Deletes an API page.
-spec delete_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), delete_product_api_page_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_api_page_errors(), tuple()}.
delete_product_api_page(Client, ProductApiPageId, ProductId, Input) ->
    delete_product_api_page(Client, ProductApiPageId, ProductId, Input, []).

-spec delete_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), delete_product_api_page_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_api_page_errors(), tuple()}.
delete_product_api_page(Client, ProductApiPageId, ProductId, Input0, Options0) ->
    Method = delete,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/apipages/", aws_util:encode_uri(ProductApiPageId), ""],
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

%% @doc Deletes a product page.
-spec delete_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), delete_product_page_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_page_errors(), tuple()}.
delete_product_page(Client, ProductId, ProductPageId, Input) ->
    delete_product_page(Client, ProductId, ProductPageId, Input, []).

-spec delete_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), delete_product_page_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_page_errors(), tuple()}.
delete_product_page(Client, ProductId, ProductPageId, Input0, Options0) ->
    Method = delete,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/productpages/", aws_util:encode_uri(ProductPageId), ""],
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

%% @doc Deletes the sharing policy of a product.
%%
%% The product is no longer shared.
-spec delete_product_sharing_policy(aws_client:aws_client(), binary() | list(), delete_product_sharing_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_sharing_policy_errors(), tuple()}.
delete_product_sharing_policy(Client, ProductId, Input) ->
    delete_product_sharing_policy(Client, ProductId, Input, []).

-spec delete_product_sharing_policy(aws_client:aws_client(), binary() | list(), delete_product_sharing_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_product_sharing_policy_errors(), tuple()}.
delete_product_sharing_policy(Client, ProductId, Input0, Options0) ->
    Method = delete,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/sharingpolicy"],
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

%% @doc Disassociate one or more Managed APIs from a product.
%%
%% Best-effort — IDs that fail are returned
%% in {@link DisassociateManagedApisResponse#failedItems}; IDs that succeed
%% are omitted.
%% Disassociating an unmapped Managed API is a no-op (not reported as
%% failure).
-spec disassociate_managed_apis(aws_client:aws_client(), binary() | list(), disassociate_managed_apis_request()) ->
    {ok, disassociate_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_apis_errors(), tuple()}.
disassociate_managed_apis(Client, ProductId, Input) ->
    disassociate_managed_apis(Client, ProductId, Input, []).

-spec disassociate_managed_apis(aws_client:aws_client(), binary() | list(), disassociate_managed_apis_request(), proplists:proplist()) ->
    {ok, disassociate_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, disassociate_managed_apis_errors(), tuple()}.
disassociate_managed_apis(Client, ProductId, Input0, Options0) ->
    Method = post,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/disassociate"],
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

%% @doc Gets full details of a single API inventory item.
-spec get_api_inventory_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_api_inventory_item_response(), tuple()} |
    {error, any()} |
    {error, get_api_inventory_item_errors(), tuple()}.
get_api_inventory_item(Client, Host, Method, Path, Port, ResourceArn)
  when is_map(Client) ->
    get_api_inventory_item(Client, Host, Method, Path, Port, ResourceArn, #{}, #{}).

-spec get_api_inventory_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_api_inventory_item_response(), tuple()} |
    {error, any()} |
    {error, get_api_inventory_item_errors(), tuple()}.
get_api_inventory_item(Client, Host, Method, Path, Port, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_api_inventory_item(Client, Host, Method, Path, Port, ResourceArn, QueryMap, HeadersMap, []).

-spec get_api_inventory_item(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_api_inventory_item_response(), tuple()} |
    {error, any()} |
    {error, get_api_inventory_item_errors(), tuple()}.
get_api_inventory_item(Client, Host, Method, Path, Port, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api-inventory/item"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"host">>, Host},
        {<<"method">>, Method},
        {<<"path">>, Path},
        {<<"port">>, Port},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the discovery configuration for the account and region.
-spec get_discovery_configuration(aws_client:aws_client()) ->
    {ok, get_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_discovery_configuration_errors(), tuple()}.
get_discovery_configuration(Client)
  when is_map(Client) ->
    get_discovery_configuration(Client, #{}, #{}).

-spec get_discovery_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_discovery_configuration_errors(), tuple()}.
get_discovery_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_discovery_configuration(Client, QueryMap, HeadersMap, []).

-spec get_discovery_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_discovery_configuration_errors(), tuple()}.
get_discovery_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/discovery-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a Managed API, including its security posture findings.
-spec get_managed_api(aws_client:aws_client(), binary() | list()) ->
    {ok, get_managed_api_response(), tuple()} |
    {error, any()} |
    {error, get_managed_api_errors(), tuple()}.
get_managed_api(Client, ManagedApiId)
  when is_map(Client) ->
    get_managed_api(Client, ManagedApiId, #{}, #{}).

-spec get_managed_api(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_managed_api_response(), tuple()} |
    {error, any()} |
    {error, get_managed_api_errors(), tuple()}.
get_managed_api(Client, ManagedApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_managed_api(Client, ManagedApiId, QueryMap, HeadersMap, []).

-spec get_managed_api(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_managed_api_response(), tuple()} |
    {error, any()} |
    {error, get_managed_api_errors(), tuple()}.
get_managed_api(Client, ManagedApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedapis/", aws_util:encode_uri(ManagedApiId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the organization-wide discovery configuration.
%%
%% Only the organization management
%% account and registered delegated administrators may call this operation.
-spec get_organization_discovery_configuration(aws_client:aws_client()) ->
    {ok, get_organization_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_organization_discovery_configuration_errors(), tuple()}.
get_organization_discovery_configuration(Client)
  when is_map(Client) ->
    get_organization_discovery_configuration(Client, #{}, #{}).

-spec get_organization_discovery_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_organization_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_organization_discovery_configuration_errors(), tuple()}.
get_organization_discovery_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_organization_discovery_configuration(Client, QueryMap, HeadersMap, []).

-spec get_organization_discovery_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_organization_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_organization_discovery_configuration_errors(), tuple()}.
get_organization_discovery_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/org-discovery-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the configuration, publish status, and preview status of a
%% portal.
-spec get_portal(aws_client:aws_client(), binary() | list()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalId)
  when is_map(Client) ->
    get_portal(Client, PortalId, #{}, #{}).

-spec get_portal(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portal(Client, PortalId, QueryMap, HeadersMap, []).

-spec get_portal(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_portal_response(), tuple()} |
    {error, any()} |
    {error, get_portal_errors(), tuple()}.
get_portal(Client, PortalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a product.
%%
%% To read a product shared with you by another account, supply
%% `resourceOwnerAccountId`.
-spec get_product(aws_client:aws_client(), binary() | list()) ->
    {ok, get_product_response(), tuple()} |
    {error, any()} |
    {error, get_product_errors(), tuple()}.
get_product(Client, ProductId)
  when is_map(Client) ->
    get_product(Client, ProductId, #{}, #{}).

-spec get_product(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_product_response(), tuple()} |
    {error, any()} |
    {error, get_product_errors(), tuple()}.
get_product(Client, ProductId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_product(Client, ProductId, QueryMap, HeadersMap, []).

-spec get_product(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_product_response(), tuple()} |
    {error, any()} |
    {error, get_product_errors(), tuple()}.
get_product(Client, ProductId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceOwnerAccountId">>, maps:get(<<"resourceOwnerAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an API page, including its body.
-spec get_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_api_page_errors(), tuple()}.
get_product_api_page(Client, ProductApiPageId, ProductId)
  when is_map(Client) ->
    get_product_api_page(Client, ProductApiPageId, ProductId, #{}, #{}).

-spec get_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_api_page_errors(), tuple()}.
get_product_api_page(Client, ProductApiPageId, ProductId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_product_api_page(Client, ProductApiPageId, ProductId, QueryMap, HeadersMap, []).

-spec get_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_api_page_errors(), tuple()}.
get_product_api_page(Client, ProductApiPageId, ProductId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), "/apipages/", aws_util:encode_uri(ProductApiPageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeRawDisplayContent">>, maps:get(<<"includeRawDisplayContent">>, QueryMap, undefined)},
        {<<"resourceOwnerAccountId">>, maps:get(<<"resourceOwnerAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a product page, including its body.
-spec get_product_page(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_product_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_page_errors(), tuple()}.
get_product_page(Client, ProductId, ProductPageId)
  when is_map(Client) ->
    get_product_page(Client, ProductId, ProductPageId, #{}, #{}).

-spec get_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_product_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_page_errors(), tuple()}.
get_product_page(Client, ProductId, ProductPageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_product_page(Client, ProductId, ProductPageId, QueryMap, HeadersMap, []).

-spec get_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_product_page_response(), tuple()} |
    {error, any()} |
    {error, get_product_page_errors(), tuple()}.
get_product_page(Client, ProductId, ProductPageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), "/productpages/", aws_util:encode_uri(ProductPageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceOwnerAccountId">>, maps:get(<<"resourceOwnerAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the sharing policy of a product.
-spec get_product_sharing_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_product_sharing_policy_response(), tuple()} |
    {error, any()} |
    {error, get_product_sharing_policy_errors(), tuple()}.
get_product_sharing_policy(Client, ProductId)
  when is_map(Client) ->
    get_product_sharing_policy(Client, ProductId, #{}, #{}).

-spec get_product_sharing_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_product_sharing_policy_response(), tuple()} |
    {error, any()} |
    {error, get_product_sharing_policy_errors(), tuple()}.
get_product_sharing_policy(Client, ProductId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_product_sharing_policy(Client, ProductId, QueryMap, HeadersMap, []).

-spec get_product_sharing_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_product_sharing_policy_response(), tuple()} |
    {error, any()} |
    {error, get_product_sharing_policy_errors(), tuple()}.
get_product_sharing_policy(Client, ProductId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), "/sharingpolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists discovered API inventory items with filtering and pagination.
-spec list_api_inventory_items(aws_client:aws_client(), list_api_inventory_items_request()) ->
    {ok, list_api_inventory_items_response(), tuple()} |
    {error, any()} |
    {error, list_api_inventory_items_errors(), tuple()}.
list_api_inventory_items(Client, Input) ->
    list_api_inventory_items(Client, Input, []).

-spec list_api_inventory_items(aws_client:aws_client(), list_api_inventory_items_request(), proplists:proplist()) ->
    {ok, list_api_inventory_items_response(), tuple()} |
    {error, any()} |
    {error, list_api_inventory_items_errors(), tuple()}.
list_api_inventory_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api-inventory"],
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

%% @doc Lists discovery statuses for services.
-spec list_discovery_statuses(aws_client:aws_client()) ->
    {ok, list_discovery_statuses_response(), tuple()} |
    {error, any()} |
    {error, list_discovery_statuses_errors(), tuple()}.
list_discovery_statuses(Client)
  when is_map(Client) ->
    list_discovery_statuses(Client, #{}, #{}).

-spec list_discovery_statuses(aws_client:aws_client(), map(), map()) ->
    {ok, list_discovery_statuses_response(), tuple()} |
    {error, any()} |
    {error, list_discovery_statuses_errors(), tuple()}.
list_discovery_statuses(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_discovery_statuses(Client, QueryMap, HeadersMap, []).

-spec list_discovery_statuses(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_discovery_statuses_response(), tuple()} |
    {error, any()} |
    {error, list_discovery_statuses_errors(), tuple()}.
list_discovery_statuses(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/discovery/statuses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"discoverySource">>, maps:get(<<"discoverySource">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists API-security events for a single managed API, most recent
%% first.
%%
%% Returns up to 20 of the
%% most recent events (not paginated).
-spec list_managed_api_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_managed_api_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_api_events_errors(), tuple()}.
list_managed_api_events(Client, ManagedApiId)
  when is_map(Client) ->
    list_managed_api_events(Client, ManagedApiId, #{}, #{}).

-spec list_managed_api_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_managed_api_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_api_events_errors(), tuple()}.
list_managed_api_events(Client, ManagedApiId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_api_events(Client, ManagedApiId, QueryMap, HeadersMap, []).

-spec list_managed_api_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_api_events_response(), tuple()} |
    {error, any()} |
    {error, list_managed_api_events_errors(), tuple()}.
list_managed_api_events(Client, ManagedApiId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedapis/", aws_util:encode_uri(ManagedApiId), "/events"],
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
        {<<"startedAfter">>, maps:get(<<"startedAfter">>, QueryMap, undefined)},
        {<<"startedBefore">>, maps:get(<<"startedBefore">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Managed APIs in your account.
-spec list_managed_apis(aws_client:aws_client()) ->
    {ok, list_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, list_managed_apis_errors(), tuple()}.
list_managed_apis(Client)
  when is_map(Client) ->
    list_managed_apis(Client, #{}, #{}).

-spec list_managed_apis(aws_client:aws_client(), map(), map()) ->
    {ok, list_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, list_managed_apis_errors(), tuple()}.
list_managed_apis(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_managed_apis(Client, QueryMap, HeadersMap, []).

-spec list_managed_apis(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_managed_apis_response(), tuple()} |
    {error, any()} |
    {error, list_managed_apis_errors(), tuple()}.
list_managed_apis(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managedapis"],
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
        {<<"productId">>, maps:get(<<"productId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the portals in your account.
-spec list_portals(aws_client:aws_client()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client)
  when is_map(Client) ->
    list_portals(Client, #{}, #{}).

-spec list_portals(aws_client:aws_client(), map(), map()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_portals(Client, QueryMap, HeadersMap, []).

-spec list_portals(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_portals_response(), tuple()} |
    {error, any()} |
    {error, list_portals_errors(), tuple()}.
list_portals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals"],
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

%% @doc Lists the API pages in a product.
%%
%% The results do not include page bodies.
-spec list_product_api_pages(aws_client:aws_client(), binary() | list()) ->
    {ok, list_product_api_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_api_pages_errors(), tuple()}.
list_product_api_pages(Client, ProductId)
  when is_map(Client) ->
    list_product_api_pages(Client, ProductId, #{}, #{}).

-spec list_product_api_pages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_product_api_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_api_pages_errors(), tuple()}.
list_product_api_pages(Client, ProductId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_product_api_pages(Client, ProductId, QueryMap, HeadersMap, []).

-spec list_product_api_pages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_product_api_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_api_pages_errors(), tuple()}.
list_product_api_pages(Client, ProductId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), "/apipages"],
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
        {<<"resourceOwnerAccountId">>, maps:get(<<"resourceOwnerAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the product pages in a product.
%%
%% The results do not include page bodies.
-spec list_product_pages(aws_client:aws_client(), binary() | list()) ->
    {ok, list_product_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_pages_errors(), tuple()}.
list_product_pages(Client, ProductId)
  when is_map(Client) ->
    list_product_pages(Client, ProductId, #{}, #{}).

-spec list_product_pages(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_product_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_pages_errors(), tuple()}.
list_product_pages(Client, ProductId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_product_pages(Client, ProductId, QueryMap, HeadersMap, []).

-spec list_product_pages(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_product_pages_response(), tuple()} |
    {error, any()} |
    {error, list_product_pages_errors(), tuple()}.
list_product_pages(Client, ProductId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products/", aws_util:encode_uri(ProductId), "/productpages"],
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
        {<<"resourceOwnerAccountId">>, maps:get(<<"resourceOwnerAccountId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists products you own, products shared with you, or both.
-spec list_products(aws_client:aws_client()) ->
    {ok, list_products_response(), tuple()} |
    {error, any()} |
    {error, list_products_errors(), tuple()}.
list_products(Client)
  when is_map(Client) ->
    list_products(Client, #{}, #{}).

-spec list_products(aws_client:aws_client(), map(), map()) ->
    {ok, list_products_response(), tuple()} |
    {error, any()} |
    {error, list_products_errors(), tuple()}.
list_products(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_products(Client, QueryMap, HeadersMap, []).

-spec list_products(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_products_response(), tuple()} |
    {error, any()} |
    {error, list_products_errors(), tuple()}.
list_products(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"managedApiId">>, maps:get(<<"managedApiId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceOwner">>, maps:get(<<"resourceOwner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for an API Portal resource.
%%
%% One of the three basic tagging operations generated
%% for Tagris integration (ListTagsForResource / TagResource /
%% UntagResource).
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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

%% @doc Creates or updates the discovery configuration
-spec put_discovery_configuration(aws_client:aws_client(), put_discovery_configuration_request()) ->
    {ok, put_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_discovery_configuration_errors(), tuple()}.
put_discovery_configuration(Client, Input) ->
    put_discovery_configuration(Client, Input, []).

-spec put_discovery_configuration(aws_client:aws_client(), put_discovery_configuration_request(), proplists:proplist()) ->
    {ok, put_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_discovery_configuration_errors(), tuple()}.
put_discovery_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/discovery-configuration"],
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

%% @doc Creates or updates the organization-wide discovery configuration.
%%
%% This is a singleton
%% per organization. Only the organization management account and registered
%% delegated
%% administrators may call this operation.
-spec put_organization_discovery_configuration(aws_client:aws_client(), put_organization_discovery_configuration_request()) ->
    {ok, put_organization_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_organization_discovery_configuration_errors(), tuple()}.
put_organization_discovery_configuration(Client, Input) ->
    put_organization_discovery_configuration(Client, Input, []).

-spec put_organization_discovery_configuration(aws_client:aws_client(), put_organization_discovery_configuration_request(), proplists:proplist()) ->
    {ok, put_organization_discovery_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_organization_discovery_configuration_errors(), tuple()}.
put_organization_discovery_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/org-discovery-configuration"],
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

%% @doc Creates or replaces the sharing policy of a product.
%%
%% The policy controls which other accounts can read the product.
-spec put_product_sharing_policy(aws_client:aws_client(), binary() | list(), put_product_sharing_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_product_sharing_policy_errors(), tuple()}.
put_product_sharing_policy(Client, ProductId, Input) ->
    put_product_sharing_policy(Client, ProductId, Input, []).

-spec put_product_sharing_policy(aws_client:aws_client(), binary() | list(), put_product_sharing_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_product_sharing_policy_errors(), tuple()}.
put_product_sharing_policy(Client, ProductId, Input0, Options0) ->
    Method = put,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/sharingpolicy"],
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

%% @doc Starts the API discovery process.
-spec start_discovery(aws_client:aws_client(), start_discovery_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_discovery_errors(), tuple()}.
start_discovery(Client, Input) ->
    start_discovery(Client, Input, []).

-spec start_discovery(aws_client:aws_client(), start_discovery_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_discovery_errors(), tuple()}.
start_discovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/discovery/start"],
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
                     {<<"id">>, <<"id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the running API discovery process.
-spec stop_discovery(aws_client:aws_client(), stop_discovery_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_discovery_errors(), tuple()}.
stop_discovery(Client, Input) ->
    stop_discovery(Client, Input, []).

-spec stop_discovery(aws_client:aws_client(), stop_discovery_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_discovery_errors(), tuple()}.
stop_discovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/discovery/stop"],
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
                     {<<"id">>, <<"id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates tags on an API Portal resource.
%%
%% One of the three basic tagging operations
%% generated for Tagris integration (ListTagsForResource / TagResource /
%% UntagResource).
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from an API Portal resource.
%%
%% One of the three basic tagging operations generated
%% for Tagris integration (ListTagsForResource / TagResource /
%% UntagResource).
%%
%% tagKeys is a query string parameter: for tag-based access control
%% (TBAC/ABAC) to work correctly,
%% API Gateway requires the keys to be removed to be passed as a query string
%% parameter.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a portal.
%%
%% Only the fields supplied in the request are changed.
-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalId, Input) ->
    update_portal(Client, PortalId, Input, []).

-spec update_portal(aws_client:aws_client(), binary() | list(), update_portal_request(), proplists:proplist()) ->
    {ok, update_portal_response(), tuple()} |
    {error, any()} |
    {error, update_portal_errors(), tuple()}.
update_portal(Client, PortalId, Input0, Options0) ->
    Method = patch,
    Path = ["/portals/", aws_util:encode_uri(PortalId), ""],
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

%% @doc Publishes or disables a portal.
%%
%% The change runs asynchronously. Use GetPortal to track `publishStatus`.
-spec update_portal_publish_status(aws_client:aws_client(), binary() | list(), update_portal_publish_status_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_portal_publish_status_errors(), tuple()}.
update_portal_publish_status(Client, PortalId, Input) ->
    update_portal_publish_status(Client, PortalId, Input, []).

-spec update_portal_publish_status(aws_client:aws_client(), binary() | list(), update_portal_publish_status_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_portal_publish_status_errors(), tuple()}.
update_portal_publish_status(Client, PortalId, Input0, Options0) ->
    Method = post,
    Path = ["/portals/", aws_util:encode_uri(PortalId), "/publish"],
    SuccessStatusCode = 202,
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

%% @doc Updates a product.
%%
%% Only the fields supplied in the request are changed.
-spec update_product(aws_client:aws_client(), binary() | list(), update_product_request()) ->
    {ok, update_product_response(), tuple()} |
    {error, any()} |
    {error, update_product_errors(), tuple()}.
update_product(Client, ProductId, Input) ->
    update_product(Client, ProductId, Input, []).

-spec update_product(aws_client:aws_client(), binary() | list(), update_product_request(), proplists:proplist()) ->
    {ok, update_product_response(), tuple()} |
    {error, any()} |
    {error, update_product_errors(), tuple()}.
update_product(Client, ProductId, Input0, Options0) ->
    Method = patch,
    Path = ["/products/", aws_util:encode_uri(ProductId), ""],
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

%% @doc Updates an API page.
%%
%% Only the fields supplied in the request are changed.
-spec update_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), update_product_api_page_request()) ->
    {ok, update_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, update_product_api_page_errors(), tuple()}.
update_product_api_page(Client, ProductApiPageId, ProductId, Input) ->
    update_product_api_page(Client, ProductApiPageId, ProductId, Input, []).

-spec update_product_api_page(aws_client:aws_client(), binary() | list(), binary() | list(), update_product_api_page_request(), proplists:proplist()) ->
    {ok, update_product_api_page_response(), tuple()} |
    {error, any()} |
    {error, update_product_api_page_errors(), tuple()}.
update_product_api_page(Client, ProductApiPageId, ProductId, Input0, Options0) ->
    Method = patch,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/apipages/", aws_util:encode_uri(ProductApiPageId), ""],
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

%% @doc Updates a product page.
-spec update_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), update_product_page_request()) ->
    {ok, update_product_page_response(), tuple()} |
    {error, any()} |
    {error, update_product_page_errors(), tuple()}.
update_product_page(Client, ProductId, ProductPageId, Input) ->
    update_product_page(Client, ProductId, ProductPageId, Input, []).

-spec update_product_page(aws_client:aws_client(), binary() | list(), binary() | list(), update_product_page_request(), proplists:proplist()) ->
    {ok, update_product_page_response(), tuple()} |
    {error, any()} |
    {error, update_product_page_errors(), tuple()}.
update_product_page(Client, ProductId, ProductPageId, Input0, Options0) ->
    Method = patch,
    Path = ["/products/", aws_util:encode_uri(ProductId), "/productpages/", aws_util:encode_uri(ProductPageId), ""],
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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"apiportal">>},
    DefaultHost = build_host(<<"apiportal">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_APIPORTAL">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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

