%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> This is the <i>AWS WAF Classic API Reference</i> for using AWS WAF
%% Classic with Amazon CloudFront. The AWS WAF Classic actions and data types
%% listed in the reference are available for protecting Amazon CloudFront
%% distributions. You can use these actions and data types via the endpoint
%% <i>waf.amazonaws.com</i>. This guide is for developers who need detailed
%% information about the AWS WAF Classic API actions, data types, and errors.
%% For detailed information about AWS WAF Classic features and an overview of
%% how to use the AWS WAF Classic API, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
-module(aws_waf).

-export([create_byte_match_set/2,
         create_byte_match_set/3,
         create_geo_match_set/2,
         create_geo_match_set/3,
         create_i_p_set/2,
         create_i_p_set/3,
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
         create_web_a_c_l/2,
         create_web_a_c_l/3,
         create_web_a_c_l_migration_stack/2,
         create_web_a_c_l_migration_stack/3,
         create_xss_match_set/2,
         create_xss_match_set/3,
         delete_byte_match_set/2,
         delete_byte_match_set/3,
         delete_geo_match_set/2,
         delete_geo_match_set/3,
         delete_i_p_set/2,
         delete_i_p_set/3,
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
         delete_web_a_c_l/2,
         delete_web_a_c_l/3,
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
         get_i_p_set/2,
         get_i_p_set/3,
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
         get_web_a_c_l/2,
         get_web_a_c_l/3,
         get_xss_match_set/2,
         get_xss_match_set/3,
         list_activated_rules_in_rule_group/2,
         list_activated_rules_in_rule_group/3,
         list_byte_match_sets/2,
         list_byte_match_sets/3,
         list_geo_match_sets/2,
         list_geo_match_sets/3,
         list_i_p_sets/2,
         list_i_p_sets/3,
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
         list_web_a_c_ls/2,
         list_web_a_c_ls/3,
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
         update_i_p_set/2,
         update_i_p_set/3,
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
         update_web_a_c_l/2,
         update_web_a_c_l/3,
         update_xss_match_set/2,
         update_xss_match_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>ByteMatchSet</code>. You then use
%% <a>UpdateByteMatchSet</a> to identify the part of a web request that you
%% want AWS WAF to inspect, such as the values of the <code>User-Agent</code>
%% header or the query string. For example, you can create a
%% <code>ByteMatchSet</code> that matches any requests with
%% <code>User-Agent</code> headers that contain the string
%% <code>BadBot</code>. You can then configure AWS WAF to reject those
%% requests.
%%
%% To create and configure a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateByteMatchSet</code> request.
%%
%% </li> <li> Submit a <code>CreateByteMatchSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateByteMatchSet</code> request.
%%
%% </li> <li> Submit an <a>UpdateByteMatchSet</a> request to specify the part
%% of the request that you want AWS WAF to inspect (for example, the header
%% or the URI) and the value that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_byte_match_set(Client, Input, []).
create_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateByteMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates an <a>GeoMatchSet</a>, which you use to specify which web
%% requests you want to allow or block based on the country that the requests
%% originate from. For example, if you're receiving a lot of requests from
%% one or more countries and you want to block the requests, you can create
%% an <code>GeoMatchSet</code> that contains those countries and then
%% configure AWS WAF to block the requests.
%%
%% To create and configure a <code>GeoMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateGeoMatchSet</code> request.
%%
%% </li> <li> Submit a <code>CreateGeoMatchSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateGeoMatchSet</a> request.
%%
%% </li> <li> Submit an <code>UpdateGeoMatchSetSet</code> request to specify
%% the countries that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_geo_match_set(Client, Input, []).
create_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGeoMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates an <a>IPSet</a>, which you use to specify which web
%% requests that you want to allow or block based on the IP addresses that
%% the requests originate from. For example, if you're receiving a lot of
%% requests from one or more individual IP addresses or one or more ranges of
%% IP addresses and you want to block the requests, you can create an
%% <code>IPSet</code> that contains those IP addresses and then configure AWS
%% WAF to block the requests.
%%
%% To create and configure an <code>IPSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateIPSet</code> request.
%%
%% </li> <li> Submit a <code>CreateIPSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateIPSet</a> request.
%%
%% </li> <li> Submit an <code>UpdateIPSet</code> request to specify the IP
%% addresses that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_i_p_set(Client, Input, []).
create_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIPSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <a>RateBasedRule</a>. The <code>RateBasedRule</code>
%% contains a <code>RateLimit</code>, which specifies the maximum number of
%% requests that AWS WAF allows from a specified IP address in a five-minute
%% period. The <code>RateBasedRule</code> also contains the
%% <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other
%% predicates that identify the requests that you want to count or block if
%% these requests exceed the <code>RateLimit</code>.
%%
%% If you add more than one predicate to a <code>RateBasedRule</code>, a
%% request not only must exceed the <code>RateLimit</code>, but it also must
%% match all the conditions to be counted or blocked. For example, suppose
%% you add the following to a <code>RateBasedRule</code>:
%%
%% <ul> <li> An <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44/32</code>
%%
%% </li> <li> A <code>ByteMatchSet</code> that matches <code>BadBot</code> in
%% the <code>User-Agent</code> header
%%
%% </li> </ul> Further, you specify a <code>RateLimit</code> of 1,000.
%%
%% You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and
%% specify that you want to block requests that meet the conditions in the
%% rule. For a request to be blocked, it must come from the IP address
%% 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request
%% must contain the value <code>BadBot</code>. Further, requests that match
%% these two conditions must be received at a rate of more than 1,000
%% requests every five minutes. If both conditions are met and the rate is
%% exceeded, AWS WAF blocks the requests. If the rate drops below 1,000 for a
%% five-minute period, AWS WAF no longer blocks the requests.
%%
%% As a second example, suppose you want to limit requests to a particular
%% page on your site. To do this, you could add the following to a
%% <code>RateBasedRule</code>:
%%
%% <ul> <li> A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of
%% <code>URI</code>
%%
%% </li> <li> A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
%%
%% </li> <li> A <code>TargetString</code> of <code>login</code>
%%
%% </li> </ul> Further, you specify a <code>RateLimit</code> of 1,000.
%%
%% By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you
%% could limit requests to your login page without affecting the rest of your
%% site.
%%
%% To create and configure a <code>RateBasedRule</code>, perform the
%% following steps:
%%
%% <ol> <li> Create and update the predicates that you want to include in the
%% rule. For more information, see <a>CreateByteMatchSet</a>,
%% <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateRule</code> request.
%%
%% </li> <li> Submit a <code>CreateRateBasedRule</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateRule</a> request.
%%
%% </li> <li> Submit an <code>UpdateRateBasedRule</code> request to specify
%% the predicates that you want to include in the rule.
%%
%% </li> <li> Create and update a <code>WebACL</code> that contains the
%% <code>RateBasedRule</code>. For more information, see <a>CreateWebACL</a>.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rate_based_rule(Client, Input, []).
create_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRateBasedRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <a>RegexMatchSet</a>. You then use
%% <a>UpdateRegexMatchSet</a> to identify the part of a web request that you
%% want AWS WAF to inspect, such as the values of the <code>User-Agent</code>
%% header or the query string. For example, you can create a
%% <code>RegexMatchSet</code> that contains a <code>RegexMatchTuple</code>
%% that looks for any requests with <code>User-Agent</code> headers that
%% match a <code>RegexPatternSet</code> with pattern
%% <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those
%% requests.
%%
%% To create and configure a <code>RegexMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateRegexMatchSet</code> request.
%%
%% </li> <li> Submit a <code>CreateRegexMatchSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateRegexMatchSet</code> request.
%%
%% </li> <li> Submit an <a>UpdateRegexMatchSet</a> request to specify the
%% part of the request that you want AWS WAF to inspect (for example, the
%% header or the URI) and the value, using a <code>RegexPatternSet</code>,
%% that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_match_set(Client, Input, []).
create_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>RegexPatternSet</code>. You then use
%% <a>UpdateRegexPatternSet</a> to specify the regular expression (regex)
%% pattern that you want AWS WAF to search for, such as
%% <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those
%% requests.
%%
%% To create and configure a <code>RegexPatternSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateRegexPatternSet</code> request.
%%
%% </li> <li> Submit a <code>CreateRegexPatternSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateRegexPatternSet</code> request.
%%
%% </li> <li> Submit an <a>UpdateRegexPatternSet</a> request to specify the
%% string that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_regex_pattern_set(Client, Input, []).
create_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRegexPatternSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>Rule</code>, which contains the <code>IPSet</code>
%% objects, <code>ByteMatchSet</code> objects, and other predicates that
%% identify the requests that you want to block. If you add more than one
%% predicate to a <code>Rule</code>, a request must match all of the
%% specifications to be allowed or blocked. For example, suppose that you add
%% the following to a <code>Rule</code>:
%%
%% <ul> <li> An <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44/32</code>
%%
%% </li> <li> A <code>ByteMatchSet</code> that matches <code>BadBot</code> in
%% the <code>User-Agent</code> header
%%
%% </li> </ul> You then add the <code>Rule</code> to a <code>WebACL</code>
%% and specify that you want to blocks requests that satisfy the
%% <code>Rule</code>. For a request to be blocked, it must come from the IP
%% address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the
%% request must contain the value <code>BadBot</code>.
%%
%% To create and configure a <code>Rule</code>, perform the following steps:
%%
%% <ol> <li> Create and update the predicates that you want to include in the
%% <code>Rule</code>. For more information, see <a>CreateByteMatchSet</a>,
%% <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateRule</code> request.
%%
%% </li> <li> Submit a <code>CreateRule</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateRule</a> request.
%%
%% </li> <li> Submit an <code>UpdateRule</code> request to specify the
%% predicates that you want to include in the <code>Rule</code>.
%%
%% </li> <li> Create and update a <code>WebACL</code> that contains the
%% <code>Rule</code>. For more information, see <a>CreateWebACL</a>.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>RuleGroup</code>. A rule group is a collection of
%% predefined rules that you add to a web ACL. You use <a>UpdateRuleGroup</a>
%% to add rules to the rule group.
%%
%% Rule groups are subject to the following limits:
%%
%% <ul> <li> Three rule groups per account. You can request an increase to
%% this limit by contacting customer support.
%%
%% </li> <li> One rule group per web ACL.
%%
%% </li> <li> Ten rules per rule group.
%%
%% </li> </ul> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_group(Client, Input, []).
create_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleGroup">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>SizeConstraintSet</code>. You then use
%% <a>UpdateSizeConstraintSet</a> to identify the part of a web request that
%% you want AWS WAF to check for length, such as the length of the
%% <code>User-Agent</code> header or the length of the query string. For
%% example, you can create a <code>SizeConstraintSet</code> that matches any
%% requests that have a query string that is longer than 100 bytes. You can
%% then configure AWS WAF to reject those requests.
%%
%% To create and configure a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateSizeConstraintSet</code> request.
%%
%% </li> <li> Submit a <code>CreateSizeConstraintSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateSizeConstraintSet</code> request.
%%
%% </li> <li> Submit an <a>UpdateSizeConstraintSet</a> request to specify the
%% part of the request that you want AWS WAF to inspect (for example, the
%% header or the URI) and the value that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_size_constraint_set(Client, Input, []).
create_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSizeConstraintSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <a>SqlInjectionMatchSet</a>, which you use to allow,
%% block, or count requests that contain snippets of SQL code in a specified
%% part of web requests. AWS WAF searches for character sequences that are
%% likely to be malicious strings.
%%
%% To create and configure a <code>SqlInjectionMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateSqlInjectionMatchSet</code> request.
%%
%% </li> <li> Submit a <code>CreateSqlInjectionMatchSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateSqlInjectionMatchSet</a> request.
%%
%% </li> <li> Submit an <a>UpdateSqlInjectionMatchSet</a> request to specify
%% the parts of web requests in which you want to allow, block, or count
%% malicious SQL code.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sql_injection_match_set(Client, Input, []).
create_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSqlInjectionMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates a <code>WebACL</code>, which contains the
%% <code>Rules</code> that identify the CloudFront web requests that you want
%% to allow, block, or count. AWS WAF evaluates <code>Rules</code> in order
%% based on the value of <code>Priority</code> for each <code>Rule</code>.
%%
%% You also specify a default action, either <code>ALLOW</code> or
%% <code>BLOCK</code>. If a web request doesn't match any of the
%% <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the
%% request with the default action.
%%
%% To create and configure a <code>WebACL</code>, perform the following
%% steps:
%%
%% <ol> <li> Create and update the <code>ByteMatchSet</code> objects and
%% other predicates that you want to include in <code>Rules</code>. For more
%% information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>,
%% <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>,
%% and <a>UpdateSqlInjectionMatchSet</a>.
%%
%% </li> <li> Create and update the <code>Rules</code> that you want to
%% include in the <code>WebACL</code>. For more information, see
%% <a>CreateRule</a> and <a>UpdateRule</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateWebACL</code> request.
%%
%% </li> <li> Submit a <code>CreateWebACL</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateWebACL</a> request.
%%
%% </li> <li> Submit an <a>UpdateWebACL</a> request to specify the
%% <code>Rules</code> that you want to include in the <code>WebACL</code>, to
%% specify the default action, and to associate the <code>WebACL</code> with
%% a CloudFront distribution.
%%
%% </li> </ol> For more information about how to use the AWS WAF API, see the
%% <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_a_c_l(Client, Input, []).
create_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACL">>, Input, Options).

%% @doc Creates an AWS CloudFormation WAFV2 template for the specified web
%% ACL in the specified Amazon S3 bucket. Then, in CloudFormation, you create
%% a stack from the template, to create the web ACL and its resources in AWS
%% WAFV2. Use this to migrate your AWS WAF Classic web ACL to the latest
%% version of AWS WAF.
%%
%% This is part of a larger migration procedure for web ACLs from AWS WAF
%% Classic to the latest version of AWS WAF. For the full procedure,
%% including caveats and manual steps to complete the migration and switch
%% over to the new web ACL, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html">Migrating
%% your AWS WAF Classic resources to AWS WAF</a> in the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>.
create_web_a_c_l_migration_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_a_c_l_migration_stack(Client, Input, []).
create_web_a_c_l_migration_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACLMigrationStack">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Creates an <a>XssMatchSet</a>, which you use to allow, block, or
%% count requests that contain cross-site scripting attacks in the specified
%% part of web requests. AWS WAF searches for character sequences that are
%% likely to be malicious strings.
%%
%% To create and configure an <code>XssMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateXssMatchSet</code> request.
%%
%% </li> <li> Submit a <code>CreateXssMatchSet</code> request.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateXssMatchSet</a> request.
%%
%% </li> <li> Submit an <a>UpdateXssMatchSet</a> request to specify the parts
%% of web requests in which you want to allow, block, or count cross-site
%% scripting attacks.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_xss_match_set(Client, Input, []).
create_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateXssMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>ByteMatchSet</a>. You can't delete a
%% <code>ByteMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still includes any <a>ByteMatchTuple</a> objects (any filters).
%%
%% If you just want to remove a <code>ByteMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Update the <code>ByteMatchSet</code> to remove filters, if any.
%% For more information, see <a>UpdateByteMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteByteMatchSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteByteMatchSet</code> request.
%%
%% </li> </ol>
delete_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_byte_match_set(Client, Input, []).
delete_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteByteMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>GeoMatchSet</a>. You can't delete a
%% <code>GeoMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still includes any countries.
%%
%% If you just want to remove a <code>GeoMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>GeoMatchSet</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li> Update the <code>GeoMatchSet</code> to remove any countries. For
%% more information, see <a>UpdateGeoMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteGeoMatchSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteGeoMatchSet</code> request.
%%
%% </li> </ol>
delete_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_geo_match_set(Client, Input, []).
delete_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGeoMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes an <a>IPSet</a>. You can't delete an
%% <code>IPSet</code> if it's still used in any <code>Rules</code> or if it
%% still includes any IP addresses.
%%
%% If you just want to remove an <code>IPSet</code> from a <code>Rule</code>,
%% use <a>UpdateRule</a>.
%%
%% To permanently delete an <code>IPSet</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li> Update the <code>IPSet</code> to remove IP address ranges, if
%% any. For more information, see <a>UpdateIPSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteIPSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteIPSet</code> request.
%%
%% </li> </ol>
delete_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_i_p_set(Client, Input, []).
delete_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIPSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes the <a>LoggingConfiguration</a> from the
%% specified web ACL.
delete_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_logging_configuration(Client, Input, []).
delete_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoggingConfiguration">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes an IAM policy from the specified RuleGroup.
%%
%% The user making the request must be the owner of the RuleGroup.
delete_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission_policy(Client, Input, []).
delete_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermissionPolicy">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>RateBasedRule</a>. You can't delete a
%% rule if it's still used in any <code>WebACL</code> objects or if it still
%% includes any predicates, such as <code>ByteMatchSet</code> objects.
%%
%% If you just want to remove a rule from a <code>WebACL</code>, use
%% <a>UpdateWebACL</a>.
%%
%% To permanently delete a <code>RateBasedRule</code> from AWS WAF, perform
%% the following steps:
%%
%% <ol> <li> Update the <code>RateBasedRule</code> to remove predicates, if
%% any. For more information, see <a>UpdateRateBasedRule</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteRateBasedRule</code> request.
%%
%% </li> <li> Submit a <code>DeleteRateBasedRule</code> request.
%%
%% </li> </ol>
delete_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rate_based_rule(Client, Input, []).
delete_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRateBasedRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>RegexMatchSet</a>. You can't delete a
%% <code>RegexMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still includes any <code>RegexMatchTuples</code> objects (any
%% filters).
%%
%% If you just want to remove a <code>RegexMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>RegexMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Update the <code>RegexMatchSet</code> to remove filters, if any.
%% For more information, see <a>UpdateRegexMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteRegexMatchSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteRegexMatchSet</code> request.
%%
%% </li> </ol>
delete_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_match_set(Client, Input, []).
delete_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>RegexPatternSet</a>. You can't delete a
%% <code>RegexPatternSet</code> if it's still used in any
%% <code>RegexMatchSet</code> or if the <code>RegexPatternSet</code> is not
%% empty.
delete_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_regex_pattern_set(Client, Input, []).
delete_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRegexPatternSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>Rule</a>. You can't delete a
%% <code>Rule</code> if it's still used in any <code>WebACL</code> objects or
%% if it still includes any predicates, such as <code>ByteMatchSet</code>
%% objects.
%%
%% If you just want to remove a <code>Rule</code> from a <code>WebACL</code>,
%% use <a>UpdateWebACL</a>.
%%
%% To permanently delete a <code>Rule</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li> Update the <code>Rule</code> to remove predicates, if any. For
%% more information, see <a>UpdateRule</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteRule</code> request.
%%
%% </li> <li> Submit a <code>DeleteRule</code> request.
%%
%% </li> </ol>
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>RuleGroup</a>. You can't delete a
%% <code>RuleGroup</code> if it's still used in any <code>WebACL</code>
%% objects or if it still includes any rules.
%%
%% If you just want to remove a <code>RuleGroup</code> from a
%% <code>WebACL</code>, use <a>UpdateWebACL</a>.
%%
%% To permanently delete a <code>RuleGroup</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li> Update the <code>RuleGroup</code> to remove rules, if any. For
%% more information, see <a>UpdateRuleGroup</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteRuleGroup</code> request.
%%
%% </li> <li> Submit a <code>DeleteRuleGroup</code> request.
%%
%% </li> </ol>
delete_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_group(Client, Input, []).
delete_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleGroup">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a
%% <code>SizeConstraintSet</code> if it's still used in any
%% <code>Rules</code> or if it still includes any <a>SizeConstraint</a>
%% objects (any filters).
%%
%% If you just want to remove a <code>SizeConstraintSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Update the <code>SizeConstraintSet</code> to remove filters, if
%% any. For more information, see <a>UpdateSizeConstraintSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteSizeConstraintSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteSizeConstraintSet</code> request.
%%
%% </li> </ol>
delete_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_size_constraint_set(Client, Input, []).
delete_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSizeConstraintSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't
%% delete a <code>SqlInjectionMatchSet</code> if it's still used in any
%% <code>Rules</code> or if it still contains any
%% <a>SqlInjectionMatchTuple</a> objects.
%%
%% If you just want to remove a <code>SqlInjectionMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF,
%% perform the following steps:
%%
%% <ol> <li> Update the <code>SqlInjectionMatchSet</code> to remove filters,
%% if any. For more information, see <a>UpdateSqlInjectionMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteSqlInjectionMatchSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteSqlInjectionMatchSet</code> request.
%%
%% </li> </ol>
delete_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sql_injection_match_set(Client, Input, []).
delete_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSqlInjectionMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes a <a>WebACL</a>. You can't delete a
%% <code>WebACL</code> if it still contains any <code>Rules</code>.
%%
%% To delete a <code>WebACL</code>, perform the following steps:
%%
%% <ol> <li> Update the <code>WebACL</code> to remove <code>Rules</code>, if
%% any. For more information, see <a>UpdateWebACL</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteWebACL</code> request.
%%
%% </li> <li> Submit a <code>DeleteWebACL</code> request.
%%
%% </li> </ol>
delete_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_a_c_l(Client, Input, []).
delete_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebACL">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Permanently deletes an <a>XssMatchSet</a>. You can't delete an
%% <code>XssMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still contains any <a>XssMatchTuple</a> objects.
%%
%% If you just want to remove an <code>XssMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform
%% the following steps:
%%
%% <ol> <li> Update the <code>XssMatchSet</code> to remove filters, if any.
%% For more information, see <a>UpdateXssMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>DeleteXssMatchSet</code> request.
%%
%% </li> <li> Submit a <code>DeleteXssMatchSet</code> request.
%%
%% </li> </ol>
delete_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_xss_match_set(Client, Input, []).
delete_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteXssMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>ByteMatchSet</a> specified by
%% <code>ByteMatchSetId</code>.
get_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_byte_match_set(Client, Input, []).
get_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetByteMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> When you want to create, update, or delete AWS WAF objects, get a
%% change token and include the change token in the create, update, or delete
%% request. Change tokens ensure that your application doesn't submit
%% conflicting requests to AWS WAF.
%%
%% Each create, update, or delete request must use a unique change token. If
%% your application submits a <code>GetChangeToken</code> request and then
%% submits a second <code>GetChangeToken</code> request before submitting a
%% create, update, or delete request, the second <code>GetChangeToken</code>
%% request returns the same value as the first <code>GetChangeToken</code>
%% request.
%%
%% When you use a change token in a create, update, or delete request, the
%% status of the change token changes to <code>PENDING</code>, which
%% indicates that AWS WAF is propagating the change to all AWS WAF servers.
%% Use <code>GetChangeTokenStatus</code> to determine the status of your
%% change token.
get_change_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token(Client, Input, []).
get_change_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeToken">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the status of a <code>ChangeToken</code> that you got by
%% calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is one of
%% the following values:
%%
%% <ul> <li> <code>PROVISIONED</code>: You requested the change token by
%% calling <code>GetChangeToken</code>, but you haven't used it yet in a call
%% to create, update, or delete an AWS WAF object.
%%
%% </li> <li> <code>PENDING</code>: AWS WAF is propagating the create,
%% update, or delete request to all AWS WAF servers.
%%
%% </li> <li> <code>INSYNC</code>: Propagation is complete.
%%
%% </li> </ul>
get_change_token_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token_status(Client, Input, []).
get_change_token_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeTokenStatus">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>GeoMatchSet</a> that is specified by
%% <code>GeoMatchSetId</code>.
get_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_geo_match_set(Client, Input, []).
get_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGeoMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>IPSet</a> that is specified by
%% <code>IPSetId</code>.
get_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_i_p_set(Client, Input, []).
get_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIPSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>LoggingConfiguration</a> for the specified web ACL.
get_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_logging_configuration(Client, Input, []).
get_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoggingConfiguration">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the IAM policy attached to the RuleGroup.
get_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_permission_policy(Client, Input, []).
get_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPermissionPolicy">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>RateBasedRule</a> that is specified by the
%% <code>RuleId</code> that you included in the <code>GetRateBasedRule</code>
%% request.
get_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_rule(Client, Input, []).
get_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of IP addresses currently being blocked by the
%% <a>RateBasedRule</a> that is specified by the <code>RuleId</code>. The
%% maximum number of managed keys that will be blocked is 10,000. If more
%% than 10,000 addresses exceed the rate limit, the 10,000 addresses with the
%% highest rates will be blocked.
get_rate_based_rule_managed_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rate_based_rule_managed_keys(Client, Input, []).
get_rate_based_rule_managed_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRateBasedRuleManagedKeys">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>RegexMatchSet</a> specified by
%% <code>RegexMatchSetId</code>.
get_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_match_set(Client, Input, []).
get_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>RegexPatternSet</a> specified by
%% <code>RegexPatternSetId</code>.
get_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regex_pattern_set(Client, Input, []).
get_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegexPatternSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>Rule</a> that is specified by the
%% <code>RuleId</code> that you included in the <code>GetRule</code> request.
get_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule(Client, Input, []).
get_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>RuleGroup</a> that is specified by the
%% <code>RuleGroupId</code> that you included in the
%% <code>GetRuleGroup</code> request.
%%
%% To view the rules in a rule group, use
%% <a>ListActivatedRulesInRuleGroup</a>.
get_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule_group(Client, Input, []).
get_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRuleGroup">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Gets detailed information about a specified number of requests--a
%% sample--that AWS WAF randomly selects from among the first 5,000 requests
%% that your AWS resource received during a time range that you choose. You
%% can specify a sample size of up to 500 requests, and you can specify any
%% time range in the previous three hours.
%%
%% <code>GetSampledRequests</code> returns a time range, which is usually the
%% time range that you specified. However, if your resource (such as a
%% CloudFront distribution) received 5,000 requests before the specified time
%% range elapsed, <code>GetSampledRequests</code> returns an updated time
%% range. This new time range indicates the actual period during which AWS
%% WAF selected the requests in the sample.
get_sampled_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sampled_requests(Client, Input, []).
get_sampled_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSampledRequests">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>SizeConstraintSet</a> specified by
%% <code>SizeConstraintSetId</code>.
get_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_size_constraint_set(Client, Input, []).
get_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSizeConstraintSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>SqlInjectionMatchSet</a> that is specified by
%% <code>SqlInjectionMatchSetId</code>.
get_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sql_injection_match_set(Client, Input, []).
get_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSqlInjectionMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>WebACL</a> that is specified by
%% <code>WebACLId</code>.
get_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_a_c_l(Client, Input, []).
get_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACL">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns the <a>XssMatchSet</a> that is specified by
%% <code>XssMatchSetId</code>.
get_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_xss_match_set(Client, Input, []).
get_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetXssMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>ActivatedRule</a> objects.
list_activated_rules_in_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_activated_rules_in_rule_group(Client, Input, []).
list_activated_rules_in_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActivatedRulesInRuleGroup">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>ByteMatchSetSummary</a> objects.
list_byte_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_byte_match_sets(Client, Input, []).
list_byte_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListByteMatchSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>GeoMatchSetSummary</a> objects in the
%% response.
list_geo_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_geo_match_sets(Client, Input, []).
list_geo_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGeoMatchSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>IPSetSummary</a> objects in the response.
list_i_p_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_i_p_sets(Client, Input, []).
list_i_p_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIPSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>LoggingConfiguration</a> objects.
list_logging_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_logging_configurations(Client, Input, []).
list_logging_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLoggingConfigurations">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RuleSummary</a> objects.
list_rate_based_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rate_based_rules(Client, Input, []).
list_rate_based_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRateBasedRules">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RegexMatchSetSummary</a> objects.
list_regex_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_match_sets(Client, Input, []).
list_regex_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexMatchSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RegexPatternSetSummary</a> objects.
list_regex_pattern_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_regex_pattern_sets(Client, Input, []).
list_regex_pattern_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRegexPatternSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RuleGroup</a> objects.
list_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_groups(Client, Input, []).
list_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleGroups">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RuleSummary</a> objects.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>SizeConstraintSetSummary</a> objects.
list_size_constraint_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_size_constraint_sets(Client, Input, []).
list_size_constraint_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSizeConstraintSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>SqlInjectionMatchSet</a> objects.
list_sql_injection_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sql_injection_match_sets(Client, Input, []).
list_sql_injection_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSqlInjectionMatchSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>RuleGroup</a> objects that you are
%% subscribed to.
list_subscribed_rule_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscribed_rule_groups(Client, Input, []).
list_subscribed_rule_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscribedRuleGroups">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Retrieves the tags associated with the specified AWS resource.
%% Tags are key:value pairs that you can use to categorize and manage your
%% resources, for purposes like billing. For example, you might set the tag
%% key to "customer" and the value to the customer name or ID. You can
%% specify one or more tags to add to each AWS resource, up to 50 tags for a
%% resource.
%%
%% Tagging is only available through the API, SDKs, and CLI. You can't manage
%% or view tags through the AWS WAF Classic console. You can tag the AWS
%% resources that you manage through AWS WAF Classic: web ACLs, rule groups,
%% and rules.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>WebACLSummary</a> objects in the response.
list_web_a_c_ls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_a_c_ls(Client, Input, []).
list_web_a_c_ls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebACLs">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Returns an array of <a>XssMatchSet</a> objects.
list_xss_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_xss_match_sets(Client, Input, []).
list_xss_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListXssMatchSets">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Associates a <a>LoggingConfiguration</a> with a specified web ACL.
%%
%% You can access information about all traffic that AWS WAF inspects using
%% the following steps:
%%
%% <ol> <li> Create an Amazon Kinesis Data Firehose.
%%
%% Create the data firehose with a PUT source and in the region that you are
%% operating. However, if you are capturing logs for Amazon CloudFront,
%% always create the firehose in US East (N. Virginia).
%%
%% <note> Do not create the data firehose using a <code>Kinesis stream</code>
%% as your source.
%%
%% </note> </li> <li> Associate that firehose to your web ACL using a
%% <code>PutLoggingConfiguration</code> request.
%%
%% </li> </ol> When you successfully enable logging using a
%% <code>PutLoggingConfiguration</code> request, AWS WAF will create a
%% service linked role with the necessary permissions to write logs to the
%% Amazon Kinesis Data Firehose. For more information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging
%% Web ACL Traffic Information</a> in the <i>AWS WAF Developer Guide</i>.
put_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_logging_configuration(Client, Input, []).
put_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLoggingConfiguration">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Attaches an IAM policy to the specified resource. The only
%% supported use for this action is to share a RuleGroup across accounts.
%%
%% The <code>PutPermissionPolicy</code> is subject to the following
%% restrictions:
%%
%% <ul> <li> You can attach only one policy with each
%% <code>PutPermissionPolicy</code> request.
%%
%% </li> <li> The policy must include an <code>Effect</code>,
%% <code>Action</code> and <code>Principal</code>.
%%
%% </li> <li> <code>Effect</code> must specify <code>Allow</code>.
%%
%% </li> <li> The <code>Action</code> in the policy must be
%% <code>waf:UpdateWebACL</code>, <code>waf-regional:UpdateWebACL</code>,
%% <code>waf:GetRuleGroup</code> and <code>waf-regional:GetRuleGroup</code> .
%% Any extra or wildcard actions in the policy will be rejected.
%%
%% </li> <li> The policy cannot include a <code>Resource</code> parameter.
%%
%% </li> <li> The ARN in the request must be a valid WAF RuleGroup ARN and
%% the RuleGroup must exist in the same region.
%%
%% </li> <li> The user making the request must be the owner of the RuleGroup.
%%
%% </li> <li> Your policy must be composed using IAM Policy version
%% 2012-10-17.
%%
%% </li> </ul> For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM
%% Policies</a>.
%%
%% An example of a valid policy parameter is shown in the Examples section
%% below.
put_permission_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission_policy(Client, Input, []).
put_permission_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermissionPolicy">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Associates tags with the specified AWS resource. Tags are
%% key:value pairs that you can use to categorize and manage your resources,
%% for purposes like billing. For example, you might set the tag key to
%% "customer" and the value to the customer name or ID. You can specify one
%% or more tags to add to each AWS resource, up to 50 tags for a resource.
%%
%% Tagging is only available through the API, SDKs, and CLI. You can't manage
%% or view tags through the AWS WAF Classic console. You can use this action
%% to tag the AWS resources that you manage through AWS WAF Classic: web
%% ACLs, rule groups, and rules.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> <p/>
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a
%% <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object, you
%% specify the following values:
%%
%% <ul> <li> Whether to insert or delete the object from the array. If you
%% want to change a <code>ByteMatchSetUpdate</code> object, you delete the
%% existing object and add a new one.
%%
%% </li> <li> The part of a web request that you want AWS WAF to inspect,
%% such as a query string or the value of the <code>User-Agent</code> header.
%%
%% </li> <li> The bytes (typically a string that corresponds with ASCII
%% characters) that you want AWS WAF to look for. For more information,
%% including how you specify the values for the AWS WAF API and the AWS CLI
%% or SDKs, see <code>TargetString</code> in the <a>ByteMatchTuple</a> data
%% type.
%%
%% </li> <li> Where to look, such as at the beginning or the end of a query
%% string.
%%
%% </li> <li> Whether to perform any conversions on the request, such as
%% converting it to lowercase, before inspecting it for the specified string.
%%
%% </li> </ul> For example, you can add a <code>ByteMatchSetUpdate</code>
%% object that matches web requests in which <code>User-Agent</code> headers
%% contain the string <code>BadBot</code>. You can then configure AWS WAF to
%% block those requests.
%%
%% To create and configure a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Create a <code>ByteMatchSet.</code> For more information, see
%% <a>CreateByteMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateByteMatchSet</code> request.
%%
%% </li> <li> Submit an <code>UpdateByteMatchSet</code> request to specify
%% the part of the request that you want AWS WAF to inspect (for example, the
%% header or the URI) and the value that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_byte_match_set(Client, Input, []).
update_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateByteMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>GeoMatchConstraint</a> objects in an
%% <code>GeoMatchSet</code>. For each <code>GeoMatchConstraint</code> object,
%% you specify the following values:
%%
%% <ul> <li> Whether to insert or delete the object from the array. If you
%% want to change an <code>GeoMatchConstraint</code> object, you delete the
%% existing object and add a new one.
%%
%% </li> <li> The <code>Type</code>. The only valid value for
%% <code>Type</code> is <code>Country</code>.
%%
%% </li> <li> The <code>Value</code>, which is a two character code for the
%% country to add to the <code>GeoMatchConstraint</code> object. Valid codes
%% are listed in <a>GeoMatchConstraint$Value</a>.
%%
%% </li> </ul> To create and configure an <code>GeoMatchSet</code>, perform
%% the following steps:
%%
%% <ol> <li> Submit a <a>CreateGeoMatchSet</a> request.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateGeoMatchSet</a> request.
%%
%% </li> <li> Submit an <code>UpdateGeoMatchSet</code> request to specify the
%% country that you want AWS WAF to watch for.
%%
%% </li> </ol> When you update an <code>GeoMatchSet</code>, you specify the
%% country that you want to add and/or the country that you want to delete.
%% If you want to change a country, you delete the existing country and add
%% the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_geo_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_geo_match_set(Client, Input, []).
update_geo_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGeoMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>IPSetDescriptor</a> objects in an
%% <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you
%% specify the following values:
%%
%% <ul> <li> Whether to insert or delete the object from the array. If you
%% want to change an <code>IPSetDescriptor</code> object, you delete the
%% existing object and add a new one.
%%
%% </li> <li> The IP address version, <code>IPv4</code> or <code>IPv6</code>.
%%
%% </li> <li> The IP address in CIDR notation, for example,
%% <code>192.0.2.0/24</code> (for the range of IP addresses from
%% <code>192.0.2.0</code> to <code>192.0.2.255</code>) or
%% <code>192.0.2.44/32</code> (for the individual IP address
%% <code>192.0.2.44</code>).
%%
%% </li> </ul> AWS WAF supports IPv4 address ranges: /8 and any range between
%% /16 through /32. AWS WAF supports IPv6 address ranges: /24, /32, /48, /56,
%% /64, and /128. For more information about CIDR notation, see the Wikipedia
%% entry <a
%% href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
%% Inter-Domain Routing</a>.
%%
%% IPv6 addresses can be represented using any of the following formats:
%%
%% <ul> <li> 1111:0000:0000:0000:0000:0000:0000:0111/128
%%
%% </li> <li> 1111:0:0:0:0:0:0:0111/128
%%
%% </li> <li> 1111::0111/128
%%
%% </li> <li> 1111::111/128
%%
%% </li> </ul> You use an <code>IPSet</code> to specify which web requests
%% you want to allow or block based on the IP addresses that the requests
%% originated from. For example, if you're receiving a lot of requests from
%% one or a small number of IP addresses and you want to block the requests,
%% you can create an <code>IPSet</code> that specifies those IP addresses,
%% and then configure AWS WAF to block the requests.
%%
%% To create and configure an <code>IPSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Submit a <a>CreateIPSet</a> request.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a>
%% request.
%%
%% </li> <li> Submit an <code>UpdateIPSet</code> request to specify the IP
%% addresses that you want AWS WAF to watch for.
%%
%% </li> </ol> When you update an <code>IPSet</code>, you specify the IP
%% addresses that you want to add and/or the IP addresses that you want to
%% delete. If you want to change an IP address, you delete the existing IP
%% address and add the new one.
%%
%% You can insert a maximum of 1000 addresses in a single request.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_i_p_set(Client, Input, []).
update_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIPSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>Predicate</a> objects in a rule and updates
%% the <code>RateLimit</code> in the rule.
%%
%% Each <code>Predicate</code> object identifies a predicate, such as a
%% <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
%% that you want to block or count. The <code>RateLimit</code> specifies the
%% number of requests every five minutes that triggers the rule.
%%
%% If you add more than one predicate to a <code>RateBasedRule</code>, a
%% request must match all the predicates and exceed the
%% <code>RateLimit</code> to be counted or blocked. For example, suppose you
%% add the following to a <code>RateBasedRule</code>:
%%
%% <ul> <li> An <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44/32</code>
%%
%% </li> <li> A <code>ByteMatchSet</code> that matches <code>BadBot</code> in
%% the <code>User-Agent</code> header
%%
%% </li> </ul> Further, you specify a <code>RateLimit</code> of 1,000.
%%
%% You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and
%% specify that you want to block requests that satisfy the rule. For a
%% request to be blocked, it must come from the IP address 192.0.2.44
%% <i>and</i> the <code>User-Agent</code> header in the request must contain
%% the value <code>BadBot</code>. Further, requests that match these two
%% conditions much be received at a rate of more than 1,000 every five
%% minutes. If the rate drops below this limit, AWS WAF no longer blocks the
%% requests.
%%
%% As a second example, suppose you want to limit requests to a particular
%% page on your site. To do this, you could add the following to a
%% <code>RateBasedRule</code>:
%%
%% <ul> <li> A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of
%% <code>URI</code>
%%
%% </li> <li> A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
%%
%% </li> <li> A <code>TargetString</code> of <code>login</code>
%%
%% </li> </ul> Further, you specify a <code>RateLimit</code> of 1,000.
%%
%% By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you
%% could limit requests to your login page without affecting the rest of your
%% site.
update_rate_based_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rate_based_rule(Client, Input, []).
update_rate_based_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRateBasedRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>RegexMatchTuple</a> objects (filters) in a
%% <a>RegexMatchSet</a>. For each <code>RegexMatchSetUpdate</code> object,
%% you specify the following values:
%%
%% <ul> <li> Whether to insert or delete the object from the array. If you
%% want to change a <code>RegexMatchSetUpdate</code> object, you delete the
%% existing object and add a new one.
%%
%% </li> <li> The part of a web request that you want AWS WAF to
%% inspectupdate, such as a query string or the value of the
%% <code>User-Agent</code> header.
%%
%% </li> <li> The identifier of the pattern (a regular expression) that you
%% want AWS WAF to look for. For more information, see
%% <a>RegexPatternSet</a>.
%%
%% </li> <li> Whether to perform any conversions on the request, such as
%% converting it to lowercase, before inspecting it for the specified string.
%%
%% </li> </ul> For example, you can create a <code>RegexPatternSet</code>
%% that matches any requests with <code>User-Agent</code> headers that
%% contain the string <code>B[a@]dB[o0]t</code>. You can then configure AWS
%% WAF to reject those requests.
%%
%% To create and configure a <code>RegexMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Create a <code>RegexMatchSet.</code> For more information, see
%% <a>CreateRegexMatchSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateRegexMatchSet</code> request.
%%
%% </li> <li> Submit an <code>UpdateRegexMatchSet</code> request to specify
%% the part of the request that you want AWS WAF to inspect (for example, the
%% header or the URI) and the identifier of the <code>RegexPatternSet</code>
%% that contain the regular expression patters you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_regex_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_match_set(Client, Input, []).
update_regex_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <code>RegexPatternString</code> objects in a
%% <a>RegexPatternSet</a>. For each <code>RegexPatternString</code> object,
%% you specify the following values:
%%
%% <ul> <li> Whether to insert or delete the <code>RegexPatternString</code>.
%%
%% </li> <li> The regular expression pattern that you want to insert or
%% delete. For more information, see <a>RegexPatternSet</a>.
%%
%% </li> </ul> For example, you can create a <code>RegexPatternString</code>
%% such as <code>B[a@]dB[o0]t</code>. AWS WAF will match this
%% <code>RegexPatternString</code> to:
%%
%% <ul> <li> BadBot
%%
%% </li> <li> BadB0t
%%
%% </li> <li> B@dBot
%%
%% </li> <li> B@dB0t
%%
%% </li> </ul> To create and configure a <code>RegexPatternSet</code>,
%% perform the following steps:
%%
%% <ol> <li> Create a <code>RegexPatternSet.</code> For more information, see
%% <a>CreateRegexPatternSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateRegexPatternSet</code> request.
%%
%% </li> <li> Submit an <code>UpdateRegexPatternSet</code> request to specify
%% the regular expression pattern that you want AWS WAF to watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_regex_pattern_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_regex_pattern_set(Client, Input, []).
update_regex_pattern_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRegexPatternSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>Predicate</a> objects in a
%% <code>Rule</code>. Each <code>Predicate</code> object identifies a
%% predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that
%% specifies the web requests that you want to allow, block, or count. If you
%% add more than one predicate to a <code>Rule</code>, a request must match
%% all of the specifications to be allowed, blocked, or counted. For example,
%% suppose that you add the following to a <code>Rule</code>:
%%
%% <ul> <li> A <code>ByteMatchSet</code> that matches the value
%% <code>BadBot</code> in the <code>User-Agent</code> header
%%
%% </li> <li> An <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44</code>
%%
%% </li> </ul> You then add the <code>Rule</code> to a <code>WebACL</code>
%% and specify that you want to block requests that satisfy the
%% <code>Rule</code>. For a request to be blocked, the
%% <code>User-Agent</code> header in the request must contain the value
%% <code>BadBot</code> <i>and</i> the request must originate from the IP
%% address 192.0.2.44.
%%
%% To create and configure a <code>Rule</code>, perform the following steps:
%%
%% <ol> <li> Create and update the predicates that you want to include in the
%% <code>Rule</code>.
%%
%% </li> <li> Create the <code>Rule</code>. See <a>CreateRule</a>.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateRule</a> request.
%%
%% </li> <li> Submit an <code>UpdateRule</code> request to add predicates to
%% the <code>Rule</code>.
%%
%% </li> <li> Create and update a <code>WebACL</code> that contains the
%% <code>Rule</code>. See <a>CreateWebACL</a>.
%%
%% </li> </ol> If you want to replace one <code>ByteMatchSet</code> or
%% <code>IPSet</code> with another, you delete the existing one and add the
%% new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule(Client, Input, []).
update_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRule">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>ActivatedRule</a> objects in a
%% <code>RuleGroup</code>.
%%
%% You can only insert <code>REGULAR</code> rules into a rule group.
%%
%% You can have a maximum of ten rules per rule group.
%%
%% To create and configure a <code>RuleGroup</code>, perform the following
%% steps:
%%
%% <ol> <li> Create and update the <code>Rules</code> that you want to
%% include in the <code>RuleGroup</code>. See <a>CreateRule</a>.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateRuleGroup</a> request.
%%
%% </li> <li> Submit an <code>UpdateRuleGroup</code> request to add
%% <code>Rules</code> to the <code>RuleGroup</code>.
%%
%% </li> <li> Create and update a <code>WebACL</code> that contains the
%% <code>RuleGroup</code>. See <a>CreateWebACL</a>.
%%
%% </li> </ol> If you want to replace one <code>Rule</code> with another, you
%% delete the existing one and add the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_rule_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_group(Client, Input, []).
update_rule_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleGroup">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>SizeConstraint</a> objects (filters) in a
%% <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object, you
%% specify the following values:
%%
%% <ul> <li> Whether to insert or delete the object from the array. If you
%% want to change a <code>SizeConstraintSetUpdate</code> object, you delete
%% the existing object and add a new one.
%%
%% </li> <li> The part of a web request that you want AWS WAF to evaluate,
%% such as the length of a query string or the length of the
%% <code>User-Agent</code> header.
%%
%% </li> <li> Whether to perform any transformations on the request, such as
%% converting it to lowercase, before checking its length. Note that
%% transformations of the request body are not supported because the AWS
%% resource forwards only the first <code>8192</code> bytes of your request
%% to AWS WAF.
%%
%% You can only specify a single type of TextTransformation.
%%
%% </li> <li> A <code>ComparisonOperator</code> used for evaluating the
%% selected part of the request against the specified <code>Size</code>, such
%% as equals, greater than, less than, and so on.
%%
%% </li> <li> The length, in bytes, that you want AWS WAF to watch for in
%% selected part of the request. The length is computed after applying the
%% transformation.
%%
%% </li> </ul> For example, you can add a
%% <code>SizeConstraintSetUpdate</code> object that matches web requests in
%% which the length of the <code>User-Agent</code> header is greater than 100
%% bytes. You can then configure AWS WAF to block those requests.
%%
%% To create and configure a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Create a <code>SizeConstraintSet.</code> For more information,
%% see <a>CreateSizeConstraintSet</a>.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an
%% <code>UpdateSizeConstraintSet</code> request.
%%
%% </li> <li> Submit an <code>UpdateSizeConstraintSet</code> request to
%% specify the part of the request that you want AWS WAF to inspect (for
%% example, the header or the URI) and the value that you want AWS WAF to
%% watch for.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_size_constraint_set(Client, Input, []).
update_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSizeConstraintSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters)
%% in a <a>SqlInjectionMatchSet</a>. For each
%% <code>SqlInjectionMatchTuple</code> object, you specify the following
%% values:
%%
%% <ul> <li> <code>Action</code>: Whether to insert the object into or delete
%% the object from the array. To change a
%% <code>SqlInjectionMatchTuple</code>, you delete the existing object and
%% add a new one.
%%
%% </li> <li> <code>FieldToMatch</code>: The part of web requests that you
%% want AWS WAF to inspect and, if you want AWS WAF to inspect a header or
%% custom query parameter, the name of the header or parameter.
%%
%% </li> <li> <code>TextTransformation</code>: Which text transformation, if
%% any, to perform on the web request before inspecting the request for
%% snippets of malicious SQL code.
%%
%% You can only specify a single type of TextTransformation.
%%
%% </li> </ul> You use <code>SqlInjectionMatchSet</code> objects to specify
%% which CloudFront requests that you want to allow, block, or count. For
%% example, if you're receiving requests that contain snippets of SQL code in
%% the query string and you want to block the requests, you can create a
%% <code>SqlInjectionMatchSet</code> with the applicable settings, and then
%% configure AWS WAF to block the requests.
%%
%% To create and configure a <code>SqlInjectionMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li> Submit a <a>CreateSqlInjectionMatchSet</a> request.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a>
%% request.
%%
%% </li> <li> Submit an <code>UpdateSqlInjectionMatchSet</code> request to
%% specify the parts of web requests that you want AWS WAF to inspect for
%% snippets of SQL code.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sql_injection_match_set(Client, Input, []).
update_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSqlInjectionMatchSet">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>ActivatedRule</a> objects in a
%% <code>WebACL</code>. Each <code>Rule</code> identifies web requests that
%% you want to allow, block, or count. When you update a <code>WebACL</code>,
%% you specify the following values:
%%
%% <ul> <li> A default action for the <code>WebACL</code>, either
%% <code>ALLOW</code> or <code>BLOCK</code>. AWS WAF performs the default
%% action if a request doesn't match the criteria in any of the
%% <code>Rules</code> in a <code>WebACL</code>.
%%
%% </li> <li> The <code>Rules</code> that you want to add or delete. If you
%% want to replace one <code>Rule</code> with another, you delete the
%% existing <code>Rule</code> and add the new one.
%%
%% </li> <li> For each <code>Rule</code>, whether you want AWS WAF to allow
%% requests, block requests, or count requests that match the conditions in
%% the <code>Rule</code>.
%%
%% </li> <li> The order in which you want AWS WAF to evaluate the
%% <code>Rules</code> in a <code>WebACL</code>. If you add more than one
%% <code>Rule</code> to a <code>WebACL</code>, AWS WAF evaluates each request
%% against the <code>Rules</code> in order based on the value of
%% <code>Priority</code>. (The <code>Rule</code> that has the lowest value
%% for <code>Priority</code> is evaluated first.) When a web request matches
%% all the predicates (such as <code>ByteMatchSets</code> and
%% <code>IPSets</code>) in a <code>Rule</code>, AWS WAF immediately takes the
%% corresponding action, allow or block, and doesn't evaluate the request
%% against the remaining <code>Rules</code> in the <code>WebACL</code>, if
%% any.
%%
%% </li> </ul> To create and configure a <code>WebACL</code>, perform the
%% following steps:
%%
%% <ol> <li> Create and update the predicates that you want to include in
%% <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>,
%% <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>,
%% <a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.
%%
%% </li> <li> Create and update the <code>Rules</code> that you want to
%% include in the <code>WebACL</code>. For more information, see
%% <a>CreateRule</a> and <a>UpdateRule</a>.
%%
%% </li> <li> Create a <code>WebACL</code>. See <a>CreateWebACL</a>.
%%
%% </li> <li> Use <code>GetChangeToken</code> to get the change token that
%% you provide in the <code>ChangeToken</code> parameter of an
%% <a>UpdateWebACL</a> request.
%%
%% </li> <li> Submit an <code>UpdateWebACL</code> request to specify the
%% <code>Rules</code> that you want to include in the <code>WebACL</code>, to
%% specify the default action, and to associate the <code>WebACL</code> with
%% a CloudFront distribution.
%%
%% The <code>ActivatedRule</code> can be a rule group. If you specify a rule
%% group as your <code>ActivatedRule</code> , you can exclude specific rules
%% from that rule group.
%%
%% If you already have a rule group associated with a web ACL and want to
%% submit an <code>UpdateWebACL</code> request to exclude certain rules from
%% that rule group, you must first remove the rule group from the web ACL,
%% the re-insert it again, specifying the excluded rules. For details, see
%% <a>ActivatedRule$ExcludedRules</a> .
%%
%% </li> </ol> Be aware that if you try to add a RATE_BASED rule to a web ACL
%% without setting the rule type when first creating the rule, the
%% <a>UpdateWebACL</a> request will fail because the request tries to add a
%% REGULAR rule (the default rule type) with the specified ID, which does not
%% exist.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_a_c_l(Client, Input, []).
update_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebACL">>, Input, Options).

%% @doc <note> This is <b>AWS WAF Classic</b> documentation. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
%% WAF Classic</a> in the developer guide.
%%
%% <b>For the latest version of AWS WAF</b>, use the AWS WAFV2 API and see
%% the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS
%% WAF Developer Guide</a>. With the latest version, AWS WAF has a single set
%% of endpoints for regional and global use.
%%
%% </note> Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an
%% <a>XssMatchSet</a>. For each <code>XssMatchTuple</code> object, you
%% specify the following values:
%%
%% <ul> <li> <code>Action</code>: Whether to insert the object into or delete
%% the object from the array. To change an <code>XssMatchTuple</code>, you
%% delete the existing object and add a new one.
%%
%% </li> <li> <code>FieldToMatch</code>: The part of web requests that you
%% want AWS WAF to inspect and, if you want AWS WAF to inspect a header or
%% custom query parameter, the name of the header or parameter.
%%
%% </li> <li> <code>TextTransformation</code>: Which text transformation, if
%% any, to perform on the web request before inspecting the request for
%% cross-site scripting attacks.
%%
%% You can only specify a single type of TextTransformation.
%%
%% </li> </ul> You use <code>XssMatchSet</code> objects to specify which
%% CloudFront requests that you want to allow, block, or count. For example,
%% if you're receiving requests that contain cross-site scripting attacks in
%% the request body and you want to block the requests, you can create an
%% <code>XssMatchSet</code> with the applicable settings, and then configure
%% AWS WAF to block the requests.
%%
%% To create and configure an <code>XssMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li> Submit a <a>CreateXssMatchSet</a> request.
%%
%% </li> <li> Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a>
%% request.
%%
%% </li> <li> Submit an <code>UpdateXssMatchSet</code> request to specify the
%% parts of web requests that you want AWS WAF to inspect for cross-site
%% scripting attacks.
%%
%% </li> </ol> For more information about how to use the AWS WAF API to allow
%% or block HTTP requests, see the <a
%% href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_xss_match_set(Client, Input, []).
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"waf">>,
                      region => <<"us-east-1">>},
    Host = get_host(<<"waf">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWSWAF_20150824.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
