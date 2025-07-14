%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% This is the AWS WAF Classic API Reference for using AWS WAF Classic with
%% Amazon CloudFront. The AWS WAF Classic actions and data types listed in
%% the reference are available for protecting Amazon CloudFront
%% distributions. You can use these actions and data types via the endpoint
%% waf.amazonaws.com. This guide is for developers who need detailed
%% information about the AWS WAF Classic API actions,
%% data types, and errors. For detailed information about AWS WAF Classic
%% features and an overview of how to use the AWS WAF Classic API, see the
%% AWS WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
-module(aws_waf).

-export([create_byte_match_set/2,
         create_byte_match_set/3,
         create_geo_match_set/2,
         create_geo_match_set/3,
         create_ip_set/2,
         create_ip_set/3,
         create_rate_based_rule/2,
         create_rate_based_rule/3,
         create_regex_match_set/2,
         create_regex_match_set/3,
         create_regex_pattern_set/2,
         create_regex_pattern_set/3,
         create_rule/2,
         create_rule/3,
         create_rule_group/2,
         create_rule_group/3,
         create_size_constraint_set/2,
         create_size_constraint_set/3,
         create_sql_injection_match_set/2,
         create_sql_injection_match_set/3,
         create_web_acl/2,
         create_web_acl/3,
         create_web_acl_migration_stack/2,
         create_web_acl_migration_stack/3,
         create_xss_match_set/2,
         create_xss_match_set/3,
         delete_byte_match_set/2,
         delete_byte_match_set/3,
         delete_geo_match_set/2,
         delete_geo_match_set/3,
         delete_ip_set/2,
         delete_ip_set/3,
         delete_logging_configuration/2,
         delete_logging_configuration/3,
         delete_permission_policy/2,
         delete_permission_policy/3,
         delete_rate_based_rule/2,
         delete_rate_based_rule/3,
         delete_regex_match_set/2,
         delete_regex_match_set/3,
         delete_regex_pattern_set/2,
         delete_regex_pattern_set/3,
         delete_rule/2,
         delete_rule/3,
         delete_rule_group/2,
         delete_rule_group/3,
         delete_size_constraint_set/2,
         delete_size_constraint_set/3,
         delete_sql_injection_match_set/2,
         delete_sql_injection_match_set/3,
         delete_web_acl/2,
         delete_web_acl/3,
         delete_xss_match_set/2,
         delete_xss_match_set/3,
         get_byte_match_set/2,
         get_byte_match_set/3,
         get_change_token/2,
         get_change_token/3,
         get_change_token_status/2,
         get_change_token_status/3,
         get_geo_match_set/2,
         get_geo_match_set/3,
         get_ip_set/2,
         get_ip_set/3,
         get_logging_configuration/2,
         get_logging_configuration/3,
         get_permission_policy/2,
         get_permission_policy/3,
         get_rate_based_rule/2,
         get_rate_based_rule/3,
         get_rate_based_rule_managed_keys/2,
         get_rate_based_rule_managed_keys/3,
         get_regex_match_set/2,
         get_regex_match_set/3,
         get_regex_pattern_set/2,
         get_regex_pattern_set/3,
         get_rule/2,
         get_rule/3,
         get_rule_group/2,
         get_rule_group/3,
         get_sampled_requests/2,
         get_sampled_requests/3,
         get_size_constraint_set/2,
         get_size_constraint_set/3,
         get_sql_injection_match_set/2,
         get_sql_injection_match_set/3,
         get_web_acl/2,
         get_web_acl/3,
         get_xss_match_set/2,
         get_xss_match_set/3,
         list_activated_rules_in_rule_group/2,
         list_activated_rules_in_rule_group/3,
         list_byte_match_sets/2,
         list_byte_match_sets/3,
         list_geo_match_sets/2,
         list_geo_match_sets/3,
         list_ip_sets/2,
         list_ip_sets/3,
         list_logging_configurations/2,
         list_logging_configurations/3,
         list_rate_based_rules/2,
         list_rate_based_rules/3,
         list_regex_match_sets/2,
         list_regex_match_sets/3,
         list_regex_pattern_sets/2,
         list_regex_pattern_sets/3,
         list_rule_groups/2,
         list_rule_groups/3,
         list_rules/2,
         list_rules/3,
         list_size_constraint_sets/2,
         list_size_constraint_sets/3,
         list_sql_injection_match_sets/2,
         list_sql_injection_match_sets/3,
         list_subscribed_rule_groups/2,
         list_subscribed_rule_groups/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_web_acls/2,
         list_web_acls/3,
         list_xss_match_sets/2,
         list_xss_match_sets/3,
         put_logging_configuration/2,
         put_logging_configuration/3,
         put_permission_policy/2,
         put_permission_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_byte_match_set/2,
         update_byte_match_set/3,
         update_geo_match_set/2,
         update_geo_match_set/3,
         update_ip_set/2,
         update_ip_set/3,
         update_rate_based_rule/2,
         update_rate_based_rule/3,
         update_regex_match_set/2,
         update_regex_match_set/3,
         update_regex_pattern_set/2,
         update_regex_pattern_set/3,
         update_rule/2,
         update_rule/3,
         update_rule_group/2,
         update_rule_group/3,
         update_size_constraint_set/2,
         update_size_constraint_set/3,
         update_sql_injection_match_set/2,
         update_sql_injection_match_set/3,
         update_web_acl/2,
         update_web_acl/3,
         update_xss_match_set/2,
         update_xss_match_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_sampled_requests_request() :: #{
%%   <<"MaxItems">> := float(),
%%   <<"RuleId">> := string(),
%%   <<"TimeWindow">> := time_window(),
%%   <<"WebAclId">> := string()
%% }
-type get_sampled_requests_request() :: #{binary() => any()}.

%% Example:
%% regex_match_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"RegexMatchTuple">> => regex_match_tuple()
%% }
-type regex_match_set_update() :: #{binary() => any()}.

%% Example:
%% get_geo_match_set_request() :: #{
%%   <<"GeoMatchSetId">> := string()
%% }
-type get_geo_match_set_request() :: #{binary() => any()}.

%% Example:
%% xss_match_set() :: #{
%%   <<"Name">> => string(),
%%   <<"XssMatchSetId">> => string(),
%%   <<"XssMatchTuples">> => list(xss_match_tuple())
%% }
-type xss_match_set() :: #{binary() => any()}.

%% Example:
%% create_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"MetricName">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_rule_request() :: #{binary() => any()}.

%% Example:
%% sql_injection_match_set_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"SqlInjectionMatchSetId">> => string()
%% }
-type sql_injection_match_set_summary() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"RegexPatternString">> => string()
%% }
-type regex_pattern_set_update() :: #{binary() => any()}.

%% Example:
%% update_rule_group_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_rule_group_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_nonexistent_item_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_nonexistent_item_exception() :: #{binary() => any()}.

%% Example:
%% sql_injection_match_set() :: #{
%%   <<"Name">> => string(),
%%   <<"SqlInjectionMatchSetId">> => string(),
%%   <<"SqlInjectionMatchTuples">> => list(sql_injection_match_tuple())
%% }
-type sql_injection_match_set() :: #{binary() => any()}.

%% Example:
%% rate_based_rule() :: #{
%%   <<"MatchPredicates">> => list(predicate()),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RateKey">> => list(any()),
%%   <<"RateLimit">> => float(),
%%   <<"RuleId">> => string()
%% }
-type rate_based_rule() :: #{binary() => any()}.

%% Example:
%% update_size_constraint_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"SizeConstraintSetId">> := string(),
%%   <<"Updates">> := list(size_constraint_set_update())
%% }
-type update_size_constraint_set_request() :: #{binary() => any()}.

%% Example:
%% geo_match_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"GeoMatchConstraint">> => geo_match_constraint()
%% }
-type geo_match_set_update() :: #{binary() => any()}.

%% Example:
%% xss_match_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"XssMatchTuple">> => xss_match_tuple()
%% }
-type xss_match_set_update() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_regex_pattern_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_invalid_regex_pattern_exception() :: #{binary() => any()}.

%% Example:
%% get_rule_group_request() :: #{
%%   <<"RuleGroupId">> := string()
%% }
-type get_rule_group_request() :: #{binary() => any()}.

%% Example:
%% create_byte_match_set_response() :: #{
%%   <<"ByteMatchSet">> => byte_match_set(),
%%   <<"ChangeToken">> => string()
%% }
-type create_byte_match_set_response() :: #{binary() => any()}.

%% Example:
%% get_byte_match_set_response() :: #{
%%   <<"ByteMatchSet">> => byte_match_set()
%% }
-type get_byte_match_set_response() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RuleGroups">> => list(rule_group_summary())
%% }
-type list_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% list_ip_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_ip_sets_request() :: #{binary() => any()}.

%% Example:
%% delete_byte_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_byte_match_set_response() :: #{binary() => any()}.

%% Example:
%% waf_action() :: #{
%%   <<"Type">> => list(any())
%% }
-type waf_action() :: #{binary() => any()}.

%% Example:
%% list_regex_match_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RegexMatchSets">> => list(regex_match_set_summary())
%% }
-type list_regex_match_sets_response() :: #{binary() => any()}.

%% Example:
%% delete_xss_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_xss_match_set_response() :: #{binary() => any()}.

%% Example:
%% delete_regex_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RegexMatchSetId">> := string()
%% }
-type delete_regex_match_set_request() :: #{binary() => any()}.

%% Example:
%% get_xss_match_set_response() :: #{
%%   <<"XssMatchSet">> => xss_match_set()
%% }
-type get_xss_match_set_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_stale_data_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_stale_data_exception() :: #{binary() => any()}.

%% Example:
%% delete_xss_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"XssMatchSetId">> := string()
%% }
-type delete_xss_match_set_request() :: #{binary() => any()}.

%% Example:
%% delete_byte_match_set_request() :: #{
%%   <<"ByteMatchSetId">> := string(),
%%   <<"ChangeToken">> := string()
%% }
-type delete_byte_match_set_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_xss_match_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"XssMatchSets">> => list(xss_match_set_summary())
%% }
-type list_xss_match_sets_response() :: #{binary() => any()}.

%% Example:
%% list_rate_based_rules_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_rate_based_rules_request() :: #{binary() => any()}.

%% Example:
%% update_byte_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_byte_match_set_response() :: #{binary() => any()}.

%% Example:
%% create_sql_injection_match_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"SqlInjectionMatchSet">> => sql_injection_match_set()
%% }
-type create_sql_injection_match_set_response() :: #{binary() => any()}.

%% Example:
%% get_rate_based_rule_request() :: #{
%%   <<"RuleId">> := string()
%% }
-type get_rate_based_rule_request() :: #{binary() => any()}.

%% Example:
%% field_to_match() :: #{
%%   <<"Data">> => string(),
%%   <<"Type">> => list(any())
%% }
-type field_to_match() :: #{binary() => any()}.

%% Example:
%% w_a_f_service_linked_role_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_service_linked_role_error_exception() :: #{binary() => any()}.

%% Example:
%% w_a_f_nonexistent_container_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_nonexistent_container_exception() :: #{binary() => any()}.

%% Example:
%% update_byte_match_set_request() :: #{
%%   <<"ByteMatchSetId">> := string(),
%%   <<"ChangeToken">> := string(),
%%   <<"Updates">> := list(byte_match_set_update())
%% }
-type update_byte_match_set_request() :: #{binary() => any()}.

%% Example:
%% create_geo_match_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"GeoMatchSet">> => geo_match_set()
%% }
-type create_geo_match_set_response() :: #{binary() => any()}.

%% Example:
%% update_ip_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_ip_set_response() :: #{binary() => any()}.

%% Example:
%% rule_group() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuleGroupId">> => string()
%% }
-type rule_group() :: #{binary() => any()}.

%% Example:
%% size_constraint() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"Size">> => float(),
%%   <<"TextTransformation">> => list(any())
%% }
-type size_constraint() :: #{binary() => any()}.

%% Example:
%% update_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RuleId">> := string(),
%%   <<"Updates">> := list(rule_update())
%% }
-type update_rule_request() :: #{binary() => any()}.

%% Example:
%% get_sql_injection_match_set_request() :: #{
%%   <<"SqlInjectionMatchSetId">> := string()
%% }
-type get_sql_injection_match_set_request() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"IPSetId">> := string()
%% }
-type delete_ip_set_request() :: #{binary() => any()}.

%% Example:
%% get_size_constraint_set_response() :: #{
%%   <<"SizeConstraintSet">> => size_constraint_set()
%% }
-type get_size_constraint_set_response() :: #{binary() => any()}.

%% Example:
%% get_rule_request() :: #{
%%   <<"RuleId">> := string()
%% }
-type get_rule_request() :: #{binary() => any()}.

%% Example:
%% byte_match_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ByteMatchTuple">> => byte_match_tuple()
%% }
-type byte_match_set_update() :: #{binary() => any()}.

%% Example:
%% get_rule_group_response() :: #{
%%   <<"RuleGroup">> => rule_group()
%% }
-type get_rule_group_response() :: #{binary() => any()}.

%% Example:
%% get_regex_pattern_set_request() :: #{
%%   <<"RegexPatternSetId">> := string()
%% }
-type get_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% get_web_acl_response() :: #{
%%   <<"WebACL">> => web_acl()
%% }
-type get_web_acl_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_info_for_resource() :: #{
%%   <<"ResourceARN">> => string(),
%%   <<"TagList">> => list(tag())
%% }
-type tag_info_for_resource() :: #{binary() => any()}.

%% Example:
%% activated_rule() :: #{
%%   <<"Action">> => waf_action(),
%%   <<"ExcludedRules">> => list(excluded_rule()),
%%   <<"OverrideAction">> => waf_override_action(),
%%   <<"Priority">> => integer(),
%%   <<"RuleId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type activated_rule() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_permission_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_invalid_permission_policy_exception() :: #{binary() => any()}.

%% Example:
%% create_rate_based_rule_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"Rule">> => rate_based_rule()
%% }
-type create_rate_based_rule_response() :: #{binary() => any()}.

%% Example:
%% update_ip_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"IPSetId">> := string(),
%%   <<"Updates">> := list(ip_set_update())
%% }
-type update_ip_set_request() :: #{binary() => any()}.

%% Example:
%% list_rules_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_rules_request() :: #{binary() => any()}.

%% Example:
%% create_size_constraint_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_size_constraint_set_request() :: #{binary() => any()}.

%% Example:
%% update_rate_based_rule_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_rate_based_rule_response() :: #{binary() => any()}.

%% Example:
%% get_sql_injection_match_set_response() :: #{
%%   <<"SqlInjectionMatchSet">> => sql_injection_match_set()
%% }
-type get_sql_injection_match_set_response() :: #{binary() => any()}.

%% Example:
%% logging_configuration() :: #{
%%   <<"LogDestinationConfigs">> => list(string()),
%%   <<"RedactedFields">> => list(field_to_match()),
%%   <<"ResourceArn">> => string()
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% get_regex_match_set_request() :: #{
%%   <<"RegexMatchSetId">> := string()
%% }
-type get_regex_match_set_request() :: #{binary() => any()}.

%% Example:
%% byte_match_tuple() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"PositionalConstraint">> => list(any()),
%%   <<"TargetString">> => binary(),
%%   <<"TextTransformation">> => list(any())
%% }
-type byte_match_tuple() :: #{binary() => any()}.

%% Example:
%% list_sql_injection_match_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"SqlInjectionMatchSets">> => list(sql_injection_match_set_summary())
%% }
-type list_sql_injection_match_sets_response() :: #{binary() => any()}.

%% Example:
%% create_rule_group_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"RuleGroup">> => rule_group()
%% }
-type create_rule_group_response() :: #{binary() => any()}.

%% Example:
%% create_rule_group_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"MetricName">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_rule_group_request() :: #{binary() => any()}.

%% Example:
%% put_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type put_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RuleId">> := string()
%% }
-type delete_rule_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_bad_request_exception() :: #{binary() => any()}.

%% Example:
%% delete_geo_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_geo_match_set_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_regex_pattern_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RegexPatternSetId">> := string()
%% }
-type delete_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% list_geo_match_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_geo_match_sets_request() :: #{binary() => any()}.

%% Example:
%% web_acl() :: #{
%%   <<"DefaultAction">> => waf_action(),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(activated_rule()),
%%   <<"WebACLArn">> => string(),
%%   <<"WebACLId">> => string()
%% }
-type web_acl() :: #{binary() => any()}.

%% Example:
%% w_a_f_internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% regex_match_set() :: #{
%%   <<"Name">> => string(),
%%   <<"RegexMatchSetId">> => string(),
%%   <<"RegexMatchTuples">> => list(regex_match_tuple())
%% }
-type regex_match_set() :: #{binary() => any()}.

%% Example:
%% list_activated_rules_in_rule_group_response() :: #{
%%   <<"ActivatedRules">> => list(activated_rule()),
%%   <<"NextMarker">> => string()
%% }
-type list_activated_rules_in_rule_group_response() :: #{binary() => any()}.

%% Example:
%% update_sql_injection_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_sql_injection_match_set_response() :: #{binary() => any()}.

%% Example:
%% subscribed_rule_group_summary() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuleGroupId">> => string()
%% }
-type subscribed_rule_group_summary() :: #{binary() => any()}.

%% Example:
%% get_geo_match_set_response() :: #{
%%   <<"GeoMatchSet">> => geo_match_set()
%% }
-type get_geo_match_set_response() :: #{binary() => any()}.

%% Example:
%% delete_permission_policy_response() :: #{

%% }
-type delete_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_size_constraint_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"SizeConstraintSetId">> := string()
%% }
-type delete_size_constraint_set_request() :: #{binary() => any()}.

%% Example:
%% get_rate_based_rule_managed_keys_request() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RuleId">> := string()
%% }
-type get_rate_based_rule_managed_keys_request() :: #{binary() => any()}.

%% Example:
%% update_rule_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_rule_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_referenced_item_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_referenced_item_exception() :: #{binary() => any()}.

%% Example:
%% update_regex_pattern_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RegexPatternSetId">> := string(),
%%   <<"Updates">> := list(regex_pattern_set_update())
%% }
-type update_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% get_rate_based_rule_response() :: #{
%%   <<"Rule">> => rate_based_rule()
%% }
-type get_rate_based_rule_response() :: #{binary() => any()}.

%% Example:
%% time_window() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_window() :: #{binary() => any()}.

%% Example:
%% list_ip_sets_response() :: #{
%%   <<"IPSets">> => list(ip_set_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_ip_sets_response() :: #{binary() => any()}.

%% Example:
%% list_subscribed_rule_groups_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_subscribed_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% get_xss_match_set_request() :: #{
%%   <<"XssMatchSetId">> := string()
%% }
-type get_xss_match_set_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_web_acl_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"WebACL">> => web_acl()
%% }
-type create_web_acl_response() :: #{binary() => any()}.

%% Example:
%% update_sql_injection_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"SqlInjectionMatchSetId">> := string(),
%%   <<"Updates">> := list(sql_injection_match_set_update())
%% }
-type update_sql_injection_match_set_request() :: #{binary() => any()}.

%% Example:
%% update_web_acl_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_web_acl_response() :: #{binary() => any()}.

%% Example:
%% update_xss_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Updates">> := list(xss_match_set_update()),
%%   <<"XssMatchSetId">> := string()
%% }
-type update_xss_match_set_request() :: #{binary() => any()}.

%% Example:
%% get_logging_configuration_response() :: #{
%%   <<"LoggingConfiguration">> => logging_configuration()
%% }
-type get_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_regex_match_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_regex_match_sets_request() :: #{binary() => any()}.

%% Example:
%% update_rate_based_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RateLimit">> := float(),
%%   <<"RuleId">> := string(),
%%   <<"Updates">> := list(rule_update())
%% }
-type update_rate_based_rule_request() :: #{binary() => any()}.

%% Example:
%% create_regex_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_regex_match_set_request() :: #{binary() => any()}.

%% Example:
%% geo_match_set_summary() :: #{
%%   <<"GeoMatchSetId">> => string(),
%%   <<"Name">> => string()
%% }
-type geo_match_set_summary() :: #{binary() => any()}.

%% Example:
%% create_geo_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_geo_match_set_request() :: #{binary() => any()}.

%% Example:
%% ip_set() :: #{
%%   <<"IPSetDescriptors">> => list(ip_set_descriptor()),
%%   <<"IPSetId">> => string(),
%%   <<"Name">> => string()
%% }
-type ip_set() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_account_exception() :: #{

%% }
-type w_a_f_invalid_account_exception() :: #{binary() => any()}.

%% Example:
%% get_change_token_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type get_change_token_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_tag_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_tag_operation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"TagInfoForResource">> => tag_info_for_resource()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_xss_match_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"XssMatchSet">> => xss_match_set()
%% }
-type create_xss_match_set_response() :: #{binary() => any()}.

%% Example:
%% rule_group_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ActivatedRule">> => activated_rule()
%% }
-type rule_group_update() :: #{binary() => any()}.

%% Example:
%% sampled_h_t_t_p_request() :: #{
%%   <<"Action">> => string(),
%%   <<"Request">> => h_t_t_p_request(),
%%   <<"RuleWithinRuleGroup">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Weight">> => float()
%% }
-type sampled_h_t_t_p_request() :: #{binary() => any()}.

%% Example:
%% update_web_acl_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"DefaultAction">> => waf_action(),
%%   <<"Updates">> => list(web_acl_update()),
%%   <<"WebACLId">> := string()
%% }
-type update_web_acl_request() :: #{binary() => any()}.

%% Example:
%% list_byte_match_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_byte_match_sets_request() :: #{binary() => any()}.

%% Example:
%% get_rate_based_rule_managed_keys_response() :: #{
%%   <<"ManagedKeys">> => list(string()),
%%   <<"NextMarker">> => string()
%% }
-type get_rate_based_rule_managed_keys_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_parameter_exception() :: #{
%%   <<"field">> => list(any()),
%%   <<"parameter">> => string(),
%%   <<"reason">> => list(any())
%% }
-type w_a_f_invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% update_geo_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_geo_match_set_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_entity_migration_exception() :: #{
%%   <<"MigrationErrorReason">> => string(),
%%   <<"MigrationErrorType">> => list(any()),
%%   <<"message">> => string()
%% }
-type w_a_f_entity_migration_exception() :: #{binary() => any()}.

%% Example:
%% get_change_token_request() :: #{

%% }
-type get_change_token_request() :: #{binary() => any()}.

%% Example:
%% get_rule_response() :: #{
%%   <<"Rule">> => rule()
%% }
-type get_rule_response() :: #{binary() => any()}.

%% Example:
%% create_sql_injection_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_sql_injection_match_set_request() :: #{binary() => any()}.

%% Example:
%% create_rule_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"Rule">> => rule()
%% }
-type create_rule_response() :: #{binary() => any()}.

%% Example:
%% list_regex_pattern_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_regex_pattern_sets_request() :: #{binary() => any()}.

%% Example:
%% list_xss_match_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_xss_match_sets_request() :: #{binary() => any()}.

%% Example:
%% byte_match_set_summary() :: #{
%%   <<"ByteMatchSetId">> => string(),
%%   <<"Name">> => string()
%% }
-type byte_match_set_summary() :: #{binary() => any()}.

%% Example:
%% waf_override_action() :: #{
%%   <<"Type">> => list(any())
%% }
-type waf_override_action() :: #{binary() => any()}.

%% Example:
%% list_subscribed_rule_groups_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RuleGroups">> => list(subscribed_rule_group_summary())
%% }
-type list_subscribed_rule_groups_response() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"Predicates">> => list(predicate()),
%%   <<"RuleId">> => string()
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% delete_regex_pattern_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% size_constraint_set() :: #{
%%   <<"Name">> => string(),
%%   <<"SizeConstraintSetId">> => string(),
%%   <<"SizeConstraints">> => list(size_constraint())
%% }
-type size_constraint_set() :: #{binary() => any()}.

%% Example:
%% get_logging_configuration_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_regex_pattern_set_response() :: #{
%%   <<"RegexPatternSet">> => regex_pattern_set()
%% }
-type get_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% geo_match_constraint() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => list(any())
%% }
-type geo_match_constraint() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"RegexPatternSetId">> => string()
%% }
-type regex_pattern_set_summary() :: #{binary() => any()}.

%% Example:
%% put_permission_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_regex_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_regex_match_set_response() :: #{binary() => any()}.

%% Example:
%% create_byte_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_byte_match_set_request() :: #{binary() => any()}.

%% Example:
%% list_sql_injection_match_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_sql_injection_match_sets_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_invalid_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_invalid_operation_exception() :: #{binary() => any()}.

%% Example:
%% rule_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"RuleId">> => string()
%% }
-type rule_summary() :: #{binary() => any()}.

%% Example:
%% regex_match_set_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"RegexMatchSetId">> => string()
%% }
-type regex_match_set_summary() :: #{binary() => any()}.

%% Example:
%% get_change_token_status_response() :: #{
%%   <<"ChangeTokenStatus">> => list(any())
%% }
-type get_change_token_status_response() :: #{binary() => any()}.

%% Example:
%% list_activated_rules_in_rule_group_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"RuleGroupId">> => string()
%% }
-type list_activated_rules_in_rule_group_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_disallowed_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_disallowed_name_exception() :: #{binary() => any()}.

%% Example:
%% list_byte_match_sets_response() :: #{
%%   <<"ByteMatchSets">> => list(byte_match_set_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_byte_match_sets_response() :: #{binary() => any()}.

%% Example:
%% list_logging_configurations_response() :: #{
%%   <<"LoggingConfigurations">> => list(logging_configuration()),
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
%% get_size_constraint_set_request() :: #{
%%   <<"SizeConstraintSetId">> := string()
%% }
-type get_size_constraint_set_request() :: #{binary() => any()}.

%% Example:
%% get_permission_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% list_geo_match_sets_response() :: #{
%%   <<"GeoMatchSets">> => list(geo_match_set_summary()),
%%   <<"NextMarker">> => string()
%% }
-type list_geo_match_sets_response() :: #{binary() => any()}.

%% Example:
%% update_xss_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_xss_match_set_response() :: #{binary() => any()}.

%% Example:
%% excluded_rule() :: #{
%%   <<"RuleId">> => string()
%% }
-type excluded_rule() :: #{binary() => any()}.

%% Example:
%% create_web_acl_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"DefaultAction">> := waf_action(),
%%   <<"MetricName">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_web_acl_request() :: #{binary() => any()}.

%% Example:
%% create_ip_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_ip_set_request() :: #{binary() => any()}.

%% Example:
%% size_constraint_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"SizeConstraint">> => size_constraint()
%% }
-type size_constraint_set_update() :: #{binary() => any()}.

%% Example:
%% update_rule_group_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RuleGroupId">> := string(),
%%   <<"Updates">> := list(rule_group_update())
%% }
-type update_rule_group_request() :: #{binary() => any()}.

%% Example:
%% list_rules_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"Rules">> => list(rule_summary())
%% }
-type list_rules_response() :: #{binary() => any()}.

%% Example:
%% get_ip_set_response() :: #{
%%   <<"IPSet">> => ip_set()
%% }
-type get_ip_set_response() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_rule_group_response() :: #{binary() => any()}.

%% Example:
%% h_t_t_p_request() :: #{
%%   <<"ClientIP">> => string(),
%%   <<"Country">> => string(),
%%   <<"HTTPVersion">> => string(),
%%   <<"Headers">> => list(h_t_t_p_header()),
%%   <<"Method">> => string(),
%%   <<"URI">> => string()
%% }
-type h_t_t_p_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% regex_pattern_set() :: #{
%%   <<"Name">> => string(),
%%   <<"RegexPatternSetId">> => string(),
%%   <<"RegexPatternStrings">> => list(string())
%% }
-type regex_pattern_set() :: #{binary() => any()}.

%% Example:
%% update_size_constraint_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_size_constraint_set_response() :: #{binary() => any()}.

%% Example:
%% get_byte_match_set_request() :: #{
%%   <<"ByteMatchSetId">> := string()
%% }
-type get_byte_match_set_request() :: #{binary() => any()}.

%% Example:
%% list_rate_based_rules_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"Rules">> => list(rule_summary())
%% }
-type list_rate_based_rules_response() :: #{binary() => any()}.

%% Example:
%% rule_group_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"RuleGroupId">> => string()
%% }
-type rule_group_summary() :: #{binary() => any()}.

%% Example:
%% ip_set_summary() :: #{
%%   <<"IPSetId">> => string(),
%%   <<"Name">> => string()
%% }
-type ip_set_summary() :: #{binary() => any()}.

%% Example:
%% create_regex_pattern_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_regex_pattern_set_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_non_empty_entity_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_non_empty_entity_exception() :: #{binary() => any()}.

%% Example:
%% delete_permission_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% xss_match_set_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"XssMatchSetId">> => string()
%% }
-type xss_match_set_summary() :: #{binary() => any()}.

%% Example:
%% update_regex_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_regex_match_set_response() :: #{binary() => any()}.

%% Example:
%% update_regex_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RegexMatchSetId">> := string(),
%%   <<"Updates">> := list(regex_match_set_update())
%% }
-type update_regex_match_set_request() :: #{binary() => any()}.

%% Example:
%% get_permission_policy_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_permission_policy_request() :: #{binary() => any()}.

%% Example:
%% web_acl_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ActivatedRule">> => activated_rule()
%% }
-type web_acl_update() :: #{binary() => any()}.

%% Example:
%% xss_match_tuple() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"TextTransformation">> => list(any())
%% }
-type xss_match_tuple() :: #{binary() => any()}.

%% Example:
%% predicate() :: #{
%%   <<"DataId">> => string(),
%%   <<"Negated">> => boolean(),
%%   <<"Type">> => list(any())
%% }
-type predicate() :: #{binary() => any()}.

%% Example:
%% list_logging_configurations_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_logging_configurations_request() :: #{binary() => any()}.

%% Example:
%% delete_logging_configuration_response() :: #{

%% }
-type delete_logging_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_ip_set_request() :: #{
%%   <<"IPSetId">> := string()
%% }
-type get_ip_set_request() :: #{binary() => any()}.

%% Example:
%% create_size_constraint_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"SizeConstraintSet">> => size_constraint_set()
%% }
-type create_size_constraint_set_response() :: #{binary() => any()}.

%% Example:
%% put_logging_configuration_request() :: #{
%%   <<"LoggingConfiguration">> := logging_configuration()
%% }
-type put_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% put_permission_policy_response() :: #{

%% }
-type put_permission_policy_response() :: #{binary() => any()}.

%% Example:
%% regex_match_tuple() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"RegexPatternSetId">> => string(),
%%   <<"TextTransformation">> => list(any())
%% }
-type regex_match_tuple() :: #{binary() => any()}.

%% Example:
%% update_geo_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"GeoMatchSetId">> := string(),
%%   <<"Updates">> := list(geo_match_set_update())
%% }
-type update_geo_match_set_request() :: #{binary() => any()}.

%% Example:
%% get_change_token_status_request() :: #{
%%   <<"ChangeToken">> := string()
%% }
-type get_change_token_status_request() :: #{binary() => any()}.

%% Example:
%% rule_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Predicate">> => predicate()
%% }
-type rule_update() :: #{binary() => any()}.

%% Example:
%% list_size_constraint_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"SizeConstraintSets">> => list(size_constraint_set_summary())
%% }
-type list_size_constraint_sets_response() :: #{binary() => any()}.

%% Example:
%% geo_match_set() :: #{
%%   <<"GeoMatchConstraints">> => list(geo_match_constraint()),
%%   <<"GeoMatchSetId">> => string(),
%%   <<"Name">> => string()
%% }
-type geo_match_set() :: #{binary() => any()}.

%% Example:
%% delete_logging_configuration_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_logging_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_rate_based_rule_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_rate_based_rule_response() :: #{binary() => any()}.

%% Example:
%% get_sampled_requests_response() :: #{
%%   <<"PopulationSize">> => float(),
%%   <<"SampledRequests">> => list(sampled_h_t_t_p_request()),
%%   <<"TimeWindow">> => time_window()
%% }
-type get_sampled_requests_response() :: #{binary() => any()}.

%% Example:
%% list_regex_pattern_sets_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"RegexPatternSets">> => list(regex_pattern_set_summary())
%% }
-type list_regex_pattern_sets_response() :: #{binary() => any()}.

%% Example:
%% sql_injection_match_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"SqlInjectionMatchTuple">> => sql_injection_match_tuple()
%% }
-type sql_injection_match_set_update() :: #{binary() => any()}.

%% Example:
%% list_web_acls_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_web_acls_request() :: #{binary() => any()}.

%% Example:
%% create_web_acl_migration_stack_request() :: #{
%%   <<"IgnoreUnsupportedType">> := boolean(),
%%   <<"S3BucketName">> := string(),
%%   <<"WebACLId">> := string()
%% }
-type create_web_acl_migration_stack_request() :: #{binary() => any()}.

%% Example:
%% ip_set_descriptor() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type ip_set_descriptor() :: #{binary() => any()}.

%% Example:
%% list_web_acls_response() :: #{
%%   <<"NextMarker">> => string(),
%%   <<"WebACLs">> => list(web_acl_summary())
%% }
-type list_web_acls_response() :: #{binary() => any()}.

%% Example:
%% create_web_acl_migration_stack_response() :: #{
%%   <<"S3ObjectUrl">> => string()
%% }
-type create_web_acl_migration_stack_response() :: #{binary() => any()}.

%% Example:
%% create_ip_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"IPSet">> => ip_set()
%% }
-type create_ip_set_response() :: #{binary() => any()}.

%% Example:
%% delete_sql_injection_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"SqlInjectionMatchSetId">> := string()
%% }
-type delete_sql_injection_match_set_request() :: #{binary() => any()}.

%% Example:
%% update_regex_pattern_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type update_regex_pattern_set_response() :: #{binary() => any()}.

%% Example:
%% ip_set_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"IPSetDescriptor">> => ip_set_descriptor()
%% }
-type ip_set_update() :: #{binary() => any()}.

%% Example:
%% list_size_constraint_sets_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_size_constraint_sets_request() :: #{binary() => any()}.

%% Example:
%% get_web_acl_request() :: #{
%%   <<"WebACLId">> := string()
%% }
-type get_web_acl_request() :: #{binary() => any()}.

%% Example:
%% sql_injection_match_tuple() :: #{
%%   <<"FieldToMatch">> => field_to_match(),
%%   <<"TextTransformation">> => list(any())
%% }
-type sql_injection_match_tuple() :: #{binary() => any()}.

%% Example:
%% get_regex_match_set_response() :: #{
%%   <<"RegexMatchSet">> => regex_match_set()
%% }
-type get_regex_match_set_response() :: #{binary() => any()}.

%% Example:
%% delete_web_acl_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_web_acl_response() :: #{binary() => any()}.

%% Example:
%% w_a_f_subscription_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_subscription_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_rule_group_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RuleGroupId">> := string()
%% }
-type delete_rule_group_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_limits_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_limits_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_rate_based_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"RuleId">> := string()
%% }
-type delete_rate_based_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_web_acl_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"WebACLId">> := string()
%% }
-type delete_web_acl_request() :: #{binary() => any()}.

%% Example:
%% delete_geo_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"GeoMatchSetId">> := string()
%% }
-type delete_geo_match_set_request() :: #{binary() => any()}.

%% Example:
%% w_a_f_tag_operation_internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type w_a_f_tag_operation_internal_error_exception() :: #{binary() => any()}.

%% Example:
%% delete_sql_injection_match_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_sql_injection_match_set_response() :: #{binary() => any()}.

%% Example:
%% web_acl_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"WebACLId">> => string()
%% }
-type web_acl_summary() :: #{binary() => any()}.

%% Example:
%% delete_size_constraint_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_size_constraint_set_response() :: #{binary() => any()}.

%% Example:
%% create_rate_based_rule_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"MetricName">> := string(),
%%   <<"Name">> := string(),
%%   <<"RateKey">> := list(any()),
%%   <<"RateLimit">> := float(),
%%   <<"Tags">> => list(tag())
%% }
-type create_rate_based_rule_request() :: #{binary() => any()}.

%% Example:
%% list_rule_groups_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextMarker">> => string()
%% }
-type list_rule_groups_request() :: #{binary() => any()}.

%% Example:
%% byte_match_set() :: #{
%%   <<"ByteMatchSetId">> => string(),
%%   <<"ByteMatchTuples">> => list(byte_match_tuple()),
%%   <<"Name">> => string()
%% }
-type byte_match_set() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_response() :: #{
%%   <<"ChangeToken">> => string()
%% }
-type delete_ip_set_response() :: #{binary() => any()}.

%% Example:
%% size_constraint_set_summary() :: #{
%%   <<"Name">> => string(),
%%   <<"SizeConstraintSetId">> => string()
%% }
-type size_constraint_set_summary() :: #{binary() => any()}.

%% Example:
%% create_regex_match_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"RegexMatchSet">> => regex_match_set()
%% }
-type create_regex_match_set_response() :: #{binary() => any()}.

%% Example:
%% create_xss_match_set_request() :: #{
%%   <<"ChangeToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_xss_match_set_request() :: #{binary() => any()}.

%% Example:
%% create_regex_pattern_set_response() :: #{
%%   <<"ChangeToken">> => string(),
%%   <<"RegexPatternSet">> => regex_pattern_set()
%% }
-type create_regex_pattern_set_response() :: #{binary() => any()}.

-type create_byte_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_geo_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_ip_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_rate_based_rule_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_stale_data_exception().

-type create_regex_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_regex_pattern_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_rule_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_stale_data_exception().

-type create_rule_group_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_stale_data_exception().

-type create_size_constraint_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_sql_injection_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type create_web_acl_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_stale_data_exception().

-type create_web_acl_migration_stack_errors() ::
    w_a_f_invalid_operation_exception() | 
    w_a_f_entity_migration_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type create_xss_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception().

-type delete_byte_match_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_geo_match_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_ip_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_logging_configuration_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_permission_policy_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_rate_based_rule_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_non_empty_entity_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_regex_match_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_regex_pattern_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_rule_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_non_empty_entity_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_rule_group_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_size_constraint_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_sql_injection_match_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_web_acl_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_non_empty_entity_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type delete_xss_match_set_errors() ::
    w_a_f_non_empty_entity_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_byte_match_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_change_token_errors() ::
    w_a_f_internal_error_exception().

-type get_change_token_status_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_geo_match_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_ip_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_logging_configuration_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_permission_policy_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rate_based_rule_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rate_based_rule_managed_keys_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_regex_match_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_regex_pattern_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rule_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_rule_group_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_sampled_requests_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_size_constraint_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_sql_injection_match_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_web_acl_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type get_xss_match_set_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_activated_rules_in_rule_group_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_byte_match_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_geo_match_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_ip_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_logging_configurations_errors() ::
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_rate_based_rules_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_regex_match_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_regex_pattern_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_rule_groups_errors() ::
    w_a_f_internal_error_exception().

-type list_rules_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_size_constraint_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_sql_injection_match_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_subscribed_rule_groups_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_tags_for_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_nonexistent_item_exception().

-type list_web_acls_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type list_xss_match_sets_errors() ::
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception().

-type put_logging_configuration_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_service_linked_role_error_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type put_permission_policy_errors() ::
    w_a_f_internal_error_exception() | 
    w_a_f_invalid_permission_policy_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type tag_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_nonexistent_item_exception().

-type untag_resource_errors() ::
    w_a_f_tag_operation_internal_error_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_tag_operation_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_bad_request_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_byte_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_geo_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_ip_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_rate_based_rule_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_regex_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_disallowed_name_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_regex_pattern_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_invalid_regex_pattern_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_rule_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_rule_group_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_size_constraint_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_sql_injection_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_web_acl_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_subscription_not_found_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_referenced_item_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

-type update_xss_match_set_errors() ::
    w_a_f_limits_exceeded_exception() | 
    w_a_f_invalid_operation_exception() | 
    w_a_f_invalid_parameter_exception() | 
    w_a_f_invalid_account_exception() | 
    w_a_f_internal_error_exception() | 
    w_a_f_nonexistent_container_exception() | 
    w_a_f_stale_data_exception() | 
    w_a_f_nonexistent_item_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `ByteMatchSet'. You then use `UpdateByteMatchSet' to
%% identify the part of a
%% web request that you want AWS WAF to inspect, such as the values of the
%% `User-Agent' header or the query string.
%% For example, you can create a `ByteMatchSet' that matches any requests
%% with `User-Agent' headers
%% that contain the string `BadBot'. You can then configure AWS WAF to
%% reject those requests.
%%
%% To create and configure a `ByteMatchSet', perform the following steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateByteMatchSet' request.
%%
%% Submit a `CreateByteMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateByteMatchSet' request.
%%
%% Submit an `UpdateByteMatchSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the value that you want AWS WAF
%% to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_byte_match_set(aws_client:aws_client(), create_byte_match_set_request()) ->
    {ok, create_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_byte_match_set_errors(), tuple()}.
create_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_byte_match_set(Client, Input, []).

-spec create_byte_match_set(aws_client:aws_client(), create_byte_match_set_request(), proplists:proplist()) ->
    {ok, create_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_byte_match_set_errors(), tuple()}.
create_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateByteMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates an `GeoMatchSet', which you use to specify which web requests
%% you want to allow or block based on the country
%% that the requests originate from. For example, if you're receiving a
%% lot of requests from one or more countries and you want to block the
%% requests, you can create an `GeoMatchSet' that contains those
%% countries and then configure AWS WAF to block the requests.
%%
%% To create and configure a `GeoMatchSet', perform the following steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateGeoMatchSet' request.
%%
%% Submit a `CreateGeoMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateGeoMatchSet' request.
%%
%% Submit an `UpdateGeoMatchSetSet' request to specify the countries that
%% you want AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_geo_match_set(aws_client:aws_client(), create_geo_match_set_request()) ->
    {ok, create_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_geo_match_set_errors(), tuple()}.
create_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_geo_match_set(Client, Input, []).

-spec create_geo_match_set(aws_client:aws_client(), create_geo_match_set_request(), proplists:proplist()) ->
    {ok, create_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_geo_match_set_errors(), tuple()}.
create_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGeoMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates an `IPSet', which you use to specify which web requests
%% that
%% you want to allow or block based on the IP addresses that the requests
%% originate from. For example, if you're receiving a lot of requests
%% from one or more
%% individual IP addresses or one or more ranges of IP addresses and you want
%% to block the
%% requests, you can create an `IPSet' that contains those IP addresses
%% and then
%% configure AWS WAF to block the requests.
%%
%% To create and configure an `IPSet', perform the following steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateIPSet' request.
%%
%% Submit a `CreateIPSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateIPSet' request.
%%
%% Submit an `UpdateIPSet' request to specify the IP addresses that you
%% want AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `RateBasedRule'. The `RateBasedRule' contains a
%% `RateLimit', which specifies the maximum number of requests that AWS
%% WAF allows
%% from a specified IP address in a five-minute period.
%% The `RateBasedRule' also
%% contains the `IPSet' objects, `ByteMatchSet' objects, and other
%% predicates that identify the requests that you want to count or block if
%% these requests
%% exceed the `RateLimit'.
%%
%% If you add more than one predicate to a `RateBasedRule', a request not
%% only must exceed the `RateLimit', but it also must match all the
%% conditions to be counted or blocked. For example, suppose you add the
%% following to a
%% `RateBasedRule':
%%
%% An `IPSet' that matches the IP address `192.0.2.44/32'
%%
%% A `ByteMatchSet' that matches `BadBot' in the
%% `User-Agent' header
%%
%% Further, you specify a `RateLimit' of 1,000.
%%
%% You then add the `RateBasedRule' to a `WebACL' and specify that
%% you want to block requests that meet the conditions in the rule. For a
%% request to be
%% blocked, it must come from the IP address 192.0.2.44 and the
%% `User-Agent' header in the request must contain the value
%% `BadBot'. Further, requests that match these two conditions must be
%% received at
%% a rate of more than 1,000 requests every five minutes. If both conditions
%% are met and the
%% rate is exceeded, AWS WAF blocks the requests. If the rate drops below
%% 1,000 for a
%% five-minute period, AWS WAF no longer blocks the requests.
%%
%% As a second example, suppose you want to limit requests to a particular
%% page on your site. To do this, you could add the following to a
%% `RateBasedRule':
%%
%% A `ByteMatchSet' with `FieldToMatch' of `URI'
%%
%% A `PositionalConstraint' of `STARTS_WITH'
%%
%% A `TargetString' of `login'
%%
%% Further, you specify a `RateLimit' of 1,000.
%%
%% By adding this `RateBasedRule' to a `WebACL', you could limit
%% requests to your login page without affecting the rest of your site.
%%
%% To create and configure a `RateBasedRule', perform the following
%% steps:
%%
%% Create and update the predicates that you want to include in the rule. For
%% more
%% information, see `CreateByteMatchSet', `CreateIPSet',
%% and `CreateSqlInjectionMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide
%% in the `ChangeToken' parameter of a `CreateRule'
%% request.
%%
%% Submit a `CreateRateBasedRule' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an `UpdateRule'
%% request.
%%
%% Submit an `UpdateRateBasedRule' request to specify the predicates
%% that you want to include in the rule.
%%
%% Create and update a `WebACL' that contains the
%% `RateBasedRule'. For more information, see `CreateWebACL'.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests,
%% see the AWS WAF Developer
%% Guide: https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_rate_based_rule(aws_client:aws_client(), create_rate_based_rule_request()) ->
    {ok, create_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rate_based_rule_errors(), tuple()}.
create_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rate_based_rule(Client, Input, []).

-spec create_rate_based_rule(aws_client:aws_client(), create_rate_based_rule_request(), proplists:proplist()) ->
    {ok, create_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rate_based_rule_errors(), tuple()}.
create_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRateBasedRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `RegexMatchSet'. You then use `UpdateRegexMatchSet' to
%% identify the part of a
%% web request that you want AWS WAF to inspect, such as the values of the
%% `User-Agent' header or the query string.
%% For example, you can create a `RegexMatchSet' that contains a
%% `RegexMatchTuple' that looks for any requests with `User-Agent'
%% headers
%% that match a `RegexPatternSet' with pattern `B[a@]dB[o0]t'. You
%% can then configure AWS WAF to reject those requests.
%%
%% To create and configure a `RegexMatchSet', perform the following
%% steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateRegexMatchSet' request.
%%
%% Submit a `CreateRegexMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRegexMatchSet' request.
%%
%% Submit an `UpdateRegexMatchSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the value, using a
%% `RegexPatternSet', that you want AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_regex_match_set(aws_client:aws_client(), create_regex_match_set_request()) ->
    {ok, create_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_regex_match_set_errors(), tuple()}.
create_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_match_set(Client, Input, []).

-spec create_regex_match_set(aws_client:aws_client(), create_regex_match_set_request(), proplists:proplist()) ->
    {ok, create_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_regex_match_set_errors(), tuple()}.
create_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `RegexPatternSet'. You then use `UpdateRegexPatternSet'
%% to specify the regular expression (regex) pattern that you want AWS WAF to
%% search for, such as `B[a@]dB[o0]t'. You can then configure AWS WAF to
%% reject those requests.
%%
%% To create and configure a `RegexPatternSet', perform the following
%% steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateRegexPatternSet' request.
%%
%% Submit a `CreateRegexPatternSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRegexPatternSet' request.
%%
%% Submit an `UpdateRegexPatternSet' request to specify the string that
%% you want AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `Rule', which contains the `IPSet' objects,
%% `ByteMatchSet' objects, and other predicates that identify the
%% requests that
%% you want to block. If you add more than one predicate to a `Rule', a
%% request
%% must match all of the specifications to be allowed or blocked. For
%% example, suppose
%% that
%% you add the following to a `Rule':
%%
%% An `IPSet' that matches the IP address `192.0.2.44/32'
%%
%% A `ByteMatchSet' that matches `BadBot' in the `User-Agent'
%% header
%%
%% You then add the `Rule' to a `WebACL' and specify that you want to
%% blocks requests that satisfy the `Rule'.
%% For a request to be blocked, it must come from the IP address 192.0.2.44
%% and the `User-Agent' header in the request
%% must contain the value `BadBot'.
%%
%% To create and configure a `Rule', perform the following steps:
%%
%% Create and update the predicates that you want to include in the
%% `Rule'. For more information, see
%% `CreateByteMatchSet', `CreateIPSet', and
%% `CreateSqlInjectionMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateRule' request.
%%
%% Submit a `CreateRule' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRule' request.
%%
%% Submit an `UpdateRule' request to specify the predicates that you want
%% to include in the `Rule'.
%%
%% Create and update a `WebACL' that contains the `Rule'. For more
%% information, see `CreateWebACL'.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_rule(aws_client:aws_client(), create_rule_request()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).

-spec create_rule(aws_client:aws_client(), create_rule_request(), proplists:proplist()) ->
    {ok, create_rule_response(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `RuleGroup'. A rule group is a collection of predefined
%% rules that you add to a web ACL. You use `UpdateRuleGroup' to add
%% rules to the rule group.
%%
%% Rule groups are subject to the following limits:
%%
%% Three rule groups per account. You can request an increase to this limit
%% by contacting customer support.
%%
%% One rule group per web ACL.
%%
%% Ten rules per rule group.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `SizeConstraintSet'. You then use
%% `UpdateSizeConstraintSet' to identify the part of a
%% web request that you want AWS WAF to check for length, such as the length
%% of the `User-Agent' header or the length of the query string.
%% For example, you can create a `SizeConstraintSet' that matches any
%% requests that have a query string that is longer than 100 bytes.
%% You can then configure AWS WAF to reject those requests.
%%
%% To create and configure a `SizeConstraintSet', perform the following
%% steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateSizeConstraintSet' request.
%%
%% Submit a `CreateSizeConstraintSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateSizeConstraintSet' request.
%%
%% Submit an `UpdateSizeConstraintSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the value that you want AWS WAF
%% to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_size_constraint_set(aws_client:aws_client(), create_size_constraint_set_request()) ->
    {ok, create_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, create_size_constraint_set_errors(), tuple()}.
create_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_size_constraint_set(Client, Input, []).

-spec create_size_constraint_set(aws_client:aws_client(), create_size_constraint_set_request(), proplists:proplist()) ->
    {ok, create_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, create_size_constraint_set_errors(), tuple()}.
create_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSizeConstraintSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `SqlInjectionMatchSet', which you use to allow, block, or
%% count requests that contain snippets of SQL code in a
%% specified part of web requests. AWS WAF searches for character sequences
%% that are likely to be malicious strings.
%%
%% To create and configure a `SqlInjectionMatchSet', perform the
%% following steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateSqlInjectionMatchSet' request.
%%
%% Submit a `CreateSqlInjectionMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateSqlInjectionMatchSet' request.
%%
%% Submit an `UpdateSqlInjectionMatchSet' request to specify the parts of
%% web requests in which you want to
%% allow, block, or count malicious SQL code.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_sql_injection_match_set(aws_client:aws_client(), create_sql_injection_match_set_request()) ->
    {ok, create_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_sql_injection_match_set_errors(), tuple()}.
create_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sql_injection_match_set(Client, Input, []).

-spec create_sql_injection_match_set(aws_client:aws_client(), create_sql_injection_match_set_request(), proplists:proplist()) ->
    {ok, create_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_sql_injection_match_set_errors(), tuple()}.
create_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSqlInjectionMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates a `WebACL', which contains the `Rules' that identify the
%% CloudFront web requests that you want to allow, block, or count.
%% AWS WAF evaluates `Rules' in order based on the value of
%% `Priority' for each `Rule'.
%%
%% You also specify a default action, either `ALLOW' or `BLOCK'. If a
%% web request doesn't match
%% any of the `Rules' in a `WebACL', AWS WAF responds to the request
%% with the default action.
%%
%% To create and configure a `WebACL', perform the following steps:
%%
%% Create and update the `ByteMatchSet' objects and other predicates that
%% you want to include in `Rules'.
%% For more information, see `CreateByteMatchSet',
%% `UpdateByteMatchSet', `CreateIPSet', `UpdateIPSet',
%% `CreateSqlInjectionMatchSet', and `UpdateSqlInjectionMatchSet'.
%%
%% Create and update the `Rules' that you want to include in the
%% `WebACL'. For more information, see
%% `CreateRule' and `UpdateRule'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateWebACL' request.
%%
%% Submit a `CreateWebACL' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateWebACL' request.
%%
%% Submit an `UpdateWebACL' request to specify the `Rules' that you
%% want to include in the `WebACL',
%% to specify the default action, and to associate the `WebACL' with a
%% CloudFront distribution.
%%
%% For more information about how to use the AWS WAF API, see the AWS WAF
%% Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc Creates an AWS CloudFormation WAFV2 template for the specified web
%% ACL in the specified Amazon S3 bucket.
%%
%% Then, in CloudFormation, you create a stack from the template, to create
%% the web ACL and its resources in AWS WAFV2.
%% Use this to migrate your AWS WAF Classic web ACL to the latest version of
%% AWS WAF.
%%
%% This is part of a larger migration procedure for web ACLs from AWS WAF
%% Classic to the latest version of AWS WAF.
%% For the full procedure, including caveats and manual steps to complete
%% the migration and switch over to the new web ACL, see
%% Migrating your AWS WAF Classic resources to AWS WAF:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html
%% in the AWS WAF
%% Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
-spec create_web_acl_migration_stack(aws_client:aws_client(), create_web_acl_migration_stack_request()) ->
    {ok, create_web_acl_migration_stack_response(), tuple()} |
    {error, any()} |
    {error, create_web_acl_migration_stack_errors(), tuple()}.
create_web_acl_migration_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_acl_migration_stack(Client, Input, []).

-spec create_web_acl_migration_stack(aws_client:aws_client(), create_web_acl_migration_stack_request(), proplists:proplist()) ->
    {ok, create_web_acl_migration_stack_response(), tuple()} |
    {error, any()} |
    {error, create_web_acl_migration_stack_errors(), tuple()}.
create_web_acl_migration_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACLMigrationStack">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Creates an `XssMatchSet', which you use to allow, block, or count
%% requests that contain cross-site scripting attacks
%% in the specified part of web requests. AWS WAF searches for character
%% sequences that are likely to be malicious strings.
%%
%% To create and configure an `XssMatchSet', perform the following steps:
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `CreateXssMatchSet' request.
%%
%% Submit a `CreateXssMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateXssMatchSet' request.
%%
%% Submit an `UpdateXssMatchSet' request to specify the parts of web
%% requests in which you want to
%% allow, block, or count cross-site scripting attacks.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec create_xss_match_set(aws_client:aws_client(), create_xss_match_set_request()) ->
    {ok, create_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_xss_match_set_errors(), tuple()}.
create_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_xss_match_set(Client, Input, []).

-spec create_xss_match_set(aws_client:aws_client(), create_xss_match_set_request(), proplists:proplist()) ->
    {ok, create_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, create_xss_match_set_errors(), tuple()}.
create_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateXssMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `ByteMatchSet'. You can't delete a
%% `ByteMatchSet' if it's still used in any `Rules'
%% or if it still includes any `ByteMatchTuple' objects (any filters).
%%
%% If you just want to remove a `ByteMatchSet' from a `Rule', use
%% `UpdateRule'.
%%
%% To permanently delete a `ByteMatchSet', perform the following steps:
%%
%% Update the `ByteMatchSet' to remove filters, if any. For more
%% information, see `UpdateByteMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteByteMatchSet' request.
%%
%% Submit a `DeleteByteMatchSet' request.
-spec delete_byte_match_set(aws_client:aws_client(), delete_byte_match_set_request()) ->
    {ok, delete_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_byte_match_set_errors(), tuple()}.
delete_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_byte_match_set(Client, Input, []).

-spec delete_byte_match_set(aws_client:aws_client(), delete_byte_match_set_request(), proplists:proplist()) ->
    {ok, delete_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_byte_match_set_errors(), tuple()}.
delete_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteByteMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `GeoMatchSet'. You can't delete a
%% `GeoMatchSet' if it's still used in any `Rules' or
%% if it still includes any countries.
%%
%% If you just want to remove a `GeoMatchSet' from a `Rule', use
%% `UpdateRule'.
%%
%% To permanently delete a `GeoMatchSet' from AWS WAF, perform the
%% following steps:
%%
%% Update the `GeoMatchSet' to remove any countries. For more
%% information, see `UpdateGeoMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteGeoMatchSet' request.
%%
%% Submit a `DeleteGeoMatchSet' request.
-spec delete_geo_match_set(aws_client:aws_client(), delete_geo_match_set_request()) ->
    {ok, delete_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_geo_match_set_errors(), tuple()}.
delete_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_geo_match_set(Client, Input, []).

-spec delete_geo_match_set(aws_client:aws_client(), delete_geo_match_set_request(), proplists:proplist()) ->
    {ok, delete_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_geo_match_set_errors(), tuple()}.
delete_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGeoMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes an `IPSet'. You can't delete an `IPSet' if
%% it's still used in any `Rules' or
%% if it still includes any IP addresses.
%%
%% If you just want to remove an `IPSet' from a `Rule', use
%% `UpdateRule'.
%%
%% To permanently delete an `IPSet' from AWS WAF, perform the following
%% steps:
%%
%% Update the `IPSet' to remove IP address ranges, if any. For more
%% information, see `UpdateIPSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteIPSet' request.
%%
%% Submit a `DeleteIPSet' request.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes the `LoggingConfiguration' from the specified web
%% ACL.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes an IAM policy from the specified RuleGroup.
%%
%% The user making the request must be the owner of the RuleGroup.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `RateBasedRule'. You can't delete a rule if
%% it's still used in any `WebACL' objects or if it still includes
%% any predicates,
%% such as `ByteMatchSet' objects.
%%
%% If you just want to remove a rule from a `WebACL', use
%% `UpdateWebACL'.
%%
%% To permanently delete a `RateBasedRule' from AWS WAF, perform the
%% following
%% steps:
%%
%% Update the `RateBasedRule' to remove predicates, if any. For more
%% information, see `UpdateRateBasedRule'.
%%
%% Use `GetChangeToken' to get the change token that you provide
%% in the `ChangeToken' parameter of a `DeleteRateBasedRule'
%% request.
%%
%% Submit a `DeleteRateBasedRule' request.
-spec delete_rate_based_rule(aws_client:aws_client(), delete_rate_based_rule_request()) ->
    {ok, delete_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rate_based_rule_errors(), tuple()}.
delete_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rate_based_rule(Client, Input, []).

-spec delete_rate_based_rule(aws_client:aws_client(), delete_rate_based_rule_request(), proplists:proplist()) ->
    {ok, delete_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rate_based_rule_errors(), tuple()}.
delete_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRateBasedRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `RegexMatchSet'. You can't delete a
%% `RegexMatchSet' if it's still used in any `Rules'
%% or if it still includes any `RegexMatchTuples' objects (any filters).
%%
%% If you just want to remove a `RegexMatchSet' from a `Rule', use
%% `UpdateRule'.
%%
%% To permanently delete a `RegexMatchSet', perform the following steps:
%%
%% Update the `RegexMatchSet' to remove filters, if any. For more
%% information, see `UpdateRegexMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteRegexMatchSet' request.
%%
%% Submit a `DeleteRegexMatchSet' request.
-spec delete_regex_match_set(aws_client:aws_client(), delete_regex_match_set_request()) ->
    {ok, delete_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_regex_match_set_errors(), tuple()}.
delete_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_match_set(Client, Input, []).

-spec delete_regex_match_set(aws_client:aws_client(), delete_regex_match_set_request(), proplists:proplist()) ->
    {ok, delete_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_regex_match_set_errors(), tuple()}.
delete_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `RegexPatternSet'. You can't delete a
%% `RegexPatternSet' if it's still used in any `RegexMatchSet'
%% or if the `RegexPatternSet' is not empty.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `Rule'. You can't delete a `Rule' if
%% it's still used in any `WebACL'
%% objects or if it still includes any predicates, such as `ByteMatchSet'
%% objects.
%%
%% If you just want to remove a `Rule' from a `WebACL', use
%% `UpdateWebACL'.
%%
%% To permanently delete a `Rule' from AWS WAF, perform the following
%% steps:
%%
%% Update the `Rule' to remove predicates, if any. For more information,
%% see `UpdateRule'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteRule' request.
%%
%% Submit a `DeleteRule' request.
-spec delete_rule(aws_client:aws_client(), delete_rule_request()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).

-spec delete_rule(aws_client:aws_client(), delete_rule_request(), proplists:proplist()) ->
    {ok, delete_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `RuleGroup'. You can't delete a
%% `RuleGroup' if it's still used in any `WebACL'
%% objects or if it still includes any rules.
%%
%% If you just want to remove a `RuleGroup' from a `WebACL', use
%% `UpdateWebACL'.
%%
%% To permanently delete a `RuleGroup' from AWS WAF, perform the
%% following steps:
%%
%% Update the `RuleGroup' to remove rules, if any. For more information,
%% see `UpdateRuleGroup'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteRuleGroup' request.
%%
%% Submit a `DeleteRuleGroup' request.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `SizeConstraintSet'. You can't delete a
%% `SizeConstraintSet' if it's still used in any `Rules'
%% or if it still includes any `SizeConstraint' objects (any filters).
%%
%% If you just want to remove a `SizeConstraintSet' from a `Rule',
%% use `UpdateRule'.
%%
%% To permanently delete a `SizeConstraintSet', perform the following
%% steps:
%%
%% Update the `SizeConstraintSet' to remove filters, if any. For more
%% information, see `UpdateSizeConstraintSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteSizeConstraintSet' request.
%%
%% Submit a `DeleteSizeConstraintSet' request.
-spec delete_size_constraint_set(aws_client:aws_client(), delete_size_constraint_set_request()) ->
    {ok, delete_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, delete_size_constraint_set_errors(), tuple()}.
delete_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_size_constraint_set(Client, Input, []).

-spec delete_size_constraint_set(aws_client:aws_client(), delete_size_constraint_set_request(), proplists:proplist()) ->
    {ok, delete_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, delete_size_constraint_set_errors(), tuple()}.
delete_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSizeConstraintSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `SqlInjectionMatchSet'. You can't delete a
%% `SqlInjectionMatchSet' if it's
%% still used in any `Rules' or if it still contains any
%% `SqlInjectionMatchTuple' objects.
%%
%% If you just want to remove a `SqlInjectionMatchSet' from a `Rule',
%% use `UpdateRule'.
%%
%% To permanently delete a `SqlInjectionMatchSet' from AWS WAF, perform
%% the following steps:
%%
%% Update the `SqlInjectionMatchSet' to remove filters, if any. For more
%% information, see
%% `UpdateSqlInjectionMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteSqlInjectionMatchSet' request.
%%
%% Submit a `DeleteSqlInjectionMatchSet' request.
-spec delete_sql_injection_match_set(aws_client:aws_client(), delete_sql_injection_match_set_request()) ->
    {ok, delete_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_sql_injection_match_set_errors(), tuple()}.
delete_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sql_injection_match_set(Client, Input, []).

-spec delete_sql_injection_match_set(aws_client:aws_client(), delete_sql_injection_match_set_request(), proplists:proplist()) ->
    {ok, delete_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_sql_injection_match_set_errors(), tuple()}.
delete_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSqlInjectionMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes a `WebACL'. You can't delete a `WebACL' if
%% it still contains any `Rules'.
%%
%% To delete a `WebACL', perform the following steps:
%%
%% Update the `WebACL' to remove `Rules', if any. For more
%% information, see `UpdateWebACL'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteWebACL' request.
%%
%% Submit a `DeleteWebACL' request.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Permanently deletes an `XssMatchSet'. You can't delete an
%% `XssMatchSet' if it's
%% still used in any `Rules' or if it still contains any
%% `XssMatchTuple' objects.
%%
%% If you just want to remove an `XssMatchSet' from a `Rule', use
%% `UpdateRule'.
%%
%% To permanently delete an `XssMatchSet' from AWS WAF, perform the
%% following steps:
%%
%% Update the `XssMatchSet' to remove filters, if any. For more
%% information, see
%% `UpdateXssMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of a
%% `DeleteXssMatchSet' request.
%%
%% Submit a `DeleteXssMatchSet' request.
-spec delete_xss_match_set(aws_client:aws_client(), delete_xss_match_set_request()) ->
    {ok, delete_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_xss_match_set_errors(), tuple()}.
delete_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_xss_match_set(Client, Input, []).

-spec delete_xss_match_set(aws_client:aws_client(), delete_xss_match_set_request(), proplists:proplist()) ->
    {ok, delete_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, delete_xss_match_set_errors(), tuple()}.
delete_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteXssMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `ByteMatchSet' specified by `ByteMatchSetId'.
-spec get_byte_match_set(aws_client:aws_client(), get_byte_match_set_request()) ->
    {ok, get_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_byte_match_set_errors(), tuple()}.
get_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_byte_match_set(Client, Input, []).

-spec get_byte_match_set(aws_client:aws_client(), get_byte_match_set_request(), proplists:proplist()) ->
    {ok, get_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_byte_match_set_errors(), tuple()}.
get_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetByteMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% When you want to create, update, or delete AWS WAF objects, get a change
%% token and include the change token in the create, update, or delete
%% request. Change tokens ensure that your application doesn't submit
%% conflicting requests to AWS WAF.
%%
%% Each create, update, or delete request must use a unique change token. If
%% your application submits a `GetChangeToken' request
%% and then submits a second `GetChangeToken' request before submitting a
%% create, update, or delete request, the second
%% `GetChangeToken' request returns the same value as the first
%% `GetChangeToken' request.
%%
%% When you use a change token in a create, update, or delete request, the
%% status of the change token changes to `PENDING',
%% which indicates that AWS WAF is propagating the change to all AWS WAF
%% servers. Use `GetChangeTokenStatus' to determine the
%% status of your change token.
-spec get_change_token(aws_client:aws_client(), get_change_token_request()) ->
    {ok, get_change_token_response(), tuple()} |
    {error, any()} |
    {error, get_change_token_errors(), tuple()}.
get_change_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token(Client, Input, []).

-spec get_change_token(aws_client:aws_client(), get_change_token_request(), proplists:proplist()) ->
    {ok, get_change_token_response(), tuple()} |
    {error, any()} |
    {error, get_change_token_errors(), tuple()}.
get_change_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeToken">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the status of a `ChangeToken' that you got by calling
%% `GetChangeToken'. `ChangeTokenStatus' is
%% one of the following values:
%%
%% `PROVISIONED': You requested the change token by calling
%% `GetChangeToken', but you haven't used it yet
%% in a call to create, update, or delete an AWS WAF object.
%%
%% `PENDING': AWS WAF is propagating the create, update, or delete
%% request to all AWS WAF servers.
%%
%% `INSYNC': Propagation is complete.
-spec get_change_token_status(aws_client:aws_client(), get_change_token_status_request()) ->
    {ok, get_change_token_status_response(), tuple()} |
    {error, any()} |
    {error, get_change_token_status_errors(), tuple()}.
get_change_token_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token_status(Client, Input, []).

-spec get_change_token_status(aws_client:aws_client(), get_change_token_status_request(), proplists:proplist()) ->
    {ok, get_change_token_status_response(), tuple()} |
    {error, any()} |
    {error, get_change_token_status_errors(), tuple()}.
get_change_token_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeTokenStatus">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `GeoMatchSet' that is specified by `GeoMatchSetId'.
-spec get_geo_match_set(aws_client:aws_client(), get_geo_match_set_request()) ->
    {ok, get_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_geo_match_set_errors(), tuple()}.
get_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_geo_match_set(Client, Input, []).

-spec get_geo_match_set(aws_client:aws_client(), get_geo_match_set_request(), proplists:proplist()) ->
    {ok, get_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_geo_match_set_errors(), tuple()}.
get_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGeoMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `IPSet' that is specified by `IPSetId'.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `LoggingConfiguration' for the specified web ACL.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the IAM policy attached to the RuleGroup.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `RateBasedRule' that is specified by the
%% `RuleId' that you included in the `GetRateBasedRule'
%% request.
-spec get_rate_based_rule(aws_client:aws_client(), get_rate_based_rule_request()) ->
    {ok, get_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_rule_errors(), tuple()}.
get_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_rule(Client, Input, []).

-spec get_rate_based_rule(aws_client:aws_client(), get_rate_based_rule_request(), proplists:proplist()) ->
    {ok, get_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_rule_errors(), tuple()}.
get_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of IP addresses currently being blocked by the
%% `RateBasedRule' that is specified by the `RuleId'. The maximum
%% number of managed keys that will be blocked is 10,000. If more than 10,000
%% addresses exceed
%% the rate limit, the 10,000 addresses with the highest rates will be
%% blocked.
-spec get_rate_based_rule_managed_keys(aws_client:aws_client(), get_rate_based_rule_managed_keys_request()) ->
    {ok, get_rate_based_rule_managed_keys_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_rule_managed_keys_errors(), tuple()}.
get_rate_based_rule_managed_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_rule_managed_keys(Client, Input, []).

-spec get_rate_based_rule_managed_keys(aws_client:aws_client(), get_rate_based_rule_managed_keys_request(), proplists:proplist()) ->
    {ok, get_rate_based_rule_managed_keys_response(), tuple()} |
    {error, any()} |
    {error, get_rate_based_rule_managed_keys_errors(), tuple()}.
get_rate_based_rule_managed_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedRuleManagedKeys">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `RegexMatchSet' specified by `RegexMatchSetId'.
-spec get_regex_match_set(aws_client:aws_client(), get_regex_match_set_request()) ->
    {ok, get_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_regex_match_set_errors(), tuple()}.
get_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_match_set(Client, Input, []).

-spec get_regex_match_set(aws_client:aws_client(), get_regex_match_set_request(), proplists:proplist()) ->
    {ok, get_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_regex_match_set_errors(), tuple()}.
get_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `RegexPatternSet' specified by `RegexPatternSetId'.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `Rule' that is specified by the `RuleId' that you
%% included in the `GetRule' request.
-spec get_rule(aws_client:aws_client(), get_rule_request()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule(Client, Input, []).

-spec get_rule(aws_client:aws_client(), get_rule_request(), proplists:proplist()) ->
    {ok, get_rule_response(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `RuleGroup' that is specified by the `RuleGroupId'
%% that you included in the `GetRuleGroup' request.
%%
%% To view the rules in a rule group, use
%% `ListActivatedRulesInRuleGroup'.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Gets detailed information about a specified number of requests--a
%% sample--that AWS WAF randomly selects from among the first 5,000 requests
%% that your AWS resource received during a time range that you choose. You
%% can specify a sample size of up to 500 requests, and you can specify any
%% time range in the previous three hours.
%%
%% `GetSampledRequests' returns a time range, which is usually the time
%% range that you specified. However, if your resource
%% (such as a CloudFront distribution) received 5,000 requests before the
%% specified time range elapsed, `GetSampledRequests'
%% returns an updated time range. This new time range indicates the actual
%% period during which AWS WAF selected the requests in the sample.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `SizeConstraintSet' specified by
%% `SizeConstraintSetId'.
-spec get_size_constraint_set(aws_client:aws_client(), get_size_constraint_set_request()) ->
    {ok, get_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, get_size_constraint_set_errors(), tuple()}.
get_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_size_constraint_set(Client, Input, []).

-spec get_size_constraint_set(aws_client:aws_client(), get_size_constraint_set_request(), proplists:proplist()) ->
    {ok, get_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, get_size_constraint_set_errors(), tuple()}.
get_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSizeConstraintSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `SqlInjectionMatchSet' that is specified by
%% `SqlInjectionMatchSetId'.
-spec get_sql_injection_match_set(aws_client:aws_client(), get_sql_injection_match_set_request()) ->
    {ok, get_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_sql_injection_match_set_errors(), tuple()}.
get_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sql_injection_match_set(Client, Input, []).

-spec get_sql_injection_match_set(aws_client:aws_client(), get_sql_injection_match_set_request(), proplists:proplist()) ->
    {ok, get_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_sql_injection_match_set_errors(), tuple()}.
get_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSqlInjectionMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `WebACL' that is specified by `WebACLId'.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns the `XssMatchSet' that is specified by `XssMatchSetId'.
-spec get_xss_match_set(aws_client:aws_client(), get_xss_match_set_request()) ->
    {ok, get_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_xss_match_set_errors(), tuple()}.
get_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_xss_match_set(Client, Input, []).

-spec get_xss_match_set(aws_client:aws_client(), get_xss_match_set_request(), proplists:proplist()) ->
    {ok, get_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, get_xss_match_set_errors(), tuple()}.
get_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetXssMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `ActivatedRule' objects.
-spec list_activated_rules_in_rule_group(aws_client:aws_client(), list_activated_rules_in_rule_group_request()) ->
    {ok, list_activated_rules_in_rule_group_response(), tuple()} |
    {error, any()} |
    {error, list_activated_rules_in_rule_group_errors(), tuple()}.
list_activated_rules_in_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activated_rules_in_rule_group(Client, Input, []).

-spec list_activated_rules_in_rule_group(aws_client:aws_client(), list_activated_rules_in_rule_group_request(), proplists:proplist()) ->
    {ok, list_activated_rules_in_rule_group_response(), tuple()} |
    {error, any()} |
    {error, list_activated_rules_in_rule_group_errors(), tuple()}.
list_activated_rules_in_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivatedRulesInRuleGroup">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `ByteMatchSetSummary' objects.
-spec list_byte_match_sets(aws_client:aws_client(), list_byte_match_sets_request()) ->
    {ok, list_byte_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_byte_match_sets_errors(), tuple()}.
list_byte_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_byte_match_sets(Client, Input, []).

-spec list_byte_match_sets(aws_client:aws_client(), list_byte_match_sets_request(), proplists:proplist()) ->
    {ok, list_byte_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_byte_match_sets_errors(), tuple()}.
list_byte_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListByteMatchSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `GeoMatchSetSummary' objects in the response.
-spec list_geo_match_sets(aws_client:aws_client(), list_geo_match_sets_request()) ->
    {ok, list_geo_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_geo_match_sets_errors(), tuple()}.
list_geo_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_geo_match_sets(Client, Input, []).

-spec list_geo_match_sets(aws_client:aws_client(), list_geo_match_sets_request(), proplists:proplist()) ->
    {ok, list_geo_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_geo_match_sets_errors(), tuple()}.
list_geo_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGeoMatchSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `IPSetSummary' objects in the response.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `LoggingConfiguration' objects.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RuleSummary' objects.
-spec list_rate_based_rules(aws_client:aws_client(), list_rate_based_rules_request()) ->
    {ok, list_rate_based_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rate_based_rules_errors(), tuple()}.
list_rate_based_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rate_based_rules(Client, Input, []).

-spec list_rate_based_rules(aws_client:aws_client(), list_rate_based_rules_request(), proplists:proplist()) ->
    {ok, list_rate_based_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rate_based_rules_errors(), tuple()}.
list_rate_based_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRateBasedRules">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RegexMatchSetSummary' objects.
-spec list_regex_match_sets(aws_client:aws_client(), list_regex_match_sets_request()) ->
    {ok, list_regex_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_regex_match_sets_errors(), tuple()}.
list_regex_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_match_sets(Client, Input, []).

-spec list_regex_match_sets(aws_client:aws_client(), list_regex_match_sets_request(), proplists:proplist()) ->
    {ok, list_regex_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_regex_match_sets_errors(), tuple()}.
list_regex_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexMatchSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RegexPatternSetSummary' objects.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RuleGroup' objects.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RuleSummary' objects.
-spec list_rules(aws_client:aws_client(), list_rules_request()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).

-spec list_rules(aws_client:aws_client(), list_rules_request(), proplists:proplist()) ->
    {ok, list_rules_response(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `SizeConstraintSetSummary' objects.
-spec list_size_constraint_sets(aws_client:aws_client(), list_size_constraint_sets_request()) ->
    {ok, list_size_constraint_sets_response(), tuple()} |
    {error, any()} |
    {error, list_size_constraint_sets_errors(), tuple()}.
list_size_constraint_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_size_constraint_sets(Client, Input, []).

-spec list_size_constraint_sets(aws_client:aws_client(), list_size_constraint_sets_request(), proplists:proplist()) ->
    {ok, list_size_constraint_sets_response(), tuple()} |
    {error, any()} |
    {error, list_size_constraint_sets_errors(), tuple()}.
list_size_constraint_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSizeConstraintSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `SqlInjectionMatchSet' objects.
-spec list_sql_injection_match_sets(aws_client:aws_client(), list_sql_injection_match_sets_request()) ->
    {ok, list_sql_injection_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_sql_injection_match_sets_errors(), tuple()}.
list_sql_injection_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sql_injection_match_sets(Client, Input, []).

-spec list_sql_injection_match_sets(aws_client:aws_client(), list_sql_injection_match_sets_request(), proplists:proplist()) ->
    {ok, list_sql_injection_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_sql_injection_match_sets_errors(), tuple()}.
list_sql_injection_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSqlInjectionMatchSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `RuleGroup' objects that you are subscribed to.
-spec list_subscribed_rule_groups(aws_client:aws_client(), list_subscribed_rule_groups_request()) ->
    {ok, list_subscribed_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_subscribed_rule_groups_errors(), tuple()}.
list_subscribed_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscribed_rule_groups(Client, Input, []).

-spec list_subscribed_rule_groups(aws_client:aws_client(), list_subscribed_rule_groups_request(), proplists:proplist()) ->
    {ok, list_subscribed_rule_groups_response(), tuple()} |
    {error, any()} |
    {error, list_subscribed_rule_groups_errors(), tuple()}.
list_subscribed_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscribedRuleGroups">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Retrieves the tags associated with the specified AWS resource. Tags are
%% key:value pairs that you can use to categorize and manage your resources,
%% for purposes like billing. For example, you might set the tag key to
%% &quot;customer&quot; and the value to the customer name or ID. You can
%% specify one or more tags to add to each AWS resource, up to 50 tags for a
%% resource.
%%
%% Tagging is only available through the API, SDKs, and CLI. You can't
%% manage or view tags through the AWS WAF Classic console. You can tag the
%% AWS resources that you manage through AWS WAF Classic: web ACLs, rule
%% groups, and rules.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `WebACLSummary' objects in the response.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Returns an array of `XssMatchSet' objects.
-spec list_xss_match_sets(aws_client:aws_client(), list_xss_match_sets_request()) ->
    {ok, list_xss_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_xss_match_sets_errors(), tuple()}.
list_xss_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_xss_match_sets(Client, Input, []).

-spec list_xss_match_sets(aws_client:aws_client(), list_xss_match_sets_request(), proplists:proplist()) ->
    {ok, list_xss_match_sets_response(), tuple()} |
    {error, any()} |
    {error, list_xss_match_sets_errors(), tuple()}.
list_xss_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListXssMatchSets">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Associates a `LoggingConfiguration' with a specified web ACL.
%%
%% You can access information about all traffic that AWS WAF inspects using
%% the following
%% steps:
%%
%% Create an Amazon Kinesis Data
%% Firehose.
%%
%% Create the data firehose with a PUT source and in the region that you are
%% operating. However, if you are capturing logs for Amazon CloudFront,
%% always create the firehose in US East (N. Virginia).
%%
%% Do not create the data firehose using a `Kinesis stream' as your
%% source.
%%
%% Associate that firehose to your web ACL using a
%% `PutLoggingConfiguration' request.
%%
%% When you successfully enable logging using a `PutLoggingConfiguration'
%% request, AWS WAF will create a service linked role with the necessary
%% permissions to write logs to the Amazon Kinesis Data Firehose. For more
%% information, see Logging Web ACL Traffic Information:
%% https://docs.aws.amazon.com/waf/latest/developerguide/logging.html in the
%% AWS WAF Developer Guide.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Attaches an IAM policy to the specified resource. The only supported use
%% for this action is to share a RuleGroup across accounts.
%%
%% The `PutPermissionPolicy' is subject to the following restrictions:
%%
%% You can attach only one policy with each `PutPermissionPolicy'
%% request.
%%
%% The policy must include an `Effect', `Action' and `Principal'.
%%
%% `Effect' must specify `Allow'.
%%
%% The `Action' in the policy must be `waf:UpdateWebACL',
%% `waf-regional:UpdateWebACL', `waf:GetRuleGroup' and
%% `waf-regional:GetRuleGroup' . Any extra or wildcard actions in the
%% policy will be rejected.
%%
%% The policy cannot include a `Resource' parameter.
%%
%% The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup
%% must exist in the same region.
%%
%% The user making the request must be the owner of the RuleGroup.
%%
%% Your policy must be composed using IAM Policy version 2012-10-17.
%%
%% For more information, see IAM Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html.
%%
%% An example of a valid policy parameter is shown in the Examples section
%% below.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Associates tags with the specified AWS resource. Tags are key:value pairs
%% that you can use to categorize and manage your resources, for purposes
%% like billing. For example, you might set the tag key to
%% &quot;customer&quot; and the value to the customer name or ID. You can
%% specify one or more tags to add to each AWS resource, up to 50 tags for a
%% resource.
%%
%% Tagging is only available through the API, SDKs, and CLI. You can't
%% manage or view tags through the AWS WAF Classic console. You can use this
%% action to tag the AWS resources that you manage through AWS WAF Classic:
%% web ACLs, rule groups, and rules.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `ByteMatchTuple' objects (filters) in a
%% `ByteMatchSet'. For each `ByteMatchTuple' object,
%% you specify the following values:
%%
%% Whether to insert or delete the object from the array. If you want to
%% change a `ByteMatchSetUpdate' object,
%% you delete the existing object and add a new one.
%%
%% The part of a web request that you want AWS WAF to inspect, such as a
%% query string or the value of the `User-Agent' header.
%%
%% The bytes (typically a string that corresponds with ASCII characters) that
%% you want AWS WAF to look for. For more information, including how you
%% specify
%% the values for the AWS WAF API and the AWS CLI or SDKs, see
%% `TargetString' in the `ByteMatchTuple' data type.
%%
%% Where to look, such as at the beginning or the end of a query string.
%%
%% Whether to perform any conversions on the request, such as converting it
%% to lowercase, before inspecting it for the specified string.
%%
%% For example, you can add a `ByteMatchSetUpdate' object that matches
%% web requests in which `User-Agent' headers contain
%% the string `BadBot'. You can then configure AWS WAF to block those
%% requests.
%%
%% To create and configure a `ByteMatchSet', perform the following steps:
%%
%% Create a `ByteMatchSet.' For more information, see
%% `CreateByteMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateByteMatchSet' request.
%%
%% Submit an `UpdateByteMatchSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the value that you want AWS WAF
%% to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_byte_match_set(aws_client:aws_client(), update_byte_match_set_request()) ->
    {ok, update_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_byte_match_set_errors(), tuple()}.
update_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_byte_match_set(Client, Input, []).

-spec update_byte_match_set(aws_client:aws_client(), update_byte_match_set_request(), proplists:proplist()) ->
    {ok, update_byte_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_byte_match_set_errors(), tuple()}.
update_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateByteMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `GeoMatchConstraint' objects in an
%% `GeoMatchSet'. For each `GeoMatchConstraint' object,
%% you specify the following values:
%%
%% Whether to insert or delete the object from the array. If you want to
%% change an `GeoMatchConstraint' object, you delete the existing object
%% and add a new one.
%%
%% The `Type'. The only valid value for `Type' is `Country'.
%%
%% The `Value', which is a two character code for the country to add to
%% the `GeoMatchConstraint' object. Valid codes are listed in
%% `GeoMatchConstraint$Value'.
%%
%% To create and configure an `GeoMatchSet', perform the following steps:
%%
%% Submit a `CreateGeoMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateGeoMatchSet' request.
%%
%% Submit an `UpdateGeoMatchSet' request to specify the country that you
%% want AWS WAF to watch for.
%%
%% When you update an `GeoMatchSet', you specify the country that you
%% want to add and/or the country that you want to delete.
%% If you want to change a country, you delete the existing country and add
%% the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_geo_match_set(aws_client:aws_client(), update_geo_match_set_request()) ->
    {ok, update_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_geo_match_set_errors(), tuple()}.
update_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_geo_match_set(Client, Input, []).

-spec update_geo_match_set(aws_client:aws_client(), update_geo_match_set_request(), proplists:proplist()) ->
    {ok, update_geo_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_geo_match_set_errors(), tuple()}.
update_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGeoMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `IPSetDescriptor' objects in an
%% `IPSet'. For each `IPSetDescriptor' object, you specify the
%% following
%% values:
%%
%% Whether to insert or delete the object from the array. If you want to
%% change an
%% `IPSetDescriptor' object, you delete the existing object and add a new
%% one.
%%
%% The IP address version, `IPv4' or `IPv6'.
%%
%% The IP address in CIDR notation, for example, `192.0.2.0/24' (for
%% the range of IP addresses from `192.0.2.0' to `192.0.2.255') or
%% `192.0.2.44/32' (for the individual IP address
%% `192.0.2.44').
%%
%% AWS WAF supports IPv4 address ranges: /8 and any range between /16 through
%% /32. AWS
%% WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128. For
%% more
%% information about CIDR notation, see the Wikipedia entry Classless
%% Inter-Domain Routing:
%% https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.
%%
%% IPv6 addresses can be represented using any of the following formats:
%%
%% 1111:0000:0000:0000:0000:0000:0000:0111/128
%%
%% 1111:0:0:0:0:0:0:0111/128
%%
%% 1111::0111/128
%%
%% 1111::111/128
%%
%% You use an `IPSet' to specify which web requests you want to allow or
%% block based on the IP addresses that the requests originated from. For
%% example, if you're
%% receiving a lot of requests from one or a small number of IP addresses and
%% you want to
%% block the requests, you can create an `IPSet' that specifies those IP
%% addresses,
%% and then configure AWS WAF to block the requests.
%%
%% To create and configure an `IPSet', perform the following steps:
%%
%% Submit a `CreateIPSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide
%% in the `ChangeToken' parameter of an `UpdateIPSet'
%% request.
%%
%% Submit an `UpdateIPSet' request to specify the IP addresses that you
%% want AWS WAF to watch for.
%%
%% When you update an `IPSet', you specify the IP addresses that you want
%% to
%% add and/or the IP addresses that you want to delete. If you want to change
%% an IP address,
%% you delete the existing IP address and add the new one.
%%
%% You can insert a maximum of 1000 addresses in a single
%% request.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP
%% requests, see the AWS WAF
%% Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `Predicate' objects in a rule and updates the
%% `RateLimit' in the rule.
%%
%% Each `Predicate' object identifies a predicate, such as a
%% `ByteMatchSet' or an `IPSet', that specifies the web requests
%% that you want to block or count. The `RateLimit' specifies the number
%% of
%% requests every five minutes that triggers the rule.
%%
%% If you add more than one predicate to a `RateBasedRule', a request
%% must
%% match all the predicates and exceed the `RateLimit' to be counted or
%% blocked.
%% For example, suppose you add the following to a `RateBasedRule':
%%
%% An `IPSet' that matches the IP address `192.0.2.44/32'
%%
%% A `ByteMatchSet' that matches `BadBot' in the
%% `User-Agent' header
%%
%% Further, you specify a
%% `RateLimit' of 1,000.
%%
%% You then add the `RateBasedRule' to a `WebACL' and specify that
%% you want to block requests that satisfy the rule. For a request to be
%% blocked, it must come
%% from the IP address 192.0.2.44 and the `User-Agent' header
%% in the request must contain the value `BadBot'. Further, requests that
%% match
%% these two conditions much be received at a rate of more than 1,000 every
%% five minutes. If
%% the rate drops below this limit, AWS WAF no longer blocks the requests.
%%
%% As a second example, suppose you want to limit requests to a particular
%% page on your site. To do this, you could add the following to a
%% `RateBasedRule':
%%
%% A `ByteMatchSet' with `FieldToMatch' of `URI'
%%
%% A `PositionalConstraint' of `STARTS_WITH'
%%
%% A `TargetString' of `login'
%%
%% Further, you specify a `RateLimit' of 1,000.
%%
%% By adding this `RateBasedRule' to a `WebACL', you could limit
%% requests to your login page without affecting the rest of your site.
-spec update_rate_based_rule(aws_client:aws_client(), update_rate_based_rule_request()) ->
    {ok, update_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rate_based_rule_errors(), tuple()}.
update_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rate_based_rule(Client, Input, []).

-spec update_rate_based_rule(aws_client:aws_client(), update_rate_based_rule_request(), proplists:proplist()) ->
    {ok, update_rate_based_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rate_based_rule_errors(), tuple()}.
update_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRateBasedRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `RegexMatchTuple' objects (filters) in a
%% `RegexMatchSet'. For each `RegexMatchSetUpdate' object,
%% you specify the following values:
%%
%% Whether to insert or delete the object from the array. If you want to
%% change a `RegexMatchSetUpdate' object,
%% you delete the existing object and add a new one.
%%
%% The part of a web request that you want AWS WAF to inspectupdate, such as
%% a query string or the value of the `User-Agent' header.
%%
%% The identifier of the pattern (a regular expression) that you want AWS WAF
%% to look for. For more information, see `RegexPatternSet'.
%%
%% Whether to perform any conversions on the request, such as converting it
%% to lowercase, before inspecting it for the specified string.
%%
%% For example, you can create a `RegexPatternSet' that matches any
%% requests with `User-Agent' headers
%% that contain the string `B[a@]dB[o0]t'. You can then configure AWS WAF
%% to reject those requests.
%%
%% To create and configure a `RegexMatchSet', perform the following
%% steps:
%%
%% Create a `RegexMatchSet.' For more information, see
%% `CreateRegexMatchSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRegexMatchSet' request.
%%
%% Submit an `UpdateRegexMatchSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the identifier of the
%% `RegexPatternSet' that contain the regular expression patters you want
%% AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_regex_match_set(aws_client:aws_client(), update_regex_match_set_request()) ->
    {ok, update_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_regex_match_set_errors(), tuple()}.
update_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_match_set(Client, Input, []).

-spec update_regex_match_set(aws_client:aws_client(), update_regex_match_set_request(), proplists:proplist()) ->
    {ok, update_regex_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_regex_match_set_errors(), tuple()}.
update_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `RegexPatternString' objects in a
%% `RegexPatternSet'. For each `RegexPatternString' object,
%% you specify the following values:
%%
%% Whether to insert or delete the `RegexPatternString'.
%%
%% The regular expression pattern that you want to insert or delete. For more
%% information, see `RegexPatternSet'.
%%
%% For example, you can create a `RegexPatternString' such as
%% `B[a@]dB[o0]t'. AWS WAF will match this `RegexPatternString' to:
%%
%% BadBot
%%
%% BadB0t
%%
%% B@dBot
%%
%% B@dB0t
%%
%% To create and configure a `RegexPatternSet', perform the following
%% steps:
%%
%% Create a `RegexPatternSet.' For more information, see
%% `CreateRegexPatternSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRegexPatternSet' request.
%%
%% Submit an `UpdateRegexPatternSet' request to specify the regular
%% expression pattern that you want AWS WAF to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `Predicate' objects in a `Rule'. Each
%% `Predicate' object identifies a predicate, such as a
%% `ByteMatchSet' or an `IPSet', that specifies the web requests
%% that you want to allow, block, or count. If you add more than one
%% predicate to a
%% `Rule', a request must match all of the specifications to be allowed,
%% blocked, or counted. For example, suppose
%% that
%% you add the following to a `Rule':
%%
%% A `ByteMatchSet' that matches the value `BadBot' in the
%% `User-Agent' header
%%
%% An `IPSet' that matches the IP address `192.0.2.44'
%%
%% You then add the `Rule' to a `WebACL' and specify that you want to
%% block requests that satisfy the `Rule'.
%% For a request to be blocked, the `User-Agent' header in the request
%% must contain the value `BadBot'
%% and the request must originate from the IP address 192.0.2.44.
%%
%% To create and configure a `Rule', perform the following steps:
%%
%% Create and update the predicates that you want to include in the
%% `Rule'.
%%
%% Create the `Rule'. See `CreateRule'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRule' request.
%%
%% Submit an `UpdateRule' request to add predicates to the `Rule'.
%%
%% Create and update a `WebACL' that contains the `Rule'. See
%% `CreateWebACL'.
%%
%% If you want to replace one `ByteMatchSet' or `IPSet' with another,
%% you delete the existing one and
%% add the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_rule(aws_client:aws_client(), update_rule_request()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule(Client, Input, []).

-spec update_rule(aws_client:aws_client(), update_rule_request(), proplists:proplist()) ->
    {ok, update_rule_response(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRule">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `ActivatedRule' objects in a `RuleGroup'.
%%
%% You can only insert `REGULAR' rules into a rule group.
%%
%% You can have a maximum of ten rules per rule group.
%%
%% To create and configure a `RuleGroup', perform the following steps:
%%
%% Create and update the `Rules' that you want to include in the
%% `RuleGroup'. See `CreateRule'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateRuleGroup' request.
%%
%% Submit an `UpdateRuleGroup' request to add `Rules' to the
%% `RuleGroup'.
%%
%% Create and update a `WebACL' that contains the `RuleGroup'. See
%% `CreateWebACL'.
%%
%% If you want to replace one `Rule' with another, you delete the
%% existing one and
%% add the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `SizeConstraint' objects (filters) in a
%% `SizeConstraintSet'. For each `SizeConstraint' object,
%% you specify the following values:
%%
%% Whether to insert or delete the object from the array. If you want to
%% change a `SizeConstraintSetUpdate' object,
%% you delete the existing object and add a new one.
%%
%% The part of a web request that you want AWS WAF to evaluate, such as the
%% length of a query string or the length of the
%% `User-Agent' header.
%%
%% Whether to perform any transformations on the request, such as converting
%% it to lowercase, before checking its length.
%% Note that transformations of the request body are not supported because
%% the AWS resource forwards only the first `8192' bytes
%% of your request to AWS WAF.
%%
%% You can only specify a single type of TextTransformation.
%%
%% A `ComparisonOperator' used for evaluating the selected part of the
%% request against the specified `Size', such as
%% equals, greater than, less than, and so on.
%%
%% The length, in bytes, that you want AWS WAF to watch for in selected part
%% of the request. The length is computed after applying the transformation.
%%
%% For example, you can add a `SizeConstraintSetUpdate' object that
%% matches web requests in which the length of the
%% `User-Agent' header is greater than 100 bytes. You can then configure
%% AWS WAF to block those requests.
%%
%% To create and configure a `SizeConstraintSet', perform the following
%% steps:
%%
%% Create a `SizeConstraintSet.' For more information, see
%% `CreateSizeConstraintSet'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateSizeConstraintSet' request.
%%
%% Submit an `UpdateSizeConstraintSet' request to specify the part of the
%% request that you want AWS WAF to inspect
%% (for example, the header or the URI) and the value that you want AWS WAF
%% to watch for.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_size_constraint_set(aws_client:aws_client(), update_size_constraint_set_request()) ->
    {ok, update_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, update_size_constraint_set_errors(), tuple()}.
update_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_size_constraint_set(Client, Input, []).

-spec update_size_constraint_set(aws_client:aws_client(), update_size_constraint_set_request(), proplists:proplist()) ->
    {ok, update_size_constraint_set_response(), tuple()} |
    {error, any()} |
    {error, update_size_constraint_set_errors(), tuple()}.
update_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSizeConstraintSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `SqlInjectionMatchTuple' objects (filters) in a
%% `SqlInjectionMatchSet'.
%% For each `SqlInjectionMatchTuple' object, you specify the following
%% values:
%%
%% `Action': Whether to insert the object into or delete the object from
%% the array. To change a
%% `SqlInjectionMatchTuple', you delete the existing object and add a new
%% one.
%%
%% `FieldToMatch': The part of web requests that you want AWS WAF to
%% inspect and, if you want AWS WAF to inspect a header or custom query
%% parameter,
%% the name of the header or parameter.
%%
%% `TextTransformation': Which text transformation, if any, to perform on
%% the web request before
%% inspecting the request for snippets of malicious SQL code.
%%
%% You can only specify a single type of TextTransformation.
%%
%% You use `SqlInjectionMatchSet' objects to specify which CloudFront
%% requests that
%% you want to allow, block, or count. For example, if you're receiving
%% requests that contain snippets of SQL code in the query string and you
%% want to block the
%% requests, you can create a `SqlInjectionMatchSet' with the applicable
%% settings,
%% and then configure AWS WAF to block the requests.
%%
%% To create and configure a `SqlInjectionMatchSet', perform the
%% following steps:
%%
%% Submit a `CreateSqlInjectionMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateIPSet' request.
%%
%% Submit an `UpdateSqlInjectionMatchSet' request to specify the parts of
%% web requests that you want AWS WAF to
%% inspect for snippets of SQL code.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_sql_injection_match_set(aws_client:aws_client(), update_sql_injection_match_set_request()) ->
    {ok, update_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_sql_injection_match_set_errors(), tuple()}.
update_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sql_injection_match_set(Client, Input, []).

-spec update_sql_injection_match_set(aws_client:aws_client(), update_sql_injection_match_set_request(), proplists:proplist()) ->
    {ok, update_sql_injection_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_sql_injection_match_set_errors(), tuple()}.
update_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSqlInjectionMatchSet">>, Input, Options).

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `ActivatedRule' objects in a `WebACL'. Each
%% `Rule' identifies
%% web requests that you want to allow, block, or count. When you update a
%% `WebACL', you specify the following values:
%%
%% A default action for the `WebACL', either `ALLOW' or `BLOCK'.
%% AWS WAF performs the default action if a request doesn't match the
%% criteria in any of the `Rules' in a `WebACL'.
%%
%% The `Rules' that you want to add
%% or
%% delete. If you want to replace one `Rule' with another, you delete the
%% existing `Rule' and add the new one.
%%
%% For each `Rule', whether you want AWS WAF to allow requests, block
%% requests, or count requests that match
%% the conditions in the `Rule'.
%%
%% The order in which you want AWS WAF to evaluate the `Rules' in a
%% `WebACL'. If you add more than one `Rule' to a
%% `WebACL', AWS WAF evaluates each request against the `Rules'
%% in order based on the value of `Priority'. (The `Rule' that has
%% the lowest value for `Priority' is evaluated first.) When a web
%% request
%% matches all
%% the
%% predicates (such as `ByteMatchSets' and `IPSets') in a
%% `Rule', AWS WAF immediately takes the corresponding action, allow or
%% block, and doesn't evaluate the request against the remaining
%% `Rules' in
%% the `WebACL', if any.
%%
%% To create and configure a `WebACL', perform the following steps:
%%
%% Create and update the predicates that you want to include in `Rules'.
%% For more information, see `CreateByteMatchSet',
%% `UpdateByteMatchSet', `CreateIPSet', `UpdateIPSet',
%% `CreateSqlInjectionMatchSet', and `UpdateSqlInjectionMatchSet'.
%%
%% Create and update the `Rules' that you want to include in the
%% `WebACL'. For more information, see
%% `CreateRule' and `UpdateRule'.
%%
%% Create a `WebACL'. See `CreateWebACL'.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateWebACL' request.
%%
%% Submit an `UpdateWebACL' request to specify the `Rules'
%% that you want to include in the `WebACL', to specify the default
%% action,
%% and to associate the `WebACL' with a CloudFront distribution.
%%
%% The `ActivatedRule' can be a rule group. If you specify a rule group
%% as your
%% `ActivatedRule'
%% ,
%% you can exclude specific rules from that rule group.
%%
%% If you already have a rule group associated with a web ACL and want to
%% submit
%% an `UpdateWebACL' request to exclude certain rules from that rule
%% group,
%% you must first remove the rule group from the web ACL, the re-insert it
%% again,
%% specifying the excluded rules.
%% For details,
%% see
%% `ActivatedRule$ExcludedRules'
%% .
%%
%% Be aware that if you try to add a RATE_BASED rule to a web ACL without
%% setting the rule type when first creating the rule, the `UpdateWebACL'
%% request will fail because the request tries to add a REGULAR rule (the
%% default rule type) with the specified ID, which does not exist.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
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

%% @doc
%% This is AWS WAF Classic documentation.
%%
%% For
%% more information, see AWS
%% WAF Classic:
%% https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html
%% in the developer guide.
%%
%% For the latest version of AWS
%% WAF, use the AWS WAFV2 API and see the AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
%% With the latest version, AWS WAF has a single set of endpoints for
%% regional and global use.
%%
%% Inserts or deletes `XssMatchTuple' objects (filters) in an
%% `XssMatchSet'.
%% For each `XssMatchTuple' object, you specify the following values:
%%
%% `Action': Whether to insert the object into or delete the object from
%% the
%% array. To change an
%% `XssMatchTuple', you delete the existing object and add a new
%% one.
%%
%% `FieldToMatch': The part of web requests that you want AWS WAF to
%% inspect and, if you want AWS WAF to inspect a header or custom query
%% parameter,
%% the name of the header or parameter.
%%
%% `TextTransformation': Which text transformation, if any, to perform on
%% the web request before
%% inspecting the request for cross-site scripting attacks.
%%
%% You can only specify a single type of TextTransformation.
%%
%% You use `XssMatchSet' objects to specify which CloudFront requests
%% that
%% you want to allow, block, or count. For example, if you're receiving
%% requests that contain cross-site scripting attacks in the request body and
%% you want to
%% block the requests, you can create an `XssMatchSet' with the
%% applicable
%% settings, and then configure AWS WAF to block the requests.
%%
%% To create and configure an `XssMatchSet', perform the following steps:
%%
%% Submit a `CreateXssMatchSet' request.
%%
%% Use `GetChangeToken' to get the change token that you provide in the
%% `ChangeToken' parameter of an
%% `UpdateIPSet' request.
%%
%% Submit an `UpdateXssMatchSet' request to specify the parts of web
%% requests that you want AWS WAF to
%% inspect for cross-site scripting attacks.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the
%% AWS WAF Developer Guide:
%% https://docs.aws.amazon.com/waf/latest/developerguide/.
-spec update_xss_match_set(aws_client:aws_client(), update_xss_match_set_request()) ->
    {ok, update_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_xss_match_set_errors(), tuple()}.
update_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_xss_match_set(Client, Input, []).

-spec update_xss_match_set(aws_client:aws_client(), update_xss_match_set_request(), proplists:proplist()) ->
    {ok, update_xss_match_set_response(), tuple()} |
    {error, any()} |
    {error, update_xss_match_set_errors(), tuple()}.
update_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateXssMatchSet">>, Input, Options).

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
    Client1 = Client#{service => <<"waf">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"waf">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSWAF_20150824.", Action/binary>>}
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
