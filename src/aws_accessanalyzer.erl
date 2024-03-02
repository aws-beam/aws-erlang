%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Identity and Access Management Access Analyzer helps you to set,
%% verify, and refine your IAM policies by providing a suite of capabilities.
%%
%% Its features include findings for external and unused access, basic and
%% custom policy checks for validating policies, and policy generation to
%% generate fine-grained policies. To start using IAM Access Analyzer to
%% identify external or unused access, you first need to create an analyzer.
%%
%% External access analyzers help identify potential risks of accessing
%% resources by enabling you to identify any resource policies that grant
%% access to an external principal. It does this by using logic-based
%% reasoning to analyze resource-based policies in your Amazon Web Services
%% environment. An external principal can be another Amazon Web Services
%% account, a root user, an IAM user or role, a federated user, an Amazon Web
%% Services service, or an anonymous user. You can also use IAM Access
%% Analyzer to preview public and cross-account access to your resources
%% before deploying permissions changes.
%%
%% Unused access analyzers help identify potential identity access risks by
%% enabling you to identify unused IAM roles, unused access keys, unused
%% console passwords, and IAM principals with unused service and action-level
%% permissions.
%%
%% Beyond findings, IAM Access Analyzer provides basic and custom policy
%% checks to validate IAM policies before deploying permissions changes. You
%% can use policy generation to refine permissions by attaching a policy
%% generated using access activity logged in CloudTrail logs.
%%
%% This guide describes the IAM Access Analyzer operations that you can call
%% programmatically. For general information about IAM Access Analyzer, see
%% Identity and Access Management Access Analyzer:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html
%% in the IAM User Guide.
-module(aws_accessanalyzer).

-export([apply_archive_rule/2,
         apply_archive_rule/3,
         cancel_policy_generation/3,
         cancel_policy_generation/4,
         check_access_not_granted/2,
         check_access_not_granted/3,
         check_no_new_access/2,
         check_no_new_access/3,
         create_access_preview/2,
         create_access_preview/3,
         create_analyzer/2,
         create_analyzer/3,
         create_archive_rule/3,
         create_archive_rule/4,
         delete_analyzer/3,
         delete_analyzer/4,
         delete_archive_rule/4,
         delete_archive_rule/5,
         get_access_preview/3,
         get_access_preview/5,
         get_access_preview/6,
         get_analyzed_resource/3,
         get_analyzed_resource/5,
         get_analyzed_resource/6,
         get_analyzer/2,
         get_analyzer/4,
         get_analyzer/5,
         get_archive_rule/3,
         get_archive_rule/5,
         get_archive_rule/6,
         get_finding/3,
         get_finding/5,
         get_finding/6,
         get_finding_v2/3,
         get_finding_v2/5,
         get_finding_v2/6,
         get_generated_policy/2,
         get_generated_policy/4,
         get_generated_policy/5,
         list_access_preview_findings/3,
         list_access_preview_findings/4,
         list_access_previews/2,
         list_access_previews/4,
         list_access_previews/5,
         list_analyzed_resources/2,
         list_analyzed_resources/3,
         list_analyzers/1,
         list_analyzers/3,
         list_analyzers/4,
         list_archive_rules/2,
         list_archive_rules/4,
         list_archive_rules/5,
         list_findings/2,
         list_findings/3,
         list_findings_v2/2,
         list_findings_v2/3,
         list_policy_generations/1,
         list_policy_generations/3,
         list_policy_generations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_policy_generation/2,
         start_policy_generation/3,
         start_resource_scan/2,
         start_resource_scan/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_archive_rule/4,
         update_archive_rule/5,
         update_findings/2,
         update_findings/3,
         validate_policy/2,
         validate_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retroactively applies the archive rule to existing findings that meet
%% the archive rule criteria.
apply_archive_rule(Client, Input) ->
    apply_archive_rule(Client, Input, []).
apply_archive_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/archive-rule"],
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

%% @doc Cancels the requested policy generation.
cancel_policy_generation(Client, JobId, Input) ->
    cancel_policy_generation(Client, JobId, Input, []).
cancel_policy_generation(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/policy/generation/", aws_util:encode_uri(JobId), ""],
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

%% @doc Checks whether the specified access isn't allowed by a policy.
check_access_not_granted(Client, Input) ->
    check_access_not_granted(Client, Input, []).
check_access_not_granted(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/check-access-not-granted"],
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

%% @doc Checks whether new access is allowed for an updated policy when
%% compared to the existing policy.
%%
%% You can find examples for reference policies and learn how to set up and
%% run a custom policy check for new access in the IAM Access Analyzer custom
%% policy checks samples:
%% https://github.com/aws-samples/iam-access-analyzer-custom-policy-check-samples
%% repository on GitHub. The reference policies in this repository are meant
%% to be passed to the `existingPolicyDocument' request parameter.
check_no_new_access(Client, Input) ->
    check_no_new_access(Client, Input, []).
check_no_new_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/check-no-new-access"],
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

%% @doc Creates an access preview that allows you to preview IAM Access
%% Analyzer findings for your resource before deploying resource permissions.
create_access_preview(Client, Input) ->
    create_access_preview(Client, Input, []).
create_access_preview(Client, Input0, Options0) ->
    Method = put,
    Path = ["/access-preview"],
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

%% @doc Creates an analyzer for your account.
create_analyzer(Client, Input) ->
    create_analyzer(Client, Input, []).
create_analyzer(Client, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer"],
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

%% @doc Creates an archive rule for the specified analyzer.
%%
%% Archive rules automatically archive new findings that meet the criteria
%% you define when you create the rule.
%%
%% To learn about filter keys that you can use to create an archive rule, see
%% IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
create_archive_rule(Client, AnalyzerName, Input) ->
    create_archive_rule(Client, AnalyzerName, Input, []).
create_archive_rule(Client, AnalyzerName, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule"],
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

%% @doc Deletes the specified analyzer.
%%
%% When you delete an analyzer, IAM Access Analyzer is disabled for the
%% account or organization in the current or specific Region. All findings
%% that were generated by the analyzer are deleted. You cannot undo this
%% action.
delete_analyzer(Client, AnalyzerName, Input) ->
    delete_analyzer(Client, AnalyzerName, Input, []).
delete_analyzer(Client, AnalyzerName, Input0, Options0) ->
    Method = delete,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified archive rule.
delete_archive_rule(Client, AnalyzerName, RuleName, Input) ->
    delete_archive_rule(Client, AnalyzerName, RuleName, Input, []).
delete_archive_rule(Client, AnalyzerName, RuleName, Input0, Options0) ->
    Method = delete,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about an access preview for the specified
%% analyzer.
get_access_preview(Client, AccessPreviewId, AnalyzerArn)
  when is_map(Client) ->
    get_access_preview(Client, AccessPreviewId, AnalyzerArn, #{}, #{}).

get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap, []).

get_access_preview(Client, AccessPreviewId, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-preview/", aws_util:encode_uri(AccessPreviewId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a resource that was analyzed.
get_analyzed_resource(Client, AnalyzerArn, ResourceArn)
  when is_map(Client) ->
    get_analyzed_resource(Client, AnalyzerArn, ResourceArn, #{}, #{}).

get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap, []).

get_analyzed_resource(Client, AnalyzerArn, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzed-resource"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified analyzer.
get_analyzer(Client, AnalyzerName)
  when is_map(Client) ->
    get_analyzer(Client, AnalyzerName, #{}, #{}).

get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap, []).

get_analyzer(Client, AnalyzerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an archive rule.
%%
%% To learn about filter keys that you can use to create an archive rule, see
%% IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
get_archive_rule(Client, AnalyzerName, RuleName)
  when is_map(Client) ->
    get_archive_rule(Client, AnalyzerName, RuleName, #{}, #{}).

get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap, []).

get_archive_rule(Client, AnalyzerName, RuleName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified finding.
%%
%% GetFinding and GetFindingV2 both use `access-analyzer:GetFinding' in
%% the `Action' element of an IAM policy statement. You must have
%% permission to perform the `access-analyzer:GetFinding' action.
get_finding(Client, Id, AnalyzerArn)
  when is_map(Client) ->
    get_finding(Client, Id, AnalyzerArn, #{}, #{}).

get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap, []).

get_finding(Client, Id, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/finding/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified finding.
%%
%% GetFinding and GetFindingV2 both use `access-analyzer:GetFinding' in
%% the `Action' element of an IAM policy statement. You must have
%% permission to perform the `access-analyzer:GetFinding' action.
get_finding_v2(Client, Id, AnalyzerArn)
  when is_map(Client) ->
    get_finding_v2(Client, Id, AnalyzerArn, #{}, #{}).

get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap, []).

get_finding_v2(Client, Id, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingv2/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy that was generated using
%% `StartPolicyGeneration'.
get_generated_policy(Client, JobId)
  when is_map(Client) ->
    get_generated_policy(Client, JobId, #{}, #{}).

get_generated_policy(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_generated_policy(Client, JobId, QueryMap, HeadersMap, []).

get_generated_policy(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/generation/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeResourcePlaceholders">>, maps:get(<<"includeResourcePlaceholders">>, QueryMap, undefined)},
        {<<"includeServiceLevelTemplate">>, maps:get(<<"includeServiceLevelTemplate">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of access preview findings generated by the
%% specified access preview.
list_access_preview_findings(Client, AccessPreviewId, Input) ->
    list_access_preview_findings(Client, AccessPreviewId, Input, []).
list_access_preview_findings(Client, AccessPreviewId, Input0, Options0) ->
    Method = post,
    Path = ["/access-preview/", aws_util:encode_uri(AccessPreviewId), ""],
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

%% @doc Retrieves a list of access previews for the specified analyzer.
list_access_previews(Client, AnalyzerArn)
  when is_map(Client) ->
    list_access_previews(Client, AnalyzerArn, #{}, #{}).

list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap, []).

list_access_previews(Client, AnalyzerArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-preview"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"analyzerArn">>, AnalyzerArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of resources of the specified type that have been
%% analyzed by the specified external access analyzer.
%%
%% This action is not supported for unused access analyzers.
list_analyzed_resources(Client, Input) ->
    list_analyzed_resources(Client, Input, []).
list_analyzed_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/analyzed-resource"],
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

%% @doc Retrieves a list of analyzers.
list_analyzers(Client)
  when is_map(Client) ->
    list_analyzers(Client, #{}, #{}).

list_analyzers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analyzers(Client, QueryMap, HeadersMap, []).

list_analyzers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of archive rules created for the specified analyzer.
list_archive_rules(Client, AnalyzerName)
  when is_map(Client) ->
    list_archive_rules(Client, AnalyzerName, #{}, #{}).

list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap, []).

list_archive_rules(Client, AnalyzerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of findings generated by the specified analyzer.
%%
%% ListFindings and ListFindingsV2 both use
%% `access-analyzer:ListFindings' in the `Action' element of an IAM
%% policy statement. You must have permission to perform the
%% `access-analyzer:ListFindings' action.
%%
%% To learn about filter keys that you can use to retrieve a list of
%% findings, see IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).
list_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/finding"],
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

%% @doc Retrieves a list of findings generated by the specified analyzer.
%%
%% ListFindings and ListFindingsV2 both use
%% `access-analyzer:ListFindings' in the `Action' element of an IAM
%% policy statement. You must have permission to perform the
%% `access-analyzer:ListFindings' action.
%%
%% To learn about filter keys that you can use to retrieve a list of
%% findings, see IAM Access Analyzer filter keys:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html
%% in the IAM User Guide.
list_findings_v2(Client, Input) ->
    list_findings_v2(Client, Input, []).
list_findings_v2(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findingv2"],
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

%% @doc Lists all of the policy generations requested in the last seven days.
list_policy_generations(Client)
  when is_map(Client) ->
    list_policy_generations(Client, #{}, #{}).

list_policy_generations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_generations(Client, QueryMap, HeadersMap, []).

list_policy_generations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy/generation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"principalArn">>, maps:get(<<"principalArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tags applied to the specified resource.
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
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the policy generation request.
start_policy_generation(Client, Input) ->
    start_policy_generation(Client, Input, []).
start_policy_generation(Client, Input0, Options0) ->
    Method = put,
    Path = ["/policy/generation"],
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

%% @doc Immediately starts a scan of the policies applied to the specified
%% resource.
start_resource_scan(Client, Input) ->
    start_resource_scan(Client, Input, []).
start_resource_scan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resource/scan"],
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

%% @doc Adds a tag to the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the criteria and values for the specified archive rule.
update_archive_rule(Client, AnalyzerName, RuleName, Input) ->
    update_archive_rule(Client, AnalyzerName, RuleName, Input, []).
update_archive_rule(Client, AnalyzerName, RuleName, Input0, Options0) ->
    Method = put,
    Path = ["/analyzer/", aws_util:encode_uri(AnalyzerName), "/archive-rule/", aws_util:encode_uri(RuleName), ""],
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

%% @doc Updates the status for the specified findings.
update_findings(Client, Input) ->
    update_findings(Client, Input, []).
update_findings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/finding"],
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

%% @doc Requests the validation of a policy and returns a list of findings.
%%
%% The findings help you identify issues and provide actionable
%% recommendations to resolve the issue and enable you to author functional
%% policies that meet security best practices.
validate_policy(Client, Input) ->
    validate_policy(Client, Input, []).
validate_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policy/validation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"access-analyzer">>},
    Host = build_host(<<"access-analyzer">>, Client1),
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
