%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc WAF
%%
%% This is the latest version of the WAF API,
%% released in November, 2019.
%%
%% The names of the entities that you use to access this API,
%% like endpoints and namespaces, all have the versioning information added,
%% like &quot;V2&quot; or
%% &quot;v2&quot;, to distinguish from the prior version. We recommend
%% migrating your resources to
%% this version, because it has a number of significant improvements.
%%
%% If you used WAF prior to this release, you can't use this WAFV2 API to
%% access any
%% WAF resources that you created before. WAF Classic support will end on
%% September 30, 2025.
%%
%% For information about WAF, including how to migrate your WAF Classic
%% resources to this version,
%% see the WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%%
%% WAF is a web application firewall that lets you monitor the HTTP and HTTPS
%% requests that are forwarded to a protected resource. Protected resource
%% types include Amazon CloudFront distribution, Amazon API Gateway REST API,
%% Application Load Balancer, AppSync
%% GraphQL API, Amazon Cognito user pool, App Runner service, Amplify
%% application, and Amazon Web Services Verified Access instance. WAF also
%% lets you control access to your content,
%% to protect the Amazon Web Services resource that WAF is monitoring. Based
%% on conditions that
%% you specify, such as the IP addresses that requests originate from or the
%% values of query
%% strings, the protected resource responds to requests with either the
%% requested content, an HTTP 403 status code
%% (Forbidden), or with a custom response.
%%
%% This API guide is for developers who need detailed information about WAF
%% API actions,
%% data types, and errors. For detailed information about WAF features and
%% guidance for configuring and using
%% WAF, see the WAF Developer
%% Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html.
%%
%% You can make calls using the endpoints listed in WAF endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/waf.html.
%%
%% For regional resources, you can use any of the endpoints in the list.
%% A regional application can be an Application Load Balancer (ALB), an
%% Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon Cognito
%% user pool, an App Runner service, or an Amazon Web Services Verified
%% Access instance.
%%
%% For Amazon CloudFront and Amplify, you must use the API endpoint listed
%% for
%% US East (N. Virginia): us-east-1.
%%
%% Alternatively, you can use one of the Amazon Web Services SDKs to access
%% an API that's tailored to the
%% programming language or platform that you're using. For more
%% information, see Amazon Web Services SDKs:
%% http://aws.amazon.com/tools/#SDKs.
-module(aws_wafv2).

-export([associate_web_acl/2,
         associate_web_acl/3,
         check_capacity/2,
         check_capacity/3,
         create_api_key/2,
         create_api_key/3,
         create_ip_set/2,
         create_ip_set/3,
         create_regex_pattern_set/2,
         create_regex_pattern_set/3,
         create_rule_group/2,
         create_rule_group/3,
         create_web_acl/2,
         create_web_acl/3,
         delete_api_key/2,
         delete_api_key/3,
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
         describe_all_managed_products/2,
         describe_all_managed_products/3,
         describe_managed_products_by_vendor/2,
         describe_managed_products_by_vendor/3,
         describe_managed_rule_group/2,
         describe_managed_rule_group/3,
         disassociate_web_acl/2,
         disassociate_web_acl/3,
         generate_mobile_sdk_release_url/2,
         generate_mobile_sdk_release_url/3,
         get_decrypted_api_key/2,
         get_decrypted_api_key/3,
         get_ip_set/2,
         get_ip_set/3,
         get_logging_configuration/2,
         get_logging_configuration/3,
         get_managed_rule_set/2,
         get_managed_rule_set/3,
         get_mobile_sdk_release/2,
         get_mobile_sdk_release/3,
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
         list_api_keys/2,
         list_api_keys/3,
         list_available_managed_rule_group_versions/2,
         list_available_managed_rule_group_versions/3,
         list_available_managed_rule_groups/2,
         list_available_managed_rule_groups/3,
         list_ip_sets/2,
         list_ip_sets/3,
         list_logging_configurations/2,
         list_logging_configurations/3,
         list_managed_rule_sets/2,
         list_managed_rule_sets/3,
         list_mobile_sdk_releases/2,
         list_mobile_sdk_releases/3,
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
         put_managed_rule_set_versions/2,
         put_managed_rule_set_versions/3,
         put_permission_policy/2,
         put_permission_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_ip_set/2,
         update_ip_set/3,
         update_managed_rule_set_version_expiry_date/2,
         update_managed_rule_set_version_expiry_date/3,
         update_regex_pattern_set/2,
         update_regex_pattern_set/3,
         update_rule_group/2,
         update_rule_group/3,
         update_web_acl/2,
         update_web_acl/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% header_order() :: #{
%%   <<"OversizeHandling">> => list(any())
%% }
-type header_order() :: #{binary() => any()}.

%% Example:
%% get_sampled_requests_request() :: #{
%%   <<"MaxItems">> := float(),
%%   <<"RuleMetricName">> := string(),
%%   <<"Scope">> := list(any()),
%%   <<"TimeWindow">> := time_window(),
%%   <<"WebAclArn">> := string()
%% }
-type get_sampled_requests_request() :: #{binary() => any()}.

%% Example:
%% request_inspection() :: #{
%%   <<"PasswordField">> => password_field(),
%%   <<"PayloadType">> => list(any()),
%%   <<"UsernameField">> => username_field()
%% }
-type request_inspection() :: #{binary() => any()}.

%% Example:
%% version_to_publish() :: #{
%%   <<"AssociatedRuleGroupArn">> => string(),
%%   <<"ForecastedLifetime">> => integer()
%% }
-type version_to_publish() :: #{binary() => any()}.

%% Example:
%% managed_rule_group_statement() :: #{
%%   <<"ExcludedRules">> => list(excluded_rule()()),
%%   <<"ManagedRuleGroupConfigs">> => list(managed_rule_group_config()()),
%%   <<"Name">> => string(),
%%   <<"RuleActionOverrides">> => list(rule_action_override()()),
%%   <<"ScopeDownStatement">> => statement(),
%%   <<"VendorName">> => string(),
%%   <<"Version">> => string()
%% }
-type managed_rule_group_statement() :: #{binary() => any()}.

%% Example:
%% associate_web_acl_response() :: #{

%% }
-type associate_web_acl_response() :: #{binary() => any()}.

%% Example:
%% rule_action_override() :: #{
%%   <<"ActionToUse">> => rule_action(),
%%   <<"Name">> => string()
%% }
-type rule_action_override() :: #{binary() => any()}.

%% Example:
%% w_a_f_expired_managed_rule_group_version_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_expired_managed_rule_group_version_exception() :: #{binary() => any()}.

%% Example:
%% password_field() :: #{
%%   <<"Identifier">> => string()
%% }
-type password_field() :: #{binary() => any()}.

%% Example:
%% update_rule_group_response() :: #{
%%   <<"NextLockToken">> => string()
%% }
-type update_rule_group_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% check_capacity_request() :: #{
%%   <<"Rules">> := list(rule()()),
%%   <<"Scope">> := list(any())
%% }
-type check_capacity_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_nonexistent_item_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_nonexistent_item_exception() :: #{binary() => any()}.

%% Example:
%% aws_managed_rules_a_c_f_p_rule_set() :: #{
%%   <<"CreationPath">> => string(),
%%   <<"EnableRegexInPath">> => boolean(),
%%   <<"RegistrationPagePath">> => string(),
%%   <<"RequestInspection">> => request_inspection_a_c_f_p(),
%%   <<"ResponseInspection">> => response_inspection()
%% }
-type aws_managed_rules_a_c_f_p_rule_set() :: #{binary() => any()}.

%% Example:
%% single_query_argument() :: #{
%%   <<"Name">> => string()
%% }
-type single_query_argument() :: #{binary() => any()}.

%% Example:
%% list_resources_for_web_acl_request() :: #{
%%   <<"ResourceType">> => list(any()),
%%   <<"WebACLArn">> := string()
%% }
-type list_resources_for_web_acl_request() :: #{binary() => any()}.

%% Example:
%% rate_based_statement_custom_key() :: #{
%%   <<"ASN">> => rate_limit_asn(),
%%   <<"Cookie">> => rate_limit_cookie(),
%%   <<"ForwardedIP">> => rate_limit_forwarded_ip(),
%%   <<"HTTPMethod">> => rate_limit_h_t_t_p_method(),
%%   <<"Header">> => rate_limit_header(),
%%   <<"IP">> => rate_limit_ip(),
%%   <<"JA3Fingerprint">> => rate_limit_j_a3_fingerprint(),
%%   <<"JA4Fingerprint">> => rate_limit_j_a4_fingerprint(),
%%   <<"LabelNamespace">> => rate_limit_label_namespace(),
%%   <<"QueryArgument">> => rate_limit_query_argument(),
%%   <<"QueryString">> => rate_limit_query_string(),
%%   <<"UriPath">> => rate_limit_uri_path()
%% }
-type rate_based_statement_custom_key() :: #{binary() => any()}.

%% Example:
%% get_decrypted_api_key_response() :: #{
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"TokenDomains">> => list(string()())
%% }
-type get_decrypted_api_key_response() :: #{binary() => any()}.

%% Example:
%% list_api_keys_response() :: #{
%%   <<"APIKeySummaries">> => list(api_key_summary()()),
%%   <<"ApplicationIntegrationURL">> => string(),
%%   <<"NextMarker">> => string()
%% }
-type list_api_keys_response() :: #{binary() => any()}.

%% Example:
%% api_key_summary() :: #{
%%   <<"APIKey">> => string(),
%%   <<"CreationTimestamp">> => non_neg_integer(),
%%   <<"TokenDomains">> => list(string()()),
%%   <<"Version">> => integer()
%% }
-type api_key_summary() :: #{binary() => any()}.

%% Example:
%% rate_limit_query_argument() :: #{
%%   <<"Name">> => string(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type rate_limit_query_argument() :: #{binary() => any()}.

%% Example:
%% get_rule_group_request() :: #{
%%   <<"ARN">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Scope">> => list(any())
%% }
-type get_rule_group_request() :: #{binary() => any()}.

%% Example:
%% describe_managed_products_by_vendor_response() :: #{
%%   <<"ManagedProducts">> => list(managed_product_descriptor()())
%% }
-type describe_managed_products_by_vendor_response() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RuleGroups">> => list(rule_group_summary()())
%% }
-type list_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% response_inspection_json() :: #{
%%   <<"FailureValues">> => list(string()()),
%%   <<"Identifier">> => string(),
%%   <<"SuccessValues">> => list(string()())
%% }
-type response_inspection_json() :: #{binary() => any()}.

%% Example:
%% list_ip_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_ip_sets_request() :: #{binary() => any()}.

%% Example:
%% rate_based_statement_managed_keys_ip_set() :: #{
%%   <<"Addresses">> => list(string()()),
%%   <<"IPAddressVersion">> => list(any())
%% }
-type rate_based_statement_managed_keys_ip_set() :: #{binary() => any()}.

%% Example:
%% j_a4_fingerprint() :: #{
%%   <<"FallbackBehavior">> => list(any())
%% }
-type j_a4_fingerprint() :: #{binary() => any()}.

%% Example:
%% request_inspection_a_c_f_p() :: #{
%%   <<"AddressFields">> => list(address_field()()),
%%   <<"EmailField">> => email_field(),
%%   <<"PasswordField">> => password_field(),
%%   <<"PayloadType">> => list(any()),
%%   <<"PhoneNumberFields">> => list(phone_number_field()()),
%%   <<"UsernameField">> => username_field()
%% }
-type request_inspection_a_c_f_p() :: #{binary() => any()}.

%% Example:
%% query_string() :: #{

%% }
-type query_string() :: #{binary() => any()}.

%% Example:
%% response_inspection() :: #{
%%   <<"BodyContains">> => response_inspection_body_contains(),
%%   <<"Header">> => response_inspection_header(),
%%   <<"Json">> => response_inspection_json(),
%%   <<"StatusCode">> => response_inspection_status_code()
%% }
-type response_inspection() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% custom_response_body() :: #{
%%   <<"Content">> => string(),
%%   <<"ContentType">> => list(any())
%% }
-type custom_response_body() :: #{binary() => any()}.

%% Example:
%% rate_limit_ip() :: #{

%% }
-type rate_limit_ip() :: #{binary() => any()}.

%% Example:
%% custom_response() :: #{
%%   <<"CustomResponseBodyKey">> => string(),
%%   <<"ResponseCode">> => integer(),
%%   <<"ResponseHeaders">> => list(custom_h_t_t_p_header()())
%% }
-type custom_response() :: #{binary() => any()}.

%% Example:
%% describe_all_managed_products_response() :: #{
%%   <<"ManagedProducts">> => list(managed_product_descriptor()())
%% }
-type describe_all_managed_products_response() :: #{binary() => any()}.

%% Example:
%% rate_limit_label_namespace() :: #{
%%   <<"Namespace">> => string()
%% }
-type rate_limit_label_namespace() :: #{binary() => any()}.

%% Example:
%% update_managed_rule_set_version_expiry_date_response() :: #{
%%   <<"ExpiringVersion">> => string(),
%%   <<"ExpiryTimestamp">> => non_neg_integer(),
%%   <<"NextLockToken">> => string()
%% }
-type update_managed_rule_set_version_expiry_date_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_unsupported_aggregate_key_type_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_unsupported_aggregate_key_type_exception() :: #{binary() => any()}.

%% Example:
%% field_to_match() :: #{
%%   <<"AllQueryArguments">> => all_query_arguments(),
%%   <<"Body">> => body(),
%%   <<"Cookies">> => cookies(),
%%   <<"HeaderOrder">> => header_order(),
%%   <<"Headers">> => headers(),
%%   <<"JA3Fingerprint">> => j_a3_fingerprint(),
%%   <<"JA4Fingerprint">> => j_a4_fingerprint(),
%%   <<"JsonBody">> => json_body(),
%%   <<"Method">> => method(),
%%   <<"QueryString">> => query_string(),
%%   <<"SingleHeader">> => single_header(),
%%   <<"SingleQueryArgument">> => single_query_argument(),
%%   <<"UriFragment">> => uri_fragment(),
%%   <<"UriPath">> => uri_path()
%% }
-type field_to_match() :: #{binary() => any()}.

%% Example:
%% w_a_f_service_linked_role_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_service_linked_role_error_exception() :: #{binary() => any()}.

%% Example:
%% allow_action() :: #{
%%   <<"CustomRequestHandling">> => custom_request_handling()
%% }
-type allow_action() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set_reference_statement() :: #{
%%   <<"ARN">> => string(),
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type regex_pattern_set_reference_statement() :: #{binary() => any()}.

%% Example:
%% update_ip_set_response() :: #{
%%   <<"NextLockToken">> => string()
%% }
-type update_ip_set_response() :: #{binary() => any()}.

%% Example:
%% get_mobile_sdk_release_request() :: #{
%%   <<"Platform">> := list(any()),
%%   <<"ReleaseVersion">> := string()
%% }
-type get_mobile_sdk_release_request() :: #{binary() => any()}.

%% Example:
%% associate_web_acl_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"WebACLArn">> := string()
%% }
-type associate_web_acl_request() :: #{binary() => any()}.

%% Example:
%% count_action() :: #{
%%   <<"CustomRequestHandling">> => custom_request_handling()
%% }
-type count_action() :: #{binary() => any()}.

%% Example:
%% rule_group() :: #{
%%   <<"ARN">> => string(),
%%   <<"AvailableLabels">> => list(label_summary()()),
%%   <<"Capacity">> => float(),
%%   <<"ConsumedLabels">> => list(label_summary()()),
%%   <<"CustomResponseBodies">> => map(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LabelNamespace">> => string(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(rule()()),
%%   <<"VisibilityConfig">> => visibility_config()
%% }
-type rule_group() :: #{binary() => any()}.

%% Example:
%% managed_rule_set() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LabelNamespace">> => string(),
%%   <<"Name">> => string(),
%%   <<"PublishedVersions">> => map(),
%%   <<"RecommendedVersion">> => string()
%% }
-type managed_rule_set() :: #{binary() => any()}.

%% Example:
%% generate_mobile_sdk_release_url_response() :: #{
%%   <<"Url">> => string()
%% }
-type generate_mobile_sdk_release_url_response() :: #{binary() => any()}.

%% Example:
%% rate_based_statement() :: #{
%%   <<"AggregateKeyType">> => list(any()),
%%   <<"CustomKeys">> => list(rate_based_statement_custom_key()()),
%%   <<"EvaluationWindowSec">> => float(),
%%   <<"ForwardedIPConfig">> => forwarded_ip_config(),
%%   <<"Limit">> => float(),
%%   <<"ScopeDownStatement">> => statement()
%% }
-type rate_based_statement() :: #{binary() => any()}.

%% Example:
%% get_web_acl_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_web_acl_for_resource_request() :: #{binary() => any()}.

%% Example:
%% managed_rule_set_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LabelNamespace">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"Name">> => string()
%% }
-type managed_rule_set_summary() :: #{binary() => any()}.

%% Example:
%% sqli_match_statement() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"SensitivityLevel">> => list(any()),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type sqli_match_statement() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_request() :: #{
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type delete_ip_set_request() :: #{binary() => any()}.

%% Example:
%% statement() :: #{
%%   <<"AndStatement">> => and_statement(),
%%   <<"AsnMatchStatement">> => asn_match_statement(),
%%   <<"ByteMatchStatement">> => byte_match_statement(),
%%   <<"GeoMatchStatement">> => geo_match_statement(),
%%   <<"IPSetReferenceStatement">> => ip_set_reference_statement(),
%%   <<"LabelMatchStatement">> => label_match_statement(),
%%   <<"ManagedRuleGroupStatement">> => managed_rule_group_statement(),
%%   <<"NotStatement">> => not_statement(),
%%   <<"OrStatement">> => or_statement(),
%%   <<"RateBasedStatement">> => rate_based_statement(),
%%   <<"RegexMatchStatement">> => regex_match_statement(),
%%   <<"RegexPatternSetReferenceStatement">> => regex_pattern_set_reference_statement(),
%%   <<"RuleGroupReferenceStatement">> => rule_group_reference_statement(),
%%   <<"SizeConstraintStatement">> => size_constraint_statement(),
%%   <<"SqliMatchStatement">> => sqli_match_statement(),
%%   <<"XssMatchStatement">> => xss_match_statement()
%% }
-type statement() :: #{binary() => any()}.

%% Example:
%% custom_request_handling() :: #{
%%   <<"InsertHeaders">> => list(custom_h_t_t_p_header()())
%% }
-type custom_request_handling() :: #{binary() => any()}.

%% Example:
%% regex_match_statement() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"RegexString">> => string(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type regex_match_statement() :: #{binary() => any()}.

%% Example:
%% get_rule_group_response() :: #{
%%   <<"LockToken">> => string(),
%%   <<"RuleGroup">> => rule_group()
%% }
-type get_rule_group_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_unavailable_entity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_unavailable_entity_exception() :: #{binary() => any()}.

%% Example:
%% get_regex_pattern_set_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type get_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% response_inspection_status_code() :: #{
%%   <<"FailureCodes">> => list(integer()()),
%%   <<"SuccessCodes">> => list(integer()())
%% }
-type response_inspection_status_code() :: #{binary() => any()}.

%% Example:
%% get_web_acl_response() :: #{
%%   <<"ApplicationIntegrationURL">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"WebACL">> => web_acl()
%% }
-type get_web_acl_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_info_for_resource() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"TagList">> => list(tag()())
%% }
-type tag_info_for_resource() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_permission_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_invalid_permission_policy_exception() :: #{binary() => any()}.

%% Example:
%% request_body_associated_resource_type_config() :: #{
%%   <<"DefaultSizeInspectionLimit">> => list(any())
%% }
-type request_body_associated_resource_type_config() :: #{binary() => any()}.

%% Example:
%% managed_product_descriptor() :: #{
%%   <<"IsAdvancedManagedRuleSet">> => boolean(),
%%   <<"IsVersioningSupported">> => boolean(),
%%   <<"ManagedRuleSetName">> => string(),
%%   <<"ProductDescription">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductLink">> => string(),
%%   <<"ProductTitle">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"VendorName">> => string()
%% }
-type managed_product_descriptor() :: #{binary() => any()}.

%% Example:
%% captcha_config() :: #{
%%   <<"ImmunityTimeProperty">> => immunity_time_property()
%% }
-type captcha_config() :: #{binary() => any()}.

%% Example:
%% list_available_managed_rule_group_versions_response() :: #{
%%   <<"CurrentDefaultVersion">> => string(),
%%   <<"NextMarker">> => string(),
%%   <<"Versions">> => list(managed_rule_group_version()())
%% }
-type list_available_managed_rule_group_versions_response() :: #{binary() => any()}.

%% Example:
%% generate_mobile_sdk_release_url_request() :: #{
%%   <<"Platform">> := list(any()),
%%   <<"ReleaseVersion">> := string()
%% }
-type generate_mobile_sdk_release_url_request() :: #{binary() => any()}.

%% Example:
%% update_ip_set_request() :: #{
%%   <<"Addresses">> := list(string()()),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type update_ip_set_request() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"LogDestinationConfigs">> => list(string()()),
%%   <<"LogScope">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"LoggingFilter">> => logging_filter(),
%%   <<"ManagedByFirewallManager">> => boolean(),
%%   <<"RedactedFields">> => list(field_to_match()()),
%%   <<"ResourceArn">> => string()
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% rate_limit_cookie() :: #{
%%   <<"Name">> => string(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type rate_limit_cookie() :: #{binary() => any()}.

%% Example:
%% create_rule_group_response() :: #{
%%   <<"Summary">> => rule_group_summary()
%% }
-type create_rule_group_response() :: #{binary() => any()}.

%% Example:
%% create_rule_group_request() :: #{
%%   <<"Capacity">> := float(),
%%   <<"CustomResponseBodies">> => map(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Rules">> => list(rule()()),
%%   <<"Scope">> := list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VisibilityConfig">> := visibility_config()
%% }
-type create_rule_group_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_associated_item_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_associated_item_exception() :: #{binary() => any()}.

%% Example:
%% put_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type put_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% challenge_action() :: #{
%%   <<"CustomRequestHandling">> => custom_request_handling()
%% }
-type challenge_action() :: #{binary() => any()}.

%% Example:
%% describe_all_managed_products_request() :: #{
%%   <<"Scope">> := list(any())
%% }
-type describe_all_managed_products_request() :: #{binary() => any()}.

%% Example:
%% list_available_managed_rule_groups_response() :: #{
%%   <<"ManagedRuleGroups">> => list(managed_rule_group_summary()()),
%%   <<"NextMarker">> => string()
%% }
-type list_available_managed_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% delete_regex_pattern_set_request() :: #{
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type delete_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% web_acl() :: #{
%%   <<"ARN">> => string(),
%%   <<"AssociationConfig">> => association_config(),
%%   <<"Capacity">> => float(),
%%   <<"CaptchaConfig">> => captcha_config(),
%%   <<"ChallengeConfig">> => challenge_config(),
%%   <<"CustomResponseBodies">> => map(),
%%   <<"DataProtectionConfig">> => data_protection_config(),
%%   <<"DefaultAction">> => default_action(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LabelNamespace">> => string(),
%%   <<"ManagedByFirewallManager">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"PostProcessFirewallManagerRuleGroups">> => list(firewall_manager_rule_group()()),
%%   <<"PreProcessFirewallManagerRuleGroups">> => list(firewall_manager_rule_group()()),
%%   <<"RetrofittedByFirewallManager">> => boolean(),
%%   <<"Rules">> => list(rule()()),
%%   <<"TokenDomains">> => list(string()()),
%%   <<"VisibilityConfig">> => visibility_config()
%% }
-type web_acl() :: #{binary() => any()}.

%% Example:
%% get_rate_based_statement_managed_keys_response() :: #{
%%   <<"ManagedKeysIPV4">> => rate_based_statement_managed_keys_ip_set(),
%%   <<"ManagedKeysIPV6">> => rate_based_statement_managed_keys_ip_set()
%% }
-type get_rate_based_statement_managed_keys_response() :: #{binary() => any()}.

%% Example:
%% managed_rule_set_version() :: #{
%%   <<"AssociatedRuleGroupArn">> => string(),
%%   <<"Capacity">> => float(),
%%   <<"ExpiryTimestamp">> => non_neg_integer(),
%%   <<"ForecastedLifetime">> => integer(),
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"PublishTimestamp">> => non_neg_integer()
%% }
-type managed_rule_set_version() :: #{binary() => any()}.

%% Example:
%% w_a_f_internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% delete_permission_policy_response() :: #{

%% }
-type delete_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% all_query_arguments() :: #{

%% }
-type all_query_arguments() :: #{binary() => any()}.

%% Example:
%% get_rate_based_statement_managed_keys_request() :: #{
%%   <<"RuleGroupRuleName">> => string(),
%%   <<"RuleName">> := string(),
%%   <<"Scope">> := list(any()),
%%   <<"WebACLId">> := string(),
%%   <<"WebACLName">> := string()
%% }
-type get_rate_based_statement_managed_keys_request() :: #{binary() => any()}.

%% Example:
%% update_regex_pattern_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"RegularExpressionList">> := list(regex()()),
%%   <<"Scope">> := list(any())
%% }
-type update_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% block_action() :: #{
%%   <<"CustomResponse">> => custom_response()
%% }
-type block_action() :: #{binary() => any()}.

%% Example:
%% size_constraint_statement() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"Size">> => float(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type size_constraint_statement() :: #{binary() => any()}.

%% Example:
%% time_window() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_window() :: #{binary() => any()}.

%% Example:
%% list_ip_sets_response() :: #{
%%   <<"IPSets">> => list(ip_set_summary()()),
%%   <<"NextMarker">> => string()
%% }
-type list_ip_sets_response() :: #{binary() => any()}.

%% Example:
%% rate_limit_h_t_t_p_method() :: #{

%% }
-type rate_limit_h_t_t_p_method() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_web_acl_response() :: #{
%%   <<"Summary">> => web_acl_summary()
%% }
-type create_web_acl_response() :: #{binary() => any()}.

%% Example:
%% data_protection() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ExcludeRateBasedDetails">> => boolean(),
%%   <<"ExcludeRuleMatchDetails">> => boolean(),
%%   <<"Field">> => field_to_protect()
%% }
-type data_protection() :: #{binary() => any()}.

%% Example:
%% none_action() :: #{

%% }
-type none_action() :: #{binary() => any()}.

%% Example:
%% cookie_match_pattern() :: #{
%%   <<"All">> => all(),
%%   <<"ExcludedCookies">> => list(string()()),
%%   <<"IncludedCookies">> => list(string()())
%% }
-type cookie_match_pattern() :: #{binary() => any()}.

%% Example:
%% managed_rule_group_version() :: #{
%%   <<"LastUpdateTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type managed_rule_group_version() :: #{binary() => any()}.

%% Example:
%% username_field() :: #{
%%   <<"Identifier">> => string()
%% }
-type username_field() :: #{binary() => any()}.

%% Example:
%% data_protection_config() :: #{
%%   <<"DataProtections">> => list(data_protection()())
%% }
-type data_protection_config() :: #{binary() => any()}.

%% Example:
%% rate_limit_forwarded_ip() :: #{

%% }
-type rate_limit_forwarded_ip() :: #{binary() => any()}.

%% Example:
%% rule_group_reference_statement() :: #{
%%   <<"ARN">> => string(),
%%   <<"ExcludedRules">> => list(excluded_rule()()),
%%   <<"RuleActionOverrides">> => list(rule_action_override()())
%% }
-type rule_group_reference_statement() :: #{binary() => any()}.

%% Example:
%% update_web_acl_response() :: #{
%%   <<"NextLockToken">> => string()
%% }
-type update_web_acl_response() :: #{binary() => any()}.

%% Example:
%% default_action() :: #{
%%   <<"Allow">> => allow_action(),
%%   <<"Block">> => block_action()
%% }
-type default_action() :: #{binary() => any()}.

%% Example:
%% get_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type get_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% response_inspection_body_contains() :: #{
%%   <<"FailureStrings">> => list(string()()),
%%   <<"SuccessStrings">> => list(string()())
%% }
-type response_inspection_body_contains() :: #{binary() => any()}.

%% Example:
%% rate_limit_asn() :: #{

%% }
-type rate_limit_asn() :: #{binary() => any()}.

%% Example:
%% rate_limit_j_a3_fingerprint() :: #{
%%   <<"FallbackBehavior">> => list(any())
%% }
-type rate_limit_j_a3_fingerprint() :: #{binary() => any()}.

%% Example:
%% rate_limit_query_string() :: #{
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type rate_limit_query_string() :: #{binary() => any()}.

%% Example:
%% list_mobile_sdk_releases_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"ReleaseSummaries">> => list(release_summary()())
%% }
-type list_mobile_sdk_releases_response() :: #{binary() => any()}.

%% Example:
%% field_to_protect() :: #{
%%   <<"FieldKeys">> => list(string()()),
%%   <<"FieldType">> => list(any())
%% }
-type field_to_protect() :: #{binary() => any()}.

%% Example:
%% put_managed_rule_set_versions_response() :: #{
%%   <<"NextLockToken">> => string()
%% }
-type put_managed_rule_set_versions_response() :: #{binary() => any()}.

%% Example:
%% address_field() :: #{
%%   <<"Identifier">> => string()
%% }
-type address_field() :: #{binary() => any()}.

%% Example:
%% delete_api_key_response() :: #{

%% }
-type delete_api_key_response() :: #{binary() => any()}.

%% Example:
%% ip_set() :: #{
%%   <<"ARN">> => string(),
%%   <<"Addresses">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"IPAddressVersion">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type ip_set() :: #{binary() => any()}.

%% Example:
%% json_match_pattern() :: #{
%%   <<"All">> => all(),
%%   <<"IncludedPaths">> => list(string()())
%% }
-type json_match_pattern() :: #{binary() => any()}.

%% Example:
%% describe_managed_rule_group_response() :: #{
%%   <<"AvailableLabels">> => list(label_summary()()),
%%   <<"Capacity">> => float(),
%%   <<"ConsumedLabels">> => list(label_summary()()),
%%   <<"LabelNamespace">> => string(),
%%   <<"Rules">> => list(rule_summary()()),
%%   <<"SnsTopicArn">> => string(),
%%   <<"VersionName">> => string()
%% }
-type describe_managed_rule_group_response() :: #{binary() => any()}.

%% Example:
%% phone_number_field() :: #{
%%   <<"Identifier">> => string()
%% }
-type phone_number_field() :: #{binary() => any()}.

%% Example:
%% label_match_statement() :: #{
%%   <<"Key">> => string(),
%%   <<"Scope">> => list(any())
%% }
-type label_match_statement() :: #{binary() => any()}.

%% Example:
%% disassociate_web_acl_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type disassociate_web_acl_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_tag_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_tag_operation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TagInfoForResource">> => tag_info_for_resource()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% sampled_h_t_t_p_request() :: #{
%%   <<"Action">> => string(),
%%   <<"CaptchaResponse">> => captcha_response(),
%%   <<"ChallengeResponse">> => challenge_response(),
%%   <<"Labels">> => list(label()()),
%%   <<"OverriddenAction">> => string(),
%%   <<"Request">> => h_t_t_p_request(),
%%   <<"RequestHeadersInserted">> => list(h_t_t_p_header()()),
%%   <<"ResponseCodeSent">> => integer(),
%%   <<"RuleNameWithinRuleGroup">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Weight">> => float()
%% }
-type sampled_h_t_t_p_request() :: #{binary() => any()}.

%% Example:
%% j_a3_fingerprint() :: #{
%%   <<"FallbackBehavior">> => list(any())
%% }
-type j_a3_fingerprint() :: #{binary() => any()}.

%% Example:
%% update_web_acl_request() :: #{
%%   <<"AssociationConfig">> => association_config(),
%%   <<"CaptchaConfig">> => captcha_config(),
%%   <<"ChallengeConfig">> => challenge_config(),
%%   <<"CustomResponseBodies">> => map(),
%%   <<"DataProtectionConfig">> => data_protection_config(),
%%   <<"DefaultAction">> := default_action(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Rules">> => list(rule()()),
%%   <<"Scope">> := list(any()),
%%   <<"TokenDomains">> => list(string()()),
%%   <<"VisibilityConfig">> := visibility_config()
%% }
-type update_web_acl_request() :: #{binary() => any()}.

%% Example:
%% get_web_acl_for_resource_response() :: #{
%%   <<"WebACL">> => web_acl()
%% }
-type get_web_acl_for_resource_response() :: #{binary() => any()}.

%% Example:
%% email_field() :: #{
%%   <<"Identifier">> => string()
%% }
-type email_field() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_parameter_exception() :: #{
%%   <<"Field">> => list(any()),
%%   <<"Parameter">> => string(),
%%   <<"Reason">> => string(),
%%   <<"message">> => string()
%% }
-type w_a_f_invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% uri_fragment() :: #{
%%   <<"FallbackBehavior">> => list(any())
%% }
-type uri_fragment() :: #{binary() => any()}.

%% Example:
%% json_body() :: #{
%%   <<"InvalidFallbackBehavior">> => list(any()),
%%   <<"MatchPattern">> => json_match_pattern(),
%%   <<"MatchScope">> => list(any()),
%%   <<"OversizeHandling">> => list(any())
%% }
-type json_body() :: #{binary() => any()}.

%% Example:
%% all() :: #{

%% }
-type all() :: #{binary() => any()}.

%% Example:
%% uri_path() :: #{

%% }
-type uri_path() :: #{binary() => any()}.

%% Example:
%% list_regex_pattern_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_regex_pattern_sets_request() :: #{binary() => any()}.

%% Example:
%% condition() :: #{
%%   <<"ActionCondition">> => action_condition(),
%%   <<"LabelNameCondition">> => label_name_condition()
%% }
-type condition() :: #{binary() => any()}.

%% Example:
%% response_inspection_header() :: #{
%%   <<"FailureValues">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"SuccessValues">> => list(string()())
%% }
-type response_inspection_header() :: #{binary() => any()}.

%% Example:
%% check_capacity_response() :: #{
%%   <<"Capacity">> => float()
%% }
-type check_capacity_response() :: #{binary() => any()}.

%% Example:
%% visibility_config() :: #{
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"MetricName">> => string(),
%%   <<"SampledRequestsEnabled">> => boolean()
%% }
-type visibility_config() :: #{binary() => any()}.

%% Example:
%% create_api_key_response() :: #{
%%   <<"APIKey">> => string()
%% }
-type create_api_key_response() :: #{binary() => any()}.

%% Example:
%% challenge_response() :: #{
%%   <<"FailureReason">> => list(any()),
%%   <<"ResponseCode">> => integer(),
%%   <<"SolveTimestamp">> => float()
%% }
-type challenge_response() :: #{binary() => any()}.

%% Example:
%% ip_set_reference_statement() :: #{
%%   <<"ARN">> => string(),
%%   <<"IPSetForwardedIPConfig">> => ip_set_forwarded_ip_config()
%% }
-type ip_set_reference_statement() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Behavior">> => list(any()),
%%   <<"Conditions">> => list(condition()()),
%%   <<"Requirement">> => list(any())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% rate_limit_uri_path() :: #{
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type rate_limit_uri_path() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"Action">> => rule_action(),
%%   <<"CaptchaConfig">> => captcha_config(),
%%   <<"ChallengeConfig">> => challenge_config(),
%%   <<"Name">> => string(),
%%   <<"OverrideAction">> => override_action(),
%%   <<"Priority">> => integer(),
%%   <<"RuleLabels">> => list(label()()),
%%   <<"Statement">> => statement(),
%%   <<"VisibilityConfig">> => visibility_config()
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% delete_regex_pattern_set_response() :: #{

%% }
-type delete_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% list_managed_rule_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_managed_rule_sets_request() :: #{binary() => any()}.

%% Example:
%% create_api_key_request() :: #{
%%   <<"Scope">> := list(any()),
%%   <<"TokenDomains">> := list(string()())
%% }
-type create_api_key_request() :: #{binary() => any()}.

%% Example:
%% get_mobile_sdk_release_response() :: #{
%%   <<"MobileSdkRelease">> => mobile_sdk_release()
%% }
-type get_mobile_sdk_release_response() :: #{binary() => any()}.

%% Example:
%% get_logging_configuration_request() :: #{
%%   <<"LogScope">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"ResourceArn">> := string()
%% }
-type get_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_regex_pattern_set_response() :: #{
%%   <<"LockToken">> => string(),
%%   <<"RegexPatternSet">> => regex_pattern_set()
%% }
-type get_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"Name">> => string()
%% }
-type regex_pattern_set_summary() :: #{binary() => any()}.

%% Example:
%% put_permission_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% rule_action() :: #{
%%   <<"Allow">> => allow_action(),
%%   <<"Block">> => block_action(),
%%   <<"Captcha">> => captcha_action(),
%%   <<"Challenge">> => challenge_action(),
%%   <<"Count">> => count_action()
%% }
-type rule_action() :: #{binary() => any()}.

%% Example:
%% list_managed_rule_sets_response() :: #{
%%   <<"ManagedRuleSets">> => list(managed_rule_set_summary()()),
%%   <<"NextMarker">> => string()
%% }
-type list_managed_rule_sets_response() :: #{binary() => any()}.

%% Example:
%% xss_match_statement() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type xss_match_statement() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% put_managed_rule_set_versions_request() :: #{
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"RecommendedVersion">> => string(),
%%   <<"Scope">> := list(any()),
%%   <<"VersionsToPublish">> => map()
%% }
-type put_managed_rule_set_versions_request() :: #{binary() => any()}.

%% Example:
%% rule_summary() :: #{
%%   <<"Action">> => rule_action(),
%%   <<"Name">> => string()
%% }
-type rule_summary() :: #{binary() => any()}.

%% Example:
%% update_managed_rule_set_version_expiry_date_request() :: #{
%%   <<"ExpiryTimestamp">> := non_neg_integer(),
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any()),
%%   <<"VersionToExpire">> := string()
%% }
-type update_managed_rule_set_version_expiry_date_request() :: #{binary() => any()}.

%% Example:
%% managed_rule_group_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"VendorName">> => string(),
%%   <<"VersioningSupported">> => boolean()
%% }
-type managed_rule_group_summary() :: #{binary() => any()}.

%% Example:
%% forwarded_ip_config() :: #{
%%   <<"FallbackBehavior">> => list(any()),
%%   <<"HeaderName">> => string()
%% }
-type forwarded_ip_config() :: #{binary() => any()}.

%% Example:
%% list_logging_configurations_response() :: #{
%%   <<"LoggingConfigurations">> => list(logging_configuration()()),
%%   <<"NextMarker">> => string()
%% }
-type list_logging_configurations_response() :: #{binary() => any()}.

%% Example:
%% h_t_t_p_header() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type h_t_t_p_header() :: #{binary() => any()}.

%% Example:
%% list_mobile_sdk_releases_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Platform">> := list(any())
%% }
-type list_mobile_sdk_releases_request() :: #{binary() => any()}.

%% Example:
%% challenge_config() :: #{
%%   <<"ImmunityTimeProperty">> => immunity_time_property()
%% }
-type challenge_config() :: #{binary() => any()}.

%% Example:
%% and_statement() :: #{
%%   <<"Statements">> => list(statement()())
%% }
-type and_statement() :: #{binary() => any()}.

%% Example:
%% or_statement() :: #{
%%   <<"Statements">> => list(statement()())
%% }
-type or_statement() :: #{binary() => any()}.

%% Example:
%% get_permission_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% excluded_rule() :: #{
%%   <<"Name">> => string()
%% }
-type excluded_rule() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_invalid_resource_exception() :: #{binary() => any()}.

%% Example:
%% create_web_acl_request() :: #{
%%   <<"AssociationConfig">> => association_config(),
%%   <<"CaptchaConfig">> => captcha_config(),
%%   <<"ChallengeConfig">> => challenge_config(),
%%   <<"CustomResponseBodies">> => map(),
%%   <<"DataProtectionConfig">> => data_protection_config(),
%%   <<"DefaultAction">> := default_action(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Rules">> => list(rule()()),
%%   <<"Scope">> := list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TokenDomains">> => list(string()()),
%%   <<"VisibilityConfig">> := visibility_config()
%% }
-type create_web_acl_request() :: #{binary() => any()}.

%% Example:
%% create_ip_set_request() :: #{
%%   <<"Addresses">> := list(string()()),
%%   <<"Description">> => string(),
%%   <<"IPAddressVersion">> := list(any()),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_ip_set_request() :: #{binary() => any()}.

%% Example:
%% update_rule_group_request() :: #{
%%   <<"CustomResponseBodies">> => map(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Rules">> => list(rule()()),
%%   <<"Scope">> := list(any()),
%%   <<"VisibilityConfig">> := visibility_config()
%% }
-type update_rule_group_request() :: #{binary() => any()}.

%% Example:
%% get_ip_set_response() :: #{
%%   <<"IPSet">> => ip_set(),
%%   <<"LockToken">> => string()
%% }
-type get_ip_set_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_response() :: #{

%% }
-type delete_rule_group_response() :: #{binary() => any()}.

%% Example:
%% text_transformation() :: #{
%%   <<"Priority">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type text_transformation() :: #{binary() => any()}.

%% Example:
%% h_t_t_p_request() :: #{
%%   <<"ClientIP">> => string(),
%%   <<"Country">> => string(),
%%   <<"HTTPVersion">> => string(),
%%   <<"Headers">> => list(h_t_t_p_header()()),
%%   <<"Method">> => string(),
%%   <<"URI">> => string()
%% }
-type h_t_t_p_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% asn_match_statement() :: #{
%%   <<"AsnList">> => list(float()()),
%%   <<"ForwardedIPConfig">> => forwarded_ip_config()
%% }
-type asn_match_statement() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"RegularExpressionList">> => list(regex()())
%% }
-type regex_pattern_set() :: #{binary() => any()}.

%% Example:
%% delete_api_key_request() :: #{
%%   <<"APIKey">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type delete_api_key_request() :: #{binary() => any()}.

%% Example:
%% logging_filter() :: #{
%%   <<"DefaultBehavior">> => list(any()),
%%   <<"Filters">> => list(filter()())
%% }
-type logging_filter() :: #{binary() => any()}.

%% Example:
%% release_summary() :: #{
%%   <<"ReleaseVersion">> => string(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type release_summary() :: #{binary() => any()}.

%% Example:
%% list_available_managed_rule_group_versions_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any()),
%%   <<"VendorName">> := string()
%% }
-type list_available_managed_rule_group_versions_request() :: #{binary() => any()}.

%% Example:
%% rule_group_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"Name">> => string()
%% }
-type rule_group_summary() :: #{binary() => any()}.

%% Example:
%% describe_managed_products_by_vendor_request() :: #{
%%   <<"Scope">> := list(any()),
%%   <<"VendorName">> := string()
%% }
-type describe_managed_products_by_vendor_request() :: #{binary() => any()}.

%% Example:
%% ip_set_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"Name">> => string()
%% }
-type ip_set_summary() :: #{binary() => any()}.

%% Example:
%% create_regex_pattern_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"RegularExpressionList">> := list(regex()()),
%%   <<"Scope">> := list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% headers() :: #{
%%   <<"MatchPattern">> => header_match_pattern(),
%%   <<"MatchScope">> => list(any()),
%%   <<"OversizeHandling">> => list(any())
%% }
-type headers() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% firewall_manager_statement() :: #{
%%   <<"ManagedRuleGroupStatement">> => managed_rule_group_statement(),
%%   <<"RuleGroupReferenceStatement">> => rule_group_reference_statement()
%% }
-type firewall_manager_statement() :: #{binary() => any()}.

%% Example:
%% delete_permission_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% list_api_keys_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_api_keys_request() :: #{binary() => any()}.

%% Example:
%% body() :: #{
%%   <<"OversizeHandling">> => list(any())
%% }
-type body() :: #{binary() => any()}.

%% Example:
%% get_permission_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_duplicate_item_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_duplicate_item_exception() :: #{binary() => any()}.

%% Example:
%% delete_firewall_manager_rule_groups_response() :: #{
%%   <<"NextWebACLLockToken">> => string()
%% }
-type delete_firewall_manager_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% label_name_condition() :: #{
%%   <<"LabelName">> => string()
%% }
-type label_name_condition() :: #{binary() => any()}.

%% Example:
%% list_resources_for_web_acl_response() :: #{
%%   <<"ResourceArns">> => list(string()())
%% }
-type list_resources_for_web_acl_response() :: #{binary() => any()}.

%% Example:
%% list_logging_configurations_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"LogScope">> => list(any()),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_logging_configurations_request() :: #{binary() => any()}.

%% Example:
%% single_header() :: #{
%%   <<"Name">> => string()
%% }
-type single_header() :: #{binary() => any()}.

%% Example:
%% delete_logging_configuration_response() :: #{

%% }
-type delete_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_managed_rule_set_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type get_managed_rule_set_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_optimistic_lock_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_optimistic_lock_exception() :: #{binary() => any()}.

%% Example:
%% get_ip_set_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type get_ip_set_request() :: #{binary() => any()}.

%% Example:
%% geo_match_statement() :: #{
%%   <<"CountryCodes">> => list(list(any())()),
%%   <<"ForwardedIPConfig">> => forwarded_ip_config()
%% }
-type geo_match_statement() :: #{binary() => any()}.

%% Example:
%% captcha_action() :: #{
%%   <<"CustomRequestHandling">> => custom_request_handling()
%% }
-type captcha_action() :: #{binary() => any()}.

%% Example:
%% get_managed_rule_set_response() :: #{
%%   <<"LockToken">> => string(),
%%   <<"ManagedRuleSet">> => managed_rule_set()
%% }
-type get_managed_rule_set_response() :: #{binary() => any()}.

%% Example:
%% disassociate_web_acl_response() :: #{

%% }
-type disassociate_web_acl_response() :: #{binary() => any()}.

%% Example:
%% put_logging_configuration_request() :: #{
%%   <<"LoggingConfiguration">> := logging_configuration()
%% }
-type put_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% cookies() :: #{
%%   <<"MatchPattern">> => cookie_match_pattern(),
%%   <<"MatchScope">> => list(any()),
%%   <<"OversizeHandling">> => list(any())
%% }
-type cookies() :: #{binary() => any()}.

%% Example:
%% put_permission_policy_response() :: #{

%% }
-type put_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_log_destination_permission_issue_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_log_destination_permission_issue_exception() :: #{binary() => any()}.

%% Example:
%% rate_limit_header() :: #{
%%   <<"Name">> => string(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type rate_limit_header() :: #{binary() => any()}.

%% Example:
%% aws_managed_rules_bot_control_rule_set() :: #{
%%   <<"EnableMachineLearning">> => boolean(),
%%   <<"InspectionLevel">> => list(any())
%% }
-type aws_managed_rules_bot_control_rule_set() :: #{binary() => any()}.

%% Example:
%% delete_logging_configuration_request() :: #{
%%   <<"LogScope">> => list(any()),
%%   <<"LogType">> => list(any()),
%%   <<"ResourceArn">> := string()
%% }
-type delete_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% method() :: #{

%% }
-type method() :: #{binary() => any()}.

%% Example:
%% action_condition() :: #{
%%   <<"Action">> => list(any())
%% }
-type action_condition() :: #{binary() => any()}.

%% Example:
%% get_sampled_requests_response() :: #{
%%   <<"PopulationSize">> => float(),
%%   <<"SampledRequests">> => list(sampled_h_t_t_p_request()()),
%%   <<"TimeWindow">> => time_window()
%% }
-type get_sampled_requests_response() :: #{binary() => any()}.

%% Example:
%% managed_rule_group_config() :: #{
%%   <<"AWSManagedRulesACFPRuleSet">> => aws_managed_rules_a_c_f_p_rule_set(),
%%   <<"AWSManagedRulesATPRuleSet">> => aws_managed_rules_a_t_p_rule_set(),
%%   <<"AWSManagedRulesBotControlRuleSet">> => aws_managed_rules_bot_control_rule_set(),
%%   <<"LoginPath">> => string(),
%%   <<"PasswordField">> => password_field(),
%%   <<"PayloadType">> => list(any()),
%%   <<"UsernameField">> => username_field()
%% }
-type managed_rule_group_config() :: #{binary() => any()}.

%% Example:
%% w_a_f_configuration_warning_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_configuration_warning_exception() :: #{binary() => any()}.

%% Example:
%% list_regex_pattern_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RegexPatternSets">> => list(regex_pattern_set_summary()())
%% }
-type list_regex_pattern_sets_response() :: #{binary() => any()}.

%% Example:
%% list_web_acls_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_web_acls_request() :: #{binary() => any()}.

%% Example:
%% byte_match_statement() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"PositionalConstraint">> => list(any()),
%%   <<"SearchString">> => binary(),
%%   <<"TextTransformations">> => list(text_transformation()())
%% }
-type byte_match_statement() :: #{binary() => any()}.

%% Example:
%% list_web_acls_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"WebACLs">> => list(web_acl_summary()())
%% }
-type list_web_acls_response() :: #{binary() => any()}.

%% Example:
%% rate_limit_j_a4_fingerprint() :: #{
%%   <<"FallbackBehavior">> => list(any())
%% }
-type rate_limit_j_a4_fingerprint() :: #{binary() => any()}.

%% Example:
%% create_ip_set_response() :: #{
%%   <<"Summary">> => ip_set_summary()
%% }
-type create_ip_set_response() :: #{binary() => any()}.

%% Example:
%% header_match_pattern() :: #{
%%   <<"All">> => all(),
%%   <<"ExcludedHeaders">> => list(string()()),
%%   <<"IncludedHeaders">> => list(string()())
%% }
-type header_match_pattern() :: #{binary() => any()}.

%% Example:
%% update_regex_pattern_set_response() :: #{
%%   <<"NextLockToken">> => string()
%% }
-type update_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% aws_managed_rules_a_t_p_rule_set() :: #{
%%   <<"EnableRegexInPath">> => boolean(),
%%   <<"LoginPath">> => string(),
%%   <<"RequestInspection">> => request_inspection(),
%%   <<"ResponseInspection">> => response_inspection()
%% }
-type aws_managed_rules_a_t_p_rule_set() :: #{binary() => any()}.

%% Example:
%% captcha_response() :: #{
%%   <<"FailureReason">> => list(any()),
%%   <<"ResponseCode">> => integer(),
%%   <<"SolveTimestamp">> => float()
%% }
-type captcha_response() :: #{binary() => any()}.

%% Example:
%% get_web_acl_request() :: #{
%%   <<"ARN">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Scope">> => list(any())
%% }
-type get_web_acl_request() :: #{binary() => any()}.

%% Example:
%% override_action() :: #{
%%   <<"Count">> => count_action(),
%%   <<"None">> => none_action()
%% }
-type override_action() :: #{binary() => any()}.

%% Example:
%% get_decrypted_api_key_request() :: #{
%%   <<"APIKey">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type get_decrypted_api_key_request() :: #{binary() => any()}.

%% Example:
%% delete_firewall_manager_rule_groups_request() :: #{
%%   <<"WebACLArn">> := string(),
%%   <<"WebACLLockToken">> := string()
%% }
-type delete_firewall_manager_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% describe_managed_rule_group_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any()),
%%   <<"VendorName">> := string(),
%%   <<"VersionName">> => string()
%% }
-type describe_managed_rule_group_request() :: #{binary() => any()}.

%% Example:
%% delete_web_acl_response() :: #{

%% }
-type delete_web_acl_response() :: #{binary() => any()}.

%% Example:
%% not_statement() :: #{
%%   <<"Statement">> => statement()
%% }
-type not_statement() :: #{binary() => any()}.

%% Example:
%% w_a_f_subscription_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_subscription_not_found_exception() :: #{binary() => any()}.

%% Example:
%% custom_h_t_t_p_header() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type custom_h_t_t_p_header() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_request() :: #{
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type delete_rule_group_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_limits_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"SourceType">> => string()
%% }
-type w_a_f_limits_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% firewall_manager_rule_group() :: #{
%%   <<"FirewallManagerStatement">> => firewall_manager_statement(),
%%   <<"Name">> => string(),
%%   <<"OverrideAction">> => override_action(),
%%   <<"Priority">> => integer(),
%%   <<"VisibilityConfig">> => visibility_config()
%% }
-type firewall_manager_rule_group() :: #{binary() => any()}.

%% Example:
%% delete_web_acl_request() :: #{
%%   <<"Id">> := string(),
%%   <<"LockToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Scope">> := list(any())
%% }
-type delete_web_acl_request() :: #{binary() => any()}.

%% Example:
%% ip_set_forwarded_ip_config() :: #{
%%   <<"FallbackBehavior">> => list(any()),
%%   <<"HeaderName">> => string(),
%%   <<"Position">> => list(any())
%% }
-type ip_set_forwarded_ip_config() :: #{binary() => any()}.

%% Example:
%% regex() :: #{
%%   <<"RegexString">> => string()
%% }
-type regex() :: #{binary() => any()}.

%% Example:
%% w_a_f_tag_operation_internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type w_a_f_tag_operation_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% label_summary() :: #{
%%   <<"Name">> => string()
%% }
-type label_summary() :: #{binary() => any()}.

%% Example:
%% web_acl_summary() :: #{
%%   <<"ARN">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LockToken">> => string(),
%%   <<"Name">> => string()
%% }
-type web_acl_summary() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% mobile_sdk_release() :: #{
%%   <<"ReleaseNotes">> => string(),
%%   <<"ReleaseVersion">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type mobile_sdk_release() :: #{binary() => any()}.

%% Example:
%% label() :: #{
%%   <<"Name">> => string()
%% }
-type label() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_response() :: #{

%% }
-type delete_ip_set_response() :: #{binary() => any()}.

%% Example:
%% immunity_time_property() :: #{
%%   <<"ImmunityTime">> => float()
%% }
-type immunity_time_property() :: #{binary() => any()}.

%% Example:
%% list_available_managed_rule_groups_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"Scope">> := list(any())
%% }
-type list_available_managed_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% create_regex_pattern_set_response() :: #{
%%   <<"Summary">> => regex_pattern_set_summary()
%% }
-type create_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% association_config() :: #{
%%   <<"RequestBody">> => map()
%% }
-type association_config() :: #{binary() => any()}.

-type associate_web_acl_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception().

-type check_capacity_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception() | 
    w_a_f_expired_managed_rule_group_version_exception().

-type create_api_key_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type create_ip_set_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception().

-type create_regex_pattern_set_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception().

-type create_rule_group_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception().

-type create_web_acl_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_configuration_warning_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception() | 
    w_a_f_expired_managed_rule_group_version_exception().

-type delete_api_key_errors() ::
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_firewall_manager_rule_groups_errors() ::
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_ip_set_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_associated_item_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_logging_configuration_errors() ::
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_permission_policy_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_regex_pattern_set_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_associated_item_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_rule_group_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_associated_item_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_web_acl_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_associated_item_exception() | 
    w_a_f_nonexistent_item_exception().

-type describe_all_managed_products_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type describe_managed_products_by_vendor_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type describe_managed_rule_group_errors() ::
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception() | 
    w_a_f_expired_managed_rule_group_version_exception().

-type disassociate_web_acl_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type generate_mobile_sdk_release_url_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_decrypted_api_key_errors() ::
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_ip_set_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_logging_configuration_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_managed_rule_set_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_mobile_sdk_release_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_permission_policy_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rate_based_statement_managed_keys_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unsupported_aggregate_key_type_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_regex_pattern_set_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rule_group_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_sampled_requests_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_web_acl_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_web_acl_for_resource_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_api_keys_errors() ::
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_available_managed_rule_group_versions_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_available_managed_rule_groups_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_ip_sets_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_logging_configurations_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_managed_rule_sets_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_mobile_sdk_releases_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_regex_pattern_sets_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_resources_for_web_acl_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_rule_groups_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type list_tags_for_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_web_acls_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception().

-type put_logging_configuration_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_log_destination_permission_issue_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_service_linked_role_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type put_managed_rule_set_versions_errors() ::
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type put_permission_policy_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_invalid_permission_policy_exception() | 
    w_a_f_nonexistent_item_exception().

-type tag_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type untag_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_ip_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_managed_rule_set_version_expiry_date_errors() ::
    w_a_f_optimistic_lock_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_regex_pattern_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_rule_group_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_configuration_warning_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_web_acl_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_configuration_warning_exception() | 
    w_a_f_optimistic_lock_exception() | 
    w_a_f_duplicate_item_exception() | 
    w_a_f_invalid_resource_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_unavailable_entity_exception() | 
    w_a_f_nonexistent_item_exception() | 
    w_a_f_expired_managed_rule_group_version_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a web ACL with a resource, to protect the resource.
%%
%% Use this for all resource types except for Amazon CloudFront
%% distributions. For Amazon CloudFront, call `UpdateDistribution' for
%% the distribution and provide the Amazon Resource Name (ARN) of the web ACL
%% in the web ACL ID. For information, see UpdateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
%% in the Amazon CloudFront Developer Guide.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type.
%% For details, see Permissions for AssociateWebACL:
%% https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-AssociateWebACL
%% in the WAF Developer Guide.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% After you create a web ACL, if you try to associate it with a resource,
%% you might get an exception indicating that the web ACL is unavailable.
%%
%% After you add a rule group to a web ACL, the new rule group rules might be
%% in effect in one area where the web ACL is used and not in another.
%%
%% After you change a rule action setting, you might see the old action in
%% some places and the new action in others.
%%
%% After you add an IP address to an IP set that is in use in a blocking
%% rule, the new address might be blocked in one area while still allowed in
%% another.
-spec associate_web_acl(aws_client:aws_client(), associate_web_acl_request()) ->
    {ok, associate_web_acl_response(), tuple()} |
    {error, any()} |
    {error, associate_web_acl_errors(), tuple()}.
associate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_web_acl(Client, Input, []).

-spec associate_web_acl(aws_client:aws_client(), associate_web_acl_request(), proplists:proplist()) ->
    {ok, associate_web_acl_response(), tuple()} |
    {error, any()} |
    {error, associate_web_acl_errors(), tuple()}.
associate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateWebACL">>, Input, Options).

%% @doc Returns the web ACL capacity unit (WCU) requirements for a specified
%% scope and set of rules.
%%
%% You can use this to check the capacity requirements for the rules you want
%% to use in a
%% `RuleGroup' or `WebACL'.
%%
%% WAF uses WCUs to calculate and control the operating
%% resources that are used to run your rules, rule groups, and web ACLs. WAF
%% calculates capacity differently for each rule type, to reflect the
%% relative cost of each rule.
%% Simple rules that cost little to run use fewer WCUs than more complex
%% rules
%% that use more processing power.
%% Rule group capacity is fixed at creation, which helps users plan their
%% web ACL WCU usage when they use a rule group. For more information, see
%% WAF web ACL capacity units (WCU):
%% https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html
%% in the WAF Developer Guide.
-spec check_capacity(aws_client:aws_client(), check_capacity_request()) ->
    {ok, check_capacity_response(), tuple()} |
    {error, any()} |
    {error, check_capacity_errors(), tuple()}.
check_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_capacity(Client, Input, []).

-spec check_capacity(aws_client:aws_client(), check_capacity_request(), proplists:proplist()) ->
    {ok, check_capacity_response(), tuple()} |
    {error, any()} |
    {error, check_capacity_errors(), tuple()}.
check_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckCapacity">>, Input, Options).

%% @doc Creates an API key that contains a set of token domains.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications.
%% The API lets you customize the placement and characteristics of the
%% CAPTCHA puzzle for your end users.
%% For more information about the CAPTCHA JavaScript integration, see WAF
%% client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
%%
%% You can use a single key for up to 5 domains. After you generate a key,
%% you can copy it for use in your JavaScript
%% integration.
-spec create_api_key(aws_client:aws_client(), create_api_key_request()) ->
    {ok, create_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_api_key(Client, Input, []).

-spec create_api_key(aws_client:aws_client(), create_api_key_request(), proplists:proplist()) ->
    {ok, create_api_key_response(), tuple()} |
    {error, any()} |
    {error, create_api_key_errors(), tuple()}.
create_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAPIKey">>, Input, Options).

%% @doc Creates an `IPSet', which you use to identify web requests that
%% originate from specific IP addresses or ranges of IP addresses.
%%
%% For example, if you're
%% receiving a lot of requests from a ranges of IP addresses, you can
%% configure WAF to
%% block them using an IPSet that lists those IP addresses.
-spec create_ip_set(aws_client:aws_client(), create_ip_set_request()) ->
    {ok, create_ip_set_response(), tuple()} |
    {error, any()} |
    {error, create_ip_set_errors(), tuple()}.
create_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ip_set(Client, Input, []).

-spec create_ip_set(aws_client:aws_client(), create_ip_set_request(), proplists:proplist()) ->
    {ok, create_ip_set_response(), tuple()} |
    {error, any()} |
    {error, create_ip_set_errors(), tuple()}.
create_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIPSet">>, Input, Options).

%% @doc Creates a `RegexPatternSet', which you reference in a
%% `RegexPatternSetReferenceStatement', to have WAF inspect a web request
%% component for the specified patterns.
-spec create_regex_pattern_set(aws_client:aws_client(), create_regex_pattern_set_request()) ->
    {ok, create_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, create_regex_pattern_set_errors(), tuple()}.
create_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_pattern_set(Client, Input, []).

-spec create_regex_pattern_set(aws_client:aws_client(), create_regex_pattern_set_request(), proplists:proplist()) ->
    {ok, create_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, create_regex_pattern_set_errors(), tuple()}.
create_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexPatternSet">>, Input, Options).

%% @doc Creates a `RuleGroup' per the specifications provided.
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group,
%% you define an immutable capacity limit. If you update a rule group, you
%% must stay within the capacity. This allows others to reuse the rule group
%% with confidence in its capacity requirements.
-spec create_rule_group(aws_client:aws_client(), create_rule_group_request()) ->
    {ok, create_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_rule_group_errors(), tuple()}.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).

-spec create_rule_group(aws_client:aws_client(), create_rule_group_request(), proplists:proplist()) ->
    {ok, create_rule_group_response(), tuple()} |
    {error, any()} |
    {error, create_rule_group_errors(), tuple()}.
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc Creates a `WebACL' per the specifications provided.
%%
%% A web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has a statement that defines what to look for in web
%% requests and an action that WAF applies to requests that match the
%% statement. In the web ACL, you assign a default action to take (allow,
%% block) for any request that does not match any of the rules. The rules in
%% a web ACL can be a combination of the types `Rule', `RuleGroup',
%% and managed rule group. You can associate a web ACL with one or more
%% Amazon Web Services resources to protect. The resource types include
%% Amazon CloudFront distribution, Amazon API Gateway REST API, Application
%% Load Balancer, AppSync GraphQL API, Amazon Cognito user pool, App Runner
%% service, Amplify application, and Amazon Web Services Verified Access
%% instance.
-spec create_web_acl(aws_client:aws_client(), create_web_acl_request()) ->
    {ok, create_web_acl_response(), tuple()} |
    {error, any()} |
    {error, create_web_acl_errors(), tuple()}.
create_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_acl(Client, Input, []).

-spec create_web_acl(aws_client:aws_client(), create_web_acl_request(), proplists:proplist()) ->
    {ok, create_web_acl_response(), tuple()} |
    {error, any()} |
    {error, create_web_acl_errors(), tuple()}.
create_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACL">>, Input, Options).

%% @doc Deletes the specified API key.
%%
%% After you delete a key, it can take up to 24 hours for WAF to disallow use
%% of the key in all regions.
-spec delete_api_key(aws_client:aws_client(), delete_api_key_request()) ->
    {ok, delete_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_api_key(Client, Input, []).

-spec delete_api_key(aws_client:aws_client(), delete_api_key_request(), proplists:proplist()) ->
    {ok, delete_api_key_response(), tuple()} |
    {error, any()} |
    {error, delete_api_key_errors(), tuple()}.
delete_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAPIKey">>, Input, Options).

%% @doc Deletes all rule groups that are managed by Firewall Manager from the
%% specified `WebACL'.
%%
%% You can only use this if `ManagedByFirewallManager' and
%% `RetrofittedByFirewallManager' are both false in the web ACL.
-spec delete_firewall_manager_rule_groups(aws_client:aws_client(), delete_firewall_manager_rule_groups_request()) ->
    {ok, delete_firewall_manager_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_manager_rule_groups_errors(), tuple()}.
delete_firewall_manager_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_firewall_manager_rule_groups(Client, Input, []).

-spec delete_firewall_manager_rule_groups(aws_client:aws_client(), delete_firewall_manager_rule_groups_request(), proplists:proplist()) ->
    {ok, delete_firewall_manager_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, delete_firewall_manager_rule_groups_errors(), tuple()}.
delete_firewall_manager_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFirewallManagerRuleGroups">>, Input, Options).

%% @doc Deletes the specified `IPSet'.
-spec delete_ip_set(aws_client:aws_client(), delete_ip_set_request()) ->
    {ok, delete_ip_set_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_set_errors(), tuple()}.
delete_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ip_set(Client, Input, []).

-spec delete_ip_set(aws_client:aws_client(), delete_ip_set_request(), proplists:proplist()) ->
    {ok, delete_ip_set_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_set_errors(), tuple()}.
delete_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIPSet">>, Input, Options).

%% @doc Deletes the `LoggingConfiguration' from the specified web ACL.
-spec delete_logging_configuration(aws_client:aws_client(), delete_logging_configuration_request()) ->
    {ok, delete_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_logging_configuration(Client, Input, []).

-spec delete_logging_configuration(aws_client:aws_client(), delete_logging_configuration_request(), proplists:proplist()) ->
    {ok, delete_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_logging_configuration_errors(), tuple()}.
delete_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoggingConfiguration">>, Input, Options).

%% @doc Permanently deletes an IAM policy from the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
-spec delete_permission_policy(aws_client:aws_client(), delete_permission_policy_request()) ->
    {ok, delete_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_policy_errors(), tuple()}.
delete_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_policy(Client, Input, []).

-spec delete_permission_policy(aws_client:aws_client(), delete_permission_policy_request(), proplists:proplist()) ->
    {ok, delete_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_permission_policy_errors(), tuple()}.
delete_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionPolicy">>, Input, Options).

%% @doc Deletes the specified `RegexPatternSet'.
-spec delete_regex_pattern_set(aws_client:aws_client(), delete_regex_pattern_set_request()) ->
    {ok, delete_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, delete_regex_pattern_set_errors(), tuple()}.
delete_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_pattern_set(Client, Input, []).

-spec delete_regex_pattern_set(aws_client:aws_client(), delete_regex_pattern_set_request(), proplists:proplist()) ->
    {ok, delete_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, delete_regex_pattern_set_errors(), tuple()}.
delete_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexPatternSet">>, Input, Options).

%% @doc Deletes the specified `RuleGroup'.
-spec delete_rule_group(aws_client:aws_client(), delete_rule_group_request()) ->
    {ok, delete_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_group_errors(), tuple()}.
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).

-spec delete_rule_group(aws_client:aws_client(), delete_rule_group_request(), proplists:proplist()) ->
    {ok, delete_rule_group_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_group_errors(), tuple()}.
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc Deletes the specified `WebACL'.
%%
%% You can only use this if `ManagedByFirewallManager' is false in the
%% web ACL.
%%
%% Before deleting any web ACL, first disassociate it from all resources.
%%
%% To retrieve a list of the resources that are associated with a web ACL,
%% use the
%% following calls:
%%
%% For Amazon CloudFront distributions, use the CloudFront call
%% `ListDistributionsByWebACLId'. For information, see
%% ListDistributionsByWebACLId:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html
%% in the Amazon CloudFront API Reference.
%%
%% For all other resources, call `ListResourcesForWebACL'.
%%
%% To disassociate a resource from a web ACL, use the following calls:
%%
%% For Amazon CloudFront distributions, provide an empty web ACL ID in the
%% CloudFront call
%% `UpdateDistribution'. For information, see UpdateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
%% in the Amazon CloudFront API Reference.
%%
%% For all other resources, call `DisassociateWebACL'.
-spec delete_web_acl(aws_client:aws_client(), delete_web_acl_request()) ->
    {ok, delete_web_acl_response(), tuple()} |
    {error, any()} |
    {error, delete_web_acl_errors(), tuple()}.
delete_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_acl(Client, Input, []).

-spec delete_web_acl(aws_client:aws_client(), delete_web_acl_request(), proplists:proplist()) ->
    {ok, delete_web_acl_response(), tuple()} |
    {error, any()} |
    {error, delete_web_acl_errors(), tuple()}.
delete_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebACL">>, Input, Options).

%% @doc Provides high-level information for the Amazon Web Services Managed
%% Rules rule groups and Amazon Web Services Marketplace managed rule groups.
-spec describe_all_managed_products(aws_client:aws_client(), describe_all_managed_products_request()) ->
    {ok, describe_all_managed_products_response(), tuple()} |
    {error, any()} |
    {error, describe_all_managed_products_errors(), tuple()}.
describe_all_managed_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_all_managed_products(Client, Input, []).

-spec describe_all_managed_products(aws_client:aws_client(), describe_all_managed_products_request(), proplists:proplist()) ->
    {ok, describe_all_managed_products_response(), tuple()} |
    {error, any()} |
    {error, describe_all_managed_products_errors(), tuple()}.
describe_all_managed_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAllManagedProducts">>, Input, Options).

%% @doc Provides high-level information for the managed rule groups owned by
%% a specific vendor.
-spec describe_managed_products_by_vendor(aws_client:aws_client(), describe_managed_products_by_vendor_request()) ->
    {ok, describe_managed_products_by_vendor_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_products_by_vendor_errors(), tuple()}.
describe_managed_products_by_vendor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_products_by_vendor(Client, Input, []).

-spec describe_managed_products_by_vendor(aws_client:aws_client(), describe_managed_products_by_vendor_request(), proplists:proplist()) ->
    {ok, describe_managed_products_by_vendor_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_products_by_vendor_errors(), tuple()}.
describe_managed_products_by_vendor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedProductsByVendor">>, Input, Options).

%% @doc Provides high-level information for a managed rule group, including
%% descriptions of the rules.
-spec describe_managed_rule_group(aws_client:aws_client(), describe_managed_rule_group_request()) ->
    {ok, describe_managed_rule_group_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_rule_group_errors(), tuple()}.
describe_managed_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_rule_group(Client, Input, []).

-spec describe_managed_rule_group(aws_client:aws_client(), describe_managed_rule_group_request(), proplists:proplist()) ->
    {ok, describe_managed_rule_group_response(), tuple()} |
    {error, any()} |
    {error, describe_managed_rule_group_errors(), tuple()}.
describe_managed_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedRuleGroup">>, Input, Options).

%% @doc Disassociates the specified resource from its web ACL
%% association, if it has one.
%%
%% Use this for all resource types except for Amazon CloudFront
%% distributions. For Amazon CloudFront, call `UpdateDistribution' for
%% the distribution and provide an empty web ACL ID. For information, see
%% UpdateDistribution:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
%% in the Amazon CloudFront API Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type.
%% For details, see Permissions for DisassociateWebACL:
%% https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-DisassociateWebACL
%% in the WAF Developer Guide.
-spec disassociate_web_acl(aws_client:aws_client(), disassociate_web_acl_request()) ->
    {ok, disassociate_web_acl_response(), tuple()} |
    {error, any()} |
    {error, disassociate_web_acl_errors(), tuple()}.
disassociate_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_web_acl(Client, Input, []).

-spec disassociate_web_acl(aws_client:aws_client(), disassociate_web_acl_request(), proplists:proplist()) ->
    {ok, disassociate_web_acl_response(), tuple()} |
    {error, any()} |
    {error, disassociate_web_acl_errors(), tuple()}.
disassociate_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateWebACL">>, Input, Options).

%% @doc Generates a presigned download URL for the specified release of the
%% mobile SDK.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
-spec generate_mobile_sdk_release_url(aws_client:aws_client(), generate_mobile_sdk_release_url_request()) ->
    {ok, generate_mobile_sdk_release_url_response(), tuple()} |
    {error, any()} |
    {error, generate_mobile_sdk_release_url_errors(), tuple()}.
generate_mobile_sdk_release_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_mobile_sdk_release_url(Client, Input, []).

-spec generate_mobile_sdk_release_url(aws_client:aws_client(), generate_mobile_sdk_release_url_request(), proplists:proplist()) ->
    {ok, generate_mobile_sdk_release_url_response(), tuple()} |
    {error, any()} |
    {error, generate_mobile_sdk_release_url_errors(), tuple()}.
generate_mobile_sdk_release_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateMobileSdkReleaseUrl">>, Input, Options).

%% @doc Returns your API key in decrypted form.
%%
%% Use this to check the token domains that you have defined for the key.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications.
%% The API lets you customize the placement and characteristics of the
%% CAPTCHA puzzle for your end users.
%% For more information about the CAPTCHA JavaScript integration, see WAF
%% client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
-spec get_decrypted_api_key(aws_client:aws_client(), get_decrypted_api_key_request()) ->
    {ok, get_decrypted_api_key_response(), tuple()} |
    {error, any()} |
    {error, get_decrypted_api_key_errors(), tuple()}.
get_decrypted_api_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_decrypted_api_key(Client, Input, []).

-spec get_decrypted_api_key(aws_client:aws_client(), get_decrypted_api_key_request(), proplists:proplist()) ->
    {ok, get_decrypted_api_key_response(), tuple()} |
    {error, any()} |
    {error, get_decrypted_api_key_errors(), tuple()}.
get_decrypted_api_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDecryptedAPIKey">>, Input, Options).

%% @doc Retrieves the specified `IPSet'.
-spec get_ip_set(aws_client:aws_client(), get_ip_set_request()) ->
    {ok, get_ip_set_response(), tuple()} |
    {error, any()} |
    {error, get_ip_set_errors(), tuple()}.
get_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ip_set(Client, Input, []).

-spec get_ip_set(aws_client:aws_client(), get_ip_set_request(), proplists:proplist()) ->
    {ok, get_ip_set_response(), tuple()} |
    {error, any()} |
    {error, get_ip_set_errors(), tuple()}.
get_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIPSet">>, Input, Options).

%% @doc Returns the `LoggingConfiguration' for the specified web ACL.
-spec get_logging_configuration(aws_client:aws_client(), get_logging_configuration_request()) ->
    {ok, get_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_logging_configuration_errors(), tuple()}.
get_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_configuration(Client, Input, []).

-spec get_logging_configuration(aws_client:aws_client(), get_logging_configuration_request(), proplists:proplist()) ->
    {ok, get_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_logging_configuration_errors(), tuple()}.
get_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingConfiguration">>, Input, Options).

%% @doc Retrieves the specified managed rule set.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
-spec get_managed_rule_set(aws_client:aws_client(), get_managed_rule_set_request()) ->
    {ok, get_managed_rule_set_response(), tuple()} |
    {error, any()} |
    {error, get_managed_rule_set_errors(), tuple()}.
get_managed_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_rule_set(Client, Input, []).

-spec get_managed_rule_set(aws_client:aws_client(), get_managed_rule_set_request(), proplists:proplist()) ->
    {ok, get_managed_rule_set_response(), tuple()} |
    {error, any()} |
    {error, get_managed_rule_set_errors(), tuple()}.
get_managed_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedRuleSet">>, Input, Options).

%% @doc Retrieves information for the specified mobile SDK release, including
%% release notes and
%% tags.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
-spec get_mobile_sdk_release(aws_client:aws_client(), get_mobile_sdk_release_request()) ->
    {ok, get_mobile_sdk_release_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_sdk_release_errors(), tuple()}.
get_mobile_sdk_release(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_mobile_sdk_release(Client, Input, []).

-spec get_mobile_sdk_release(aws_client:aws_client(), get_mobile_sdk_release_request(), proplists:proplist()) ->
    {ok, get_mobile_sdk_release_response(), tuple()} |
    {error, any()} |
    {error, get_mobile_sdk_release_errors(), tuple()}.
get_mobile_sdk_release(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMobileSdkRelease">>, Input, Options).

%% @doc Returns the IAM policy that is attached to the specified rule group.
%%
%% You must be the owner of the rule group to perform this operation.
-spec get_permission_policy(aws_client:aws_client(), get_permission_policy_request()) ->
    {ok, get_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, get_permission_policy_errors(), tuple()}.
get_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permission_policy(Client, Input, []).

-spec get_permission_policy(aws_client:aws_client(), get_permission_policy_request(), proplists:proplist()) ->
    {ok, get_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, get_permission_policy_errors(), tuple()}.
get_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionPolicy">>, Input, Options).

%% @doc Retrieves the IP addresses that are currently blocked by a rate-based
%% rule instance.
%%
%% This
%% is only available for rate-based rules that aggregate solely on the IP
%% address or on the forwarded IP
%% address.
%%
%% The maximum
%% number of addresses that can be blocked for a single rate-based rule
%% instance is 10,000.
%% If more than 10,000 addresses exceed the rate limit, those with the
%% highest rates are
%% blocked.
%%
%% For a rate-based rule that you've defined inside a rule group, provide
%% the name of the
%% rule group reference statement in your request, in addition to the
%% rate-based rule name and
%% the web ACL name.
%%
%% WAF monitors web requests and manages keys independently for each unique
%% combination
%% of web ACL, optional rule group, and rate-based rule. For example, if you
%% define a
%% rate-based rule inside a rule group, and then use the rule group in a web
%% ACL, WAF
%% monitors web requests and manages keys for that web ACL, rule group
%% reference statement,
%% and rate-based rule instance. If you use the same rule group in a second
%% web ACL, WAF
%% monitors web requests and manages keys for this second usage completely
%% independent of your
%% first.
-spec get_rate_based_statement_managed_keys(aws_client:aws_client(), get_rate_based_statement_managed_keys_request()) ->
    {ok, get_rate_based_statement_managed_keys_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_statement_managed_keys_errors(), tuple()}.
get_rate_based_statement_managed_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_statement_managed_keys(Client, Input, []).

-spec get_rate_based_statement_managed_keys(aws_client:aws_client(), get_rate_based_statement_managed_keys_request(), proplists:proplist()) ->
    {ok, get_rate_based_statement_managed_keys_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_statement_managed_keys_errors(), tuple()}.
get_rate_based_statement_managed_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedStatementManagedKeys">>, Input, Options).

%% @doc Retrieves the specified `RegexPatternSet'.
-spec get_regex_pattern_set(aws_client:aws_client(), get_regex_pattern_set_request()) ->
    {ok, get_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, get_regex_pattern_set_errors(), tuple()}.
get_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_pattern_set(Client, Input, []).

-spec get_regex_pattern_set(aws_client:aws_client(), get_regex_pattern_set_request(), proplists:proplist()) ->
    {ok, get_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, get_regex_pattern_set_errors(), tuple()}.
get_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexPatternSet">>, Input, Options).

%% @doc Retrieves the specified `RuleGroup'.
-spec get_rule_group(aws_client:aws_client(), get_rule_group_request()) ->
    {ok, get_rule_group_response(), tuple()} |
    {error, any()} |
    {error, get_rule_group_errors(), tuple()}.
get_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule_group(Client, Input, []).

-spec get_rule_group(aws_client:aws_client(), get_rule_group_request(), proplists:proplist()) ->
    {ok, get_rule_group_response(), tuple()} |
    {error, any()} |
    {error, get_rule_group_errors(), tuple()}.
get_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRuleGroup">>, Input, Options).

%% @doc Gets detailed information about a specified number of requests--a
%% sample--that WAF
%% randomly selects from among the first 5,000 requests that your Amazon Web
%% Services resource received
%% during a time range that you choose.
%%
%% You can specify a sample size of up to 500 requests,
%% and you can specify any time range in the previous three hours.
%%
%% `GetSampledRequests' returns a time range, which is usually the time
%% range that
%% you specified. However, if your resource (such as a CloudFront
%% distribution) received 5,000
%% requests before the specified time range elapsed, `GetSampledRequests'
%% returns
%% an updated time range. This new time range indicates the actual period
%% during which WAF
%% selected the requests in the sample.
-spec get_sampled_requests(aws_client:aws_client(), get_sampled_requests_request()) ->
    {ok, get_sampled_requests_response(), tuple()} |
    {error, any()} |
    {error, get_sampled_requests_errors(), tuple()}.
get_sampled_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sampled_requests(Client, Input, []).

-spec get_sampled_requests(aws_client:aws_client(), get_sampled_requests_request(), proplists:proplist()) ->
    {ok, get_sampled_requests_response(), tuple()} |
    {error, any()} |
    {error, get_sampled_requests_errors(), tuple()}.
get_sampled_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSampledRequests">>, Input, Options).

%% @doc Retrieves the specified `WebACL'.
-spec get_web_acl(aws_client:aws_client(), get_web_acl_request()) ->
    {ok, get_web_acl_response(), tuple()} |
    {error, any()} |
    {error, get_web_acl_errors(), tuple()}.
get_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl(Client, Input, []).

-spec get_web_acl(aws_client:aws_client(), get_web_acl_request(), proplists:proplist()) ->
    {ok, get_web_acl_response(), tuple()} |
    {error, any()} |
    {error, get_web_acl_errors(), tuple()}.
get_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACL">>, Input, Options).

%% @doc Retrieves the `WebACL' for the specified resource.
%%
%% This call uses `GetWebACL', to verify that your account has permission
%% to access the retrieved web ACL.
%% If you get an error that indicates that your account isn't authorized
%% to perform `wafv2:GetWebACL' on the resource,
%% that error won't be included in your CloudTrail event history.
%%
%% For Amazon CloudFront, don't use this call. Instead, call the
%% CloudFront action
%% `GetDistributionConfig'. For information, see GetDistributionConfig:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html
%% in the Amazon CloudFront API Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type.
%% For details, see Permissions for GetWebACLForResource:
%% https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-GetWebACLForResource
%% in the WAF Developer Guide.
-spec get_web_acl_for_resource(aws_client:aws_client(), get_web_acl_for_resource_request()) ->
    {ok, get_web_acl_for_resource_response(), tuple()} |
    {error, any()} |
    {error, get_web_acl_for_resource_errors(), tuple()}.
get_web_acl_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_acl_for_resource(Client, Input, []).

-spec get_web_acl_for_resource(aws_client:aws_client(), get_web_acl_for_resource_request(), proplists:proplist()) ->
    {ok, get_web_acl_for_resource_response(), tuple()} |
    {error, any()} |
    {error, get_web_acl_for_resource_errors(), tuple()}.
get_web_acl_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACLForResource">>, Input, Options).

%% @doc Retrieves a list of the API keys that you've defined for the
%% specified scope.
%%
%% API keys are required for the integration of the CAPTCHA API in your
%% JavaScript client applications.
%% The API lets you customize the placement and characteristics of the
%% CAPTCHA puzzle for your end users.
%% For more information about the CAPTCHA JavaScript integration, see WAF
%% client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
-spec list_api_keys(aws_client:aws_client(), list_api_keys_request()) ->
    {ok, list_api_keys_response(), tuple()} |
    {error, any()} |
    {error, list_api_keys_errors(), tuple()}.
list_api_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_api_keys(Client, Input, []).

-spec list_api_keys(aws_client:aws_client(), list_api_keys_request(), proplists:proplist()) ->
    {ok, list_api_keys_response(), tuple()} |
    {error, any()} |
    {error, list_api_keys_errors(), tuple()}.
list_api_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAPIKeys">>, Input, Options).

%% @doc Returns a list of the available versions for the specified managed
%% rule group.
-spec list_available_managed_rule_group_versions(aws_client:aws_client(), list_available_managed_rule_group_versions_request()) ->
    {ok, list_available_managed_rule_group_versions_response(), tuple()} |
    {error, any()} |
    {error, list_available_managed_rule_group_versions_errors(), tuple()}.
list_available_managed_rule_group_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_managed_rule_group_versions(Client, Input, []).

-spec list_available_managed_rule_group_versions(aws_client:aws_client(), list_available_managed_rule_group_versions_request(), proplists:proplist()) ->
    {ok, list_available_managed_rule_group_versions_response(), tuple()} |
    {error, any()} |
    {error, list_available_managed_rule_group_versions_errors(), tuple()}.
list_available_managed_rule_group_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagedRuleGroupVersions">>, Input, Options).

%% @doc Retrieves an array of managed rule groups that are available for you
%% to use.
%%
%% This list
%% includes all Amazon Web Services Managed Rules rule groups and all of the
%% Amazon Web Services Marketplace managed rule groups that you're
%% subscribed to.
-spec list_available_managed_rule_groups(aws_client:aws_client(), list_available_managed_rule_groups_request()) ->
    {ok, list_available_managed_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_available_managed_rule_groups_errors(), tuple()}.
list_available_managed_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_managed_rule_groups(Client, Input, []).

-spec list_available_managed_rule_groups(aws_client:aws_client(), list_available_managed_rule_groups_request(), proplists:proplist()) ->
    {ok, list_available_managed_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_available_managed_rule_groups_errors(), tuple()}.
list_available_managed_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableManagedRuleGroups">>, Input, Options).

%% @doc Retrieves an array of `IPSetSummary' objects for the IP sets that
%% you
%% manage.
-spec list_ip_sets(aws_client:aws_client(), list_ip_sets_request()) ->
    {ok, list_ip_sets_response(), tuple()} |
    {error, any()} |
    {error, list_ip_sets_errors(), tuple()}.
list_ip_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ip_sets(Client, Input, []).

-spec list_ip_sets(aws_client:aws_client(), list_ip_sets_request(), proplists:proplist()) ->
    {ok, list_ip_sets_response(), tuple()} |
    {error, any()} |
    {error, list_ip_sets_errors(), tuple()}.
list_ip_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIPSets">>, Input, Options).

%% @doc Retrieves an array of your `LoggingConfiguration' objects.
-spec list_logging_configurations(aws_client:aws_client(), list_logging_configurations_request()) ->
    {ok, list_logging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_logging_configurations_errors(), tuple()}.
list_logging_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_logging_configurations(Client, Input, []).

-spec list_logging_configurations(aws_client:aws_client(), list_logging_configurations_request(), proplists:proplist()) ->
    {ok, list_logging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_logging_configurations_errors(), tuple()}.
list_logging_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLoggingConfigurations">>, Input, Options).

%% @doc Retrieves the managed rule sets that you own.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
-spec list_managed_rule_sets(aws_client:aws_client(), list_managed_rule_sets_request()) ->
    {ok, list_managed_rule_sets_response(), tuple()} |
    {error, any()} |
    {error, list_managed_rule_sets_errors(), tuple()}.
list_managed_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_managed_rule_sets(Client, Input, []).

-spec list_managed_rule_sets(aws_client:aws_client(), list_managed_rule_sets_request(), proplists:proplist()) ->
    {ok, list_managed_rule_sets_response(), tuple()} |
    {error, any()} |
    {error, list_managed_rule_sets_errors(), tuple()}.
list_managed_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListManagedRuleSets">>, Input, Options).

%% @doc Retrieves a list of the available releases for the mobile SDK and the
%% specified device
%% platform.
%%
%% The mobile SDK is not generally available. Customers who have access to
%% the mobile SDK can use it to establish and manage WAF tokens for use in
%% HTTP(S) requests from a mobile device to WAF. For more information, see
%% WAF client application integration:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
%% in the WAF Developer Guide.
-spec list_mobile_sdk_releases(aws_client:aws_client(), list_mobile_sdk_releases_request()) ->
    {ok, list_mobile_sdk_releases_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_sdk_releases_errors(), tuple()}.
list_mobile_sdk_releases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mobile_sdk_releases(Client, Input, []).

-spec list_mobile_sdk_releases(aws_client:aws_client(), list_mobile_sdk_releases_request(), proplists:proplist()) ->
    {ok, list_mobile_sdk_releases_response(), tuple()} |
    {error, any()} |
    {error, list_mobile_sdk_releases_errors(), tuple()}.
list_mobile_sdk_releases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMobileSdkReleases">>, Input, Options).

%% @doc Retrieves an array of `RegexPatternSetSummary' objects for the
%% regex
%% pattern sets that you manage.
-spec list_regex_pattern_sets(aws_client:aws_client(), list_regex_pattern_sets_request()) ->
    {ok, list_regex_pattern_sets_response(), tuple()} |
    {error, any()} |
    {error, list_regex_pattern_sets_errors(), tuple()}.
list_regex_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_pattern_sets(Client, Input, []).

-spec list_regex_pattern_sets(aws_client:aws_client(), list_regex_pattern_sets_request(), proplists:proplist()) ->
    {ok, list_regex_pattern_sets_response(), tuple()} |
    {error, any()} |
    {error, list_regex_pattern_sets_errors(), tuple()}.
list_regex_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexPatternSets">>, Input, Options).

%% @doc Retrieves an array of the Amazon Resource Names (ARNs) for the
%% resources that
%% are associated with the specified web ACL.
%%
%% For Amazon CloudFront, don't use this call. Instead, use the
%% CloudFront call
%% `ListDistributionsByWebACLId'. For information, see
%% ListDistributionsByWebACLId:
%% https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html
%% in the Amazon CloudFront API Reference.
%%
%% Required permissions for customer-managed IAM policies
%%
%% This call requires permissions that are specific to the protected resource
%% type.
%% For details, see Permissions for ListResourcesForWebACL:
%% https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-ListResourcesForWebACL
%% in the WAF Developer Guide.
-spec list_resources_for_web_acl(aws_client:aws_client(), list_resources_for_web_acl_request()) ->
    {ok, list_resources_for_web_acl_response(), tuple()} |
    {error, any()} |
    {error, list_resources_for_web_acl_errors(), tuple()}.
list_resources_for_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_for_web_acl(Client, Input, []).

-spec list_resources_for_web_acl(aws_client:aws_client(), list_resources_for_web_acl_request(), proplists:proplist()) ->
    {ok, list_resources_for_web_acl_response(), tuple()} |
    {error, any()} |
    {error, list_resources_for_web_acl_errors(), tuple()}.
list_resources_for_web_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesForWebACL">>, Input, Options).

%% @doc Retrieves an array of `RuleGroupSummary' objects for the rule
%% groups
%% that you manage.
-spec list_rule_groups(aws_client:aws_client(), list_rule_groups_request()) ->
    {ok, list_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_errors(), tuple()}.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).

-spec list_rule_groups(aws_client:aws_client(), list_rule_groups_request(), proplists:proplist()) ->
    {ok, list_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_rule_groups_errors(), tuple()}.
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc Retrieves the `TagInfoForResource' for the specified resource.
%%
%% Tags are
%% key:value pairs that you can use to categorize and manage your resources,
%% for purposes like
%% billing. For example, you might set the tag key to &quot;customer&quot;
%% and the value to the customer
%% name or ID. You can specify one or more tags to add to each Amazon Web
%% Services resource, up to 50 tags
%% for a resource.
%%
%% You can tag the Amazon Web Services resources that you manage through WAF:
%% web ACLs, rule
%% groups, IP sets, and regex pattern sets. You can't manage or view tags
%% through the WAF
%% console.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Retrieves an array of `WebACLSummary' objects for the web ACLs
%% that you
%% manage.
-spec list_web_acls(aws_client:aws_client(), list_web_acls_request()) ->
    {ok, list_web_acls_response(), tuple()} |
    {error, any()} |
    {error, list_web_acls_errors(), tuple()}.
list_web_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_acls(Client, Input, []).

-spec list_web_acls(aws_client:aws_client(), list_web_acls_request(), proplists:proplist()) ->
    {ok, list_web_acls_response(), tuple()} |
    {error, any()} |
    {error, list_web_acls_errors(), tuple()}.
list_web_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebACLs">>, Input, Options).

%% @doc Enables the specified `LoggingConfiguration', to start logging
%% from a
%% web ACL, according to the configuration provided.
%%
%% If you configure data protection for the web ACL, the protection applies
%% to the data that WAF sends to the logs.
%%
%% This operation completely replaces any mutable specifications that you
%% already have for a logging configuration with the ones that you provide to
%% this call.
%%
%% To modify an existing logging configuration, do the following:
%%
%% Retrieve it by calling `GetLoggingConfiguration'
%%
%% Update its settings as needed
%%
%% Provide the complete logging configuration specification to this call
%%
%% You can define one logging destination per web ACL.
%%
%% You can access information about the traffic that WAF inspects using the
%% following
%% steps:
%%
%% Create your logging destination. You can use an Amazon CloudWatch Logs log
%% group, an Amazon Simple Storage Service (Amazon S3) bucket, or an Amazon
%% Kinesis Data Firehose.
%%
%% The name that you give the destination must start with
%% `aws-waf-logs-'. Depending on the type of destination, you might need
%% to configure additional settings or permissions.
%%
%% For configuration requirements and pricing information for each
%% destination type, see
%% Logging web ACL traffic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/logging.html
%% in the WAF Developer Guide.
%%
%% Associate your logging destination to your web ACL using a
%% `PutLoggingConfiguration' request.
%%
%% When you successfully enable logging using a `PutLoggingConfiguration'
%% request, WAF creates an additional role or policy that is required to
%% write
%% logs to the logging destination. For an Amazon CloudWatch Logs log group,
%% WAF creates a resource policy on the log group.
%% For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon
%% Kinesis Data Firehose, WAF creates a service-linked role.
%%
%% For additional information about web ACL logging, see
%% Logging web ACL traffic information:
%% https://docs.aws.amazon.com/waf/latest/developerguide/logging.html
%% in the WAF Developer Guide.
-spec put_logging_configuration(aws_client:aws_client(), put_logging_configuration_request()) ->
    {ok, put_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_logging_configuration_errors(), tuple()}.
put_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_configuration(Client, Input, []).

-spec put_logging_configuration(aws_client:aws_client(), put_logging_configuration_request(), proplists:proplist()) ->
    {ok, put_logging_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_logging_configuration_errors(), tuple()}.
put_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingConfiguration">>, Input, Options).

%% @doc Defines the versions of your managed rule set that you are offering
%% to the customers.
%%
%% Customers see your offerings as managed rule groups with versioning.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
%%
%% Customers retrieve their managed rule group list by calling
%% `ListAvailableManagedRuleGroups'. The name that you provide here for
%% your
%% managed rule set is the name the customer sees for the corresponding
%% managed rule group.
%% Customers can retrieve the available versions for a managed rule group by
%% calling `ListAvailableManagedRuleGroupVersions'. You provide a rule
%% group
%% specification for each version. For each managed rule set, you must
%% specify a version that
%% you recommend using.
%%
%% To initiate the expiration of a managed rule group version, use
%% `UpdateManagedRuleSetVersionExpiryDate'.
-spec put_managed_rule_set_versions(aws_client:aws_client(), put_managed_rule_set_versions_request()) ->
    {ok, put_managed_rule_set_versions_response(), tuple()} |
    {error, any()} |
    {error, put_managed_rule_set_versions_errors(), tuple()}.
put_managed_rule_set_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_managed_rule_set_versions(Client, Input, []).

-spec put_managed_rule_set_versions(aws_client:aws_client(), put_managed_rule_set_versions_request(), proplists:proplist()) ->
    {ok, put_managed_rule_set_versions_response(), tuple()} |
    {error, any()} |
    {error, put_managed_rule_set_versions_errors(), tuple()}.
put_managed_rule_set_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutManagedRuleSetVersions">>, Input, Options).

%% @doc Use this to share a rule group with other accounts.
%%
%% This action attaches an IAM policy to the specified resource. You must be
%% the owner of the rule group to perform this operation.
%%
%% This action is subject to the following restrictions:
%%
%% You can attach only one policy with each `PutPermissionPolicy'
%% request.
%%
%% The ARN in the request must be a valid WAF `RuleGroup' ARN and the
%% rule group must exist in the same Region.
%%
%% The user making the request must be the owner of the rule group.
%%
%% If a rule group has been shared with your account, you can access it
%% through the call `GetRuleGroup',
%% and you can reference it in `CreateWebACL' and `UpdateWebACL'.
%% Rule groups that are shared with you don't appear in your WAF console
%% rule groups listing.
-spec put_permission_policy(aws_client:aws_client(), put_permission_policy_request()) ->
    {ok, put_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, put_permission_policy_errors(), tuple()}.
put_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission_policy(Client, Input, []).

-spec put_permission_policy(aws_client:aws_client(), put_permission_policy_request(), proplists:proplist()) ->
    {ok, put_permission_policy_response(), tuple()} |
    {error, any()} |
    {error, put_permission_policy_errors(), tuple()}.
put_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionPolicy">>, Input, Options).

%% @doc Associates tags with the specified Amazon Web Services resource.
%%
%% Tags are key:value pairs that you can
%% use to categorize and manage your resources, for purposes like billing.
%% For example, you
%% might set the tag key to &quot;customer&quot; and the value to the
%% customer name or ID. You can
%% specify one or more tags to add to each Amazon Web Services resource, up
%% to 50 tags for a
%% resource.
%%
%% You can tag the Amazon Web Services resources that you manage through WAF:
%% web ACLs, rule
%% groups, IP sets, and regex pattern sets. You can't manage or view tags
%% through the WAF
%% console.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Disassociates tags from an Amazon Web Services resource.
%%
%% Tags are key:value pairs that you can
%% associate with Amazon Web Services resources. For example, the tag key
%% might be &quot;customer&quot; and the tag
%% value might be &quot;companyA.&quot; You can specify one or more tags to
%% add to each container. You
%% can add up to 50 tags to each Amazon Web Services resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the specified `IPSet'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the IP set with the ones that you provide to this call.
%%
%% To modify an IP set, do the following:
%%
%% Retrieve it by calling `GetIPSet'
%%
%% Update its settings as needed
%%
%% Provide the complete IP set specification to this call
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% After you create a web ACL, if you try to associate it with a resource,
%% you might get an exception indicating that the web ACL is unavailable.
%%
%% After you add a rule group to a web ACL, the new rule group rules might be
%% in effect in one area where the web ACL is used and not in another.
%%
%% After you change a rule action setting, you might see the old action in
%% some places and the new action in others.
%%
%% After you add an IP address to an IP set that is in use in a blocking
%% rule, the new address might be blocked in one area while still allowed in
%% another.
-spec update_ip_set(aws_client:aws_client(), update_ip_set_request()) ->
    {ok, update_ip_set_response(), tuple()} |
    {error, any()} |
    {error, update_ip_set_errors(), tuple()}.
update_ip_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ip_set(Client, Input, []).

-spec update_ip_set(aws_client:aws_client(), update_ip_set_request(), proplists:proplist()) ->
    {ok, update_ip_set_response(), tuple()} |
    {error, any()} |
    {error, update_ip_set_errors(), tuple()}.
update_ip_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIPSet">>, Input, Options).

%% @doc Updates the expiration information for your managed rule set.
%%
%% Use this to initiate the
%% expiration of a managed rule group version. After you initiate expiration
%% for a version,
%% WAF excludes it from the response to
%% `ListAvailableManagedRuleGroupVersions' for the managed rule group.
%%
%% This is intended for use only by vendors of managed rule sets. Vendors are
%% Amazon Web Services and Amazon Web Services Marketplace sellers.
%%
%% Vendors, you can use the managed rule set APIs to provide controlled
%% rollout of your versioned managed rule group offerings for your customers.
%% The APIs are `ListManagedRuleSets', `GetManagedRuleSet',
%% `PutManagedRuleSetVersions', and
%% `UpdateManagedRuleSetVersionExpiryDate'.
-spec update_managed_rule_set_version_expiry_date(aws_client:aws_client(), update_managed_rule_set_version_expiry_date_request()) ->
    {ok, update_managed_rule_set_version_expiry_date_response(), tuple()} |
    {error, any()} |
    {error, update_managed_rule_set_version_expiry_date_errors(), tuple()}.
update_managed_rule_set_version_expiry_date(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_managed_rule_set_version_expiry_date(Client, Input, []).

-spec update_managed_rule_set_version_expiry_date(aws_client:aws_client(), update_managed_rule_set_version_expiry_date_request(), proplists:proplist()) ->
    {ok, update_managed_rule_set_version_expiry_date_response(), tuple()} |
    {error, any()} |
    {error, update_managed_rule_set_version_expiry_date_errors(), tuple()}.
update_managed_rule_set_version_expiry_date(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateManagedRuleSetVersionExpiryDate">>, Input, Options).

%% @doc Updates the specified `RegexPatternSet'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the regex pattern set with the ones that you provide to
%% this call.
%%
%% To modify a regex pattern set, do the following:
%%
%% Retrieve it by calling `GetRegexPatternSet'
%%
%% Update its settings as needed
%%
%% Provide the complete regex pattern set specification to this call
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% After you create a web ACL, if you try to associate it with a resource,
%% you might get an exception indicating that the web ACL is unavailable.
%%
%% After you add a rule group to a web ACL, the new rule group rules might be
%% in effect in one area where the web ACL is used and not in another.
%%
%% After you change a rule action setting, you might see the old action in
%% some places and the new action in others.
%%
%% After you add an IP address to an IP set that is in use in a blocking
%% rule, the new address might be blocked in one area while still allowed in
%% another.
-spec update_regex_pattern_set(aws_client:aws_client(), update_regex_pattern_set_request()) ->
    {ok, update_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, update_regex_pattern_set_errors(), tuple()}.
update_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_pattern_set(Client, Input, []).

-spec update_regex_pattern_set(aws_client:aws_client(), update_regex_pattern_set_request(), proplists:proplist()) ->
    {ok, update_regex_pattern_set_response(), tuple()} |
    {error, any()} |
    {error, update_regex_pattern_set_errors(), tuple()}.
update_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexPatternSet">>, Input, Options).

%% @doc Updates the specified `RuleGroup'.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the rule group with the ones that you provide to this
%% call.
%%
%% To modify a rule group, do the following:
%%
%% Retrieve it by calling `GetRuleGroup'
%%
%% Update its settings as needed
%%
%% Provide the complete rule group specification to this call
%%
%% A rule group defines a collection of rules to inspect and control web
%% requests that you can use in a `WebACL'. When you create a rule group,
%% you define an immutable capacity limit. If you update a rule group, you
%% must stay within the capacity. This allows others to reuse the rule group
%% with confidence in its capacity requirements.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% After you create a web ACL, if you try to associate it with a resource,
%% you might get an exception indicating that the web ACL is unavailable.
%%
%% After you add a rule group to a web ACL, the new rule group rules might be
%% in effect in one area where the web ACL is used and not in another.
%%
%% After you change a rule action setting, you might see the old action in
%% some places and the new action in others.
%%
%% After you add an IP address to an IP set that is in use in a blocking
%% rule, the new address might be blocked in one area while still allowed in
%% another.
-spec update_rule_group(aws_client:aws_client(), update_rule_group_request()) ->
    {ok, update_rule_group_response(), tuple()} |
    {error, any()} |
    {error, update_rule_group_errors(), tuple()}.
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).

-spec update_rule_group(aws_client:aws_client(), update_rule_group_request(), proplists:proplist()) ->
    {ok, update_rule_group_response(), tuple()} |
    {error, any()} |
    {error, update_rule_group_errors(), tuple()}.
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc Updates the specified `WebACL'.
%%
%% While updating a web ACL, WAF provides
%% continuous coverage to the resources that you have associated with the web
%% ACL.
%%
%% This operation completely replaces the mutable specifications that you
%% already have for the web ACL with the ones that you provide to this call.
%%
%% To modify a web ACL, do the following:
%%
%% Retrieve it by calling `GetWebACL'
%%
%% Update its settings as needed
%%
%% Provide the complete web ACL specification to this call
%%
%% A web ACL defines a collection of rules to use to inspect and control web
%% requests. Each rule has a statement that defines what to look for in web
%% requests and an action that WAF applies to requests that match the
%% statement. In the web ACL, you assign a default action to take (allow,
%% block) for any request that does not match any of the rules. The rules in
%% a web ACL can be a combination of the types `Rule', `RuleGroup',
%% and managed rule group. You can associate a web ACL with one or more
%% Amazon Web Services resources to protect. The resource types include
%% Amazon CloudFront distribution, Amazon API Gateway REST API, Application
%% Load Balancer, AppSync GraphQL API, Amazon Cognito user pool, App Runner
%% service, Amplify application, and Amazon Web Services Verified Access
%% instance.
%%
%% Temporary inconsistencies during updates
%%
%% When you create or change a web ACL or other WAF resources, the changes
%% take a small amount of time to propagate to all areas where the resources
%% are stored. The propagation time can be from a few seconds to a number of
%% minutes.
%%
%% The following are examples of the temporary inconsistencies that you might
%% notice during change propagation:
%%
%% After you create a web ACL, if you try to associate it with a resource,
%% you might get an exception indicating that the web ACL is unavailable.
%%
%% After you add a rule group to a web ACL, the new rule group rules might be
%% in effect in one area where the web ACL is used and not in another.
%%
%% After you change a rule action setting, you might see the old action in
%% some places and the new action in others.
%%
%% After you add an IP address to an IP set that is in use in a blocking
%% rule, the new address might be blocked in one area while still allowed in
%% another.
-spec update_web_acl(aws_client:aws_client(), update_web_acl_request()) ->
    {ok, update_web_acl_response(), tuple()} |
    {error, any()} |
    {error, update_web_acl_errors(), tuple()}.
update_web_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_acl(Client, Input, []).

-spec update_web_acl(aws_client:aws_client(), update_web_acl_request(), proplists:proplist()) ->
    {ok, update_web_acl_response(), tuple()} |
    {error, any()} |
    {error, update_web_acl_errors(), tuple()}.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
