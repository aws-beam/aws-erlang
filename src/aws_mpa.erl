%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Multi-party approval is a capability of Organizations:
%% http://aws.amazon.com/organizations that allows you to protect a
%% predefined list of operations through a distributed approval process.
%%
%% Use Multi-party approval to establish approval workflows and transform
%% security processes into team-based decisions.
%%
%% When to use Multi-party approval:
%%
%% You need to align with the Zero Trust principle of &quot;never trust,
%% always verify&quot;
%%
%% You need to make sure that the right humans have access to the right
%% things in the right way
%%
%% You need distributed decision-making for sensitive or critical operations
%%
%% You need to protect against unintended operations on sensitive or critical
%% resources
%%
%% You need formal reviews and approvals for auditing or compliance reasons
%%
%% For more information, see What is Multi-party approval:
%% https://docs.aws.amazon.com/mpa/latest/userguide/what-is.html in the
%% Multi-party approval User Guide.
-module(aws_mpa).

-export([cancel_session/3,
         cancel_session/4,
         create_approval_team/2,
         create_approval_team/3,
         create_identity_source/2,
         create_identity_source/3,
         delete_identity_source/3,
         delete_identity_source/4,
         delete_inactive_approval_team_version/4,
         delete_inactive_approval_team_version/5,
         get_approval_team/2,
         get_approval_team/4,
         get_approval_team/5,
         get_identity_source/2,
         get_identity_source/4,
         get_identity_source/5,
         get_policy_version/2,
         get_policy_version/4,
         get_policy_version/5,
         get_resource_policy/2,
         get_resource_policy/3,
         get_session/2,
         get_session/4,
         get_session/5,
         list_approval_teams/2,
         list_approval_teams/3,
         list_identity_sources/2,
         list_identity_sources/3,
         list_policies/2,
         list_policies/3,
         list_policy_versions/3,
         list_policy_versions/4,
         list_resource_policies/3,
         list_resource_policies/4,
         list_sessions/3,
         list_sessions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_active_approval_team_deletion/3,
         start_active_approval_team_deletion/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_approval_team/3,
         update_approval_team/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% policy_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IsDefault">> => [boolean()],
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"VersionId">> => integer()
%% }
-type policy_version_summary() :: #{binary() => any()}.


%% Example:
%% list_policy_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PolicyVersions">> => list(policy_version_summary())
%% }
-type list_policy_versions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_policy_version_response() :: #{
%%   <<"PolicyVersion">> => policy_version()
%% }
-type get_policy_version_response() :: #{binary() => any()}.


%% Example:
%% get_session_response_approver_response() :: #{
%%   <<"ApproverId">> => string(),
%%   <<"IdentityId">> => string(),
%%   <<"IdentitySourceArn">> => string(),
%%   <<"Response">> => list(any()),
%%   <<"ResponseTime">> => non_neg_integer()
%% }
-type get_session_response_approver_response() :: #{binary() => any()}.


%% Example:
%% start_active_approval_team_deletion_response() :: #{
%%   <<"DeletionCompletionTime">> => non_neg_integer(),
%%   <<"DeletionStartTime">> => non_neg_integer()
%% }
-type start_active_approval_team_deletion_response() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"ActionCompletionStrategy">> => list(any()),
%%   <<"ActionName">> => string(),
%%   <<"ApprovalStrategy">> => list(),
%%   <<"ApprovalTeamArn">> => string(),
%%   <<"ApprovalTeamName">> => string(),
%%   <<"ApproverResponses">> => list(get_session_response_approver_response()),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExecutionStatus">> => list(any()),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"InitiationTime">> => non_neg_integer(),
%%   <<"Metadata">> => map(),
%%   <<"NumberOfApprovers">> => [integer()],
%%   <<"ProtectedResourceArn">> => string(),
%%   <<"RequesterAccountId">> => string(),
%%   <<"RequesterComment">> => string(),
%%   <<"RequesterPrincipalArn">> => string(),
%%   <<"RequesterRegion">> => string(),
%%   <<"RequesterServicePrincipal">> => string(),
%%   <<"SessionArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type get_session_response() :: #{binary() => any()}.

%% Example:
%% get_policy_version_request() :: #{}
-type get_policy_version_request() :: #{}.


%% Example:
%% list_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Policies">> => list(policy())
%% }
-type list_policies_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_policies_request() :: #{binary() => any()}.


%% Example:
%% get_identity_source_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IdentitySourceArn">> => string(),
%%   <<"IdentitySourceParameters">> => list(),
%%   <<"IdentitySourceType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type get_identity_source_response() :: #{binary() => any()}.


%% Example:
%% get_approval_team_response() :: #{
%%   <<"ApprovalStrategy">> => list(),
%%   <<"Approvers">> => list(get_approval_team_response_approver()),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NumberOfApprovers">> => [integer()],
%%   <<"PendingUpdate">> => pending_update(),
%%   <<"Policies">> => list(policy_reference()),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdateSessionArn">> => string(),
%%   <<"VersionId">> => string()
%% }
-type get_approval_team_response() :: #{binary() => any()}.


%% Example:
%% update_approval_team_response() :: #{
%%   <<"VersionId">> => string()
%% }
-type update_approval_team_response() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"PolicyDocument">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"PolicyVersionArn">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_inactive_approval_team_version_request() :: #{}
-type delete_inactive_approval_team_version_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% cancel_session_response() :: #{}
-type cancel_session_response() :: #{}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.


%% Example:
%% iam_identity_center() :: #{
%%   <<"InstanceArn">> => string(),
%%   <<"Region">> => string()
%% }
-type iam_identity_center() :: #{binary() => any()}.

%% Example:
%% cancel_session_request() :: #{}
-type cancel_session_request() :: #{}.


%% Example:
%% create_identity_source_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IdentitySourceArn">> => string(),
%%   <<"IdentitySourceType">> => list(any())
%% }
-type create_identity_source_response() :: #{binary() => any()}.


%% Example:
%% policy_version() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Document">> => string(),
%%   <<"IsDefault">> => [boolean()],
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"VersionId">> => integer()
%% }
-type policy_version() :: #{binary() => any()}.

%% Example:
%% get_identity_source_request() :: #{}
-type get_identity_source_request() :: #{}.


%% Example:
%% identity_source_for_list() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IdentitySourceArn">> => string(),
%%   <<"IdentitySourceParameters">> => list(),
%%   <<"IdentitySourceType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type identity_source_for_list() :: #{binary() => any()}.


%% Example:
%% list_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(list_sessions_response_session())
%% }
-type list_sessions_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% policy_reference() :: #{
%%   <<"PolicyArn">> => string()
%% }
-type policy_reference() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_identity_sources_response() :: #{
%%   <<"IdentitySources">> => list(identity_source_for_list()),
%%   <<"NextToken">> => string()
%% }
-type list_identity_sources_response() :: #{binary() => any()}.


%% Example:
%% get_approval_team_response_approver() :: #{
%%   <<"ApproverId">> => string(),
%%   <<"PrimaryIdentityId">> => string(),
%%   <<"PrimaryIdentitySourceArn">> => string(),
%%   <<"PrimaryIdentityStatus">> => list(any()),
%%   <<"ResponseTime">> => non_neg_integer()
%% }
-type get_approval_team_response_approver() :: #{binary() => any()}.


%% Example:
%% approval_team_request_approver() :: #{
%%   <<"PrimaryIdentityId">> => string(),
%%   <<"PrimaryIdentitySourceArn">> => string()
%% }
-type approval_team_request_approver() :: #{binary() => any()}.


%% Example:
%% list_resource_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_policies_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_sessions_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sessions_request() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_request() :: #{
%%   <<"PolicyName">> := string(),
%%   <<"PolicyType">> := list(any()),
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"FieldName">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% start_active_approval_team_deletion_request() :: #{
%%   <<"PendingWindowDays">> => [integer()]
%% }
-type start_active_approval_team_deletion_request() :: #{binary() => any()}.


%% Example:
%% list_policy_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_policy_versions_request() :: #{binary() => any()}.


%% Example:
%% list_approval_teams_response() :: #{
%%   <<"ApprovalTeams">> => list(list_approval_teams_response_approval_team()),
%%   <<"NextToken">> => string()
%% }
-type list_approval_teams_response() :: #{binary() => any()}.


%% Example:
%% iam_identity_center_for_list() :: #{
%%   <<"ApprovalPortalUrl">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Region">> => string()
%% }
-type iam_identity_center_for_list() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% get_approval_team_request() :: #{}
-type get_approval_team_request() :: #{}.


%% Example:
%% list_approval_teams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_approval_teams_request() :: #{binary() => any()}.


%% Example:
%% list_resource_policies_response_resource_policy() :: #{
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => list(any())
%% }
-type list_resource_policies_response_resource_policy() :: #{binary() => any()}.


%% Example:
%% policy() :: #{
%%   <<"Arn">> => string(),
%%   <<"DefaultVersion">> => integer(),
%%   <<"Name">> => string(),
%%   <<"PolicyType">> => list(any())
%% }
-type policy() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_approval_team_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"VersionId">> => string()
%% }
-type create_approval_team_response() :: #{binary() => any()}.


%% Example:
%% create_approval_team_request() :: #{
%%   <<"ApprovalStrategy">> := list(),
%%   <<"Approvers">> := list(approval_team_request_approver()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> := string(),
%%   <<"Name">> := string(),
%%   <<"Policies">> := list(policy_reference()),
%%   <<"Tags">> => map()
%% }
-type create_approval_team_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% iam_identity_center_for_get() :: #{
%%   <<"ApprovalPortalUrl">> => string(),
%%   <<"InstanceArn">> => string(),
%%   <<"Region">> => string()
%% }
-type iam_identity_center_for_get() :: #{binary() => any()}.


%% Example:
%% list_resource_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourcePolicies">> => list(list_resource_policies_response_resource_policy())
%% }
-type list_resource_policies_response() :: #{binary() => any()}.

%% Example:
%% delete_inactive_approval_team_version_response() :: #{}
-type delete_inactive_approval_team_version_response() :: #{}.


%% Example:
%% list_identity_sources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_sources_request() :: #{binary() => any()}.


%% Example:
%% create_identity_source_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"IdentitySourceParameters">> := identity_source_parameters(),
%%   <<"Tags">> => map()
%% }
-type create_identity_source_request() :: #{binary() => any()}.


%% Example:
%% list_approval_teams_response_approval_team() :: #{
%%   <<"ApprovalStrategy">> => list(),
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"NumberOfApprovers">> => [integer()],
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type list_approval_teams_response_approval_team() :: #{binary() => any()}.


%% Example:
%% list_sessions_response_session() :: #{
%%   <<"ActionCompletionStrategy">> => list(any()),
%%   <<"ActionName">> => string(),
%%   <<"ApprovalTeamArn">> => string(),
%%   <<"ApprovalTeamName">> => string(),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"InitiationTime">> => non_neg_integer(),
%%   <<"ProtectedResourceArn">> => string(),
%%   <<"RequesterAccountId">> => string(),
%%   <<"RequesterPrincipalArn">> => string(),
%%   <<"RequesterRegion">> => string(),
%%   <<"RequesterServicePrincipal">> => string(),
%%   <<"SessionArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type list_sessions_response_session() :: #{binary() => any()}.


%% Example:
%% identity_source_parameters() :: #{
%%   <<"IamIdentityCenter">> => iam_identity_center()
%% }
-type identity_source_parameters() :: #{binary() => any()}.

%% Example:
%% delete_identity_source_request() :: #{}
-type delete_identity_source_request() :: #{}.


%% Example:
%% pending_update() :: #{
%%   <<"ApprovalStrategy">> => list(),
%%   <<"Approvers">> => list(get_approval_team_response_approver()),
%%   <<"Description">> => string(),
%%   <<"NumberOfApprovers">> => [integer()],
%%   <<"Status">> => list(any()),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdateInitiationTime">> => non_neg_integer(),
%%   <<"VersionId">> => string()
%% }
-type pending_update() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% update_approval_team_request() :: #{
%%   <<"ApprovalStrategy">> => list(),
%%   <<"Approvers">> => list(approval_team_request_approver()),
%%   <<"Description">> => string()
%% }
-type update_approval_team_request() :: #{binary() => any()}.


%% Example:
%% mof_n_approval_strategy() :: #{
%%   <<"MinApprovalsRequired">> => [integer()]
%% }
-type mof_n_approval_strategy() :: #{binary() => any()}.

-type cancel_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_approval_team_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_identity_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_identity_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_inactive_approval_team_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_approval_team_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_identity_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_policy_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_approval_teams_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_identity_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_policies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_policy_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resource_policies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_sessions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_active_approval_team_deletion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_approval_team_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an approval session.
%%
%% For more information, see Session:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec cancel_session(aws_client:aws_client(), binary() | list(), cancel_session_request()) ->
    {ok, cancel_session_response(), tuple()} |
    {error, any()} |
    {error, cancel_session_errors(), tuple()}.
cancel_session(Client, SessionArn, Input) ->
    cancel_session(Client, SessionArn, Input, []).

-spec cancel_session(aws_client:aws_client(), binary() | list(), cancel_session_request(), proplists:proplist()) ->
    {ok, cancel_session_response(), tuple()} |
    {error, any()} |
    {error, cancel_session_errors(), tuple()}.
cancel_session(Client, SessionArn, Input0, Options0) ->
    Method = put,
    Path = ["/sessions/", aws_util:encode_uri(SessionArn), ""],
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

%% @doc Creates a new approval team.
%%
%% For more information, see Approval team:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec create_approval_team(aws_client:aws_client(), create_approval_team_request()) ->
    {ok, create_approval_team_response(), tuple()} |
    {error, any()} |
    {error, create_approval_team_errors(), tuple()}.
create_approval_team(Client, Input) ->
    create_approval_team(Client, Input, []).

-spec create_approval_team(aws_client:aws_client(), create_approval_team_request(), proplists:proplist()) ->
    {ok, create_approval_team_response(), tuple()} |
    {error, any()} |
    {error, create_approval_team_errors(), tuple()}.
create_approval_team(Client, Input0, Options0) ->
    Method = post,
    Path = ["/approval-teams"],
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

%% @doc Creates a new identity source.
%%
%% For more information, see Identity Source:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec create_identity_source(aws_client:aws_client(), create_identity_source_request()) ->
    {ok, create_identity_source_response(), tuple()} |
    {error, any()} |
    {error, create_identity_source_errors(), tuple()}.
create_identity_source(Client, Input) ->
    create_identity_source(Client, Input, []).

-spec create_identity_source(aws_client:aws_client(), create_identity_source_request(), proplists:proplist()) ->
    {ok, create_identity_source_response(), tuple()} |
    {error, any()} |
    {error, create_identity_source_errors(), tuple()}.
create_identity_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-sources"],
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

%% @doc Deletes an identity source.
%%
%% For more information, see Identity Source:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec delete_identity_source(aws_client:aws_client(), binary() | list(), delete_identity_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_source_errors(), tuple()}.
delete_identity_source(Client, IdentitySourceArn, Input) ->
    delete_identity_source(Client, IdentitySourceArn, Input, []).

-spec delete_identity_source(aws_client:aws_client(), binary() | list(), delete_identity_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_identity_source_errors(), tuple()}.
delete_identity_source(Client, IdentitySourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/identity-sources/", aws_util:encode_uri(IdentitySourceArn), ""],
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

%% @doc Deletes an inactive approval team.
%%
%% For more information, see Team health:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html in the
%% Multi-party approval User Guide.
%%
%% You can also use this operation to delete a team draft. For more
%% information, see Interacting with drafts:
%% https://docs.aws.amazon.com/mpa/latest/userguide/update-team.html#update-team-draft-status
%% in the Multi-party approval User Guide.
-spec delete_inactive_approval_team_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_inactive_approval_team_version_request()) ->
    {ok, delete_inactive_approval_team_version_response(), tuple()} |
    {error, any()} |
    {error, delete_inactive_approval_team_version_errors(), tuple()}.
delete_inactive_approval_team_version(Client, Arn, VersionId, Input) ->
    delete_inactive_approval_team_version(Client, Arn, VersionId, Input, []).

-spec delete_inactive_approval_team_version(aws_client:aws_client(), binary() | list(), binary() | list(), delete_inactive_approval_team_version_request(), proplists:proplist()) ->
    {ok, delete_inactive_approval_team_version_response(), tuple()} |
    {error, any()} |
    {error, delete_inactive_approval_team_version_errors(), tuple()}.
delete_inactive_approval_team_version(Client, Arn, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/approval-teams/", aws_util:encode_uri(Arn), "/", aws_util:encode_uri(VersionId), ""],
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

%% @doc Returns details for an approval team.
-spec get_approval_team(aws_client:aws_client(), binary() | list()) ->
    {ok, get_approval_team_response(), tuple()} |
    {error, any()} |
    {error, get_approval_team_errors(), tuple()}.
get_approval_team(Client, Arn)
  when is_map(Client) ->
    get_approval_team(Client, Arn, #{}, #{}).

-spec get_approval_team(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_approval_team_response(), tuple()} |
    {error, any()} |
    {error, get_approval_team_errors(), tuple()}.
get_approval_team(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_approval_team(Client, Arn, QueryMap, HeadersMap, []).

-spec get_approval_team(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_approval_team_response(), tuple()} |
    {error, any()} |
    {error, get_approval_team_errors(), tuple()}.
get_approval_team(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/approval-teams/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details for an identity source.
%%
%% For more information, see Identity Source:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec get_identity_source(aws_client:aws_client(), binary() | list()) ->
    {ok, get_identity_source_response(), tuple()} |
    {error, any()} |
    {error, get_identity_source_errors(), tuple()}.
get_identity_source(Client, IdentitySourceArn)
  when is_map(Client) ->
    get_identity_source(Client, IdentitySourceArn, #{}, #{}).

-spec get_identity_source(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_identity_source_response(), tuple()} |
    {error, any()} |
    {error, get_identity_source_errors(), tuple()}.
get_identity_source(Client, IdentitySourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_source(Client, IdentitySourceArn, QueryMap, HeadersMap, []).

-spec get_identity_source(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_identity_source_response(), tuple()} |
    {error, any()} |
    {error, get_identity_source_errors(), tuple()}.
get_identity_source(Client, IdentitySourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identity-sources/", aws_util:encode_uri(IdentitySourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details for the version of a policy.
%%
%% Policies define the permissions for team resources.
%%
%% The protected operation for a service integration might require specific
%% permissions. For more information, see How other services work with
%% Multi-party approval:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html in
%% the Multi-party approval User Guide.
-spec get_policy_version(aws_client:aws_client(), binary() | list()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyVersionArn)
  when is_map(Client) ->
    get_policy_version(Client, PolicyVersionArn, #{}, #{}).

-spec get_policy_version(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyVersionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy_version(Client, PolicyVersionArn, QueryMap, HeadersMap, []).

-spec get_policy_version(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_policy_version_response(), tuple()} |
    {error, any()} |
    {error, get_policy_version_errors(), tuple()}.
get_policy_version(Client, PolicyVersionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/policy-versions/", aws_util:encode_uri(PolicyVersionArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a policy for a resource.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetResourcePolicy"],
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

%% @doc Returns details for an approval session.
%%
%% For more information, see Session:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec get_session(aws_client:aws_client(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionArn)
  when is_map(Client) ->
    get_session(Client, SessionArn, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, SessionArn, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, SessionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sessions/", aws_util:encode_uri(SessionArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of approval teams.
-spec list_approval_teams(aws_client:aws_client(), list_approval_teams_request()) ->
    {ok, list_approval_teams_response(), tuple()} |
    {error, any()} |
    {error, list_approval_teams_errors(), tuple()}.
list_approval_teams(Client, Input) ->
    list_approval_teams(Client, Input, []).

-spec list_approval_teams(aws_client:aws_client(), list_approval_teams_request(), proplists:proplist()) ->
    {ok, list_approval_teams_response(), tuple()} |
    {error, any()} |
    {error, list_approval_teams_errors(), tuple()}.
list_approval_teams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/approval-teams/?List"],
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
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of identity sources.
%%
%% For more information, see Identity Source:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec list_identity_sources(aws_client:aws_client(), list_identity_sources_request()) ->
    {ok, list_identity_sources_response(), tuple()} |
    {error, any()} |
    {error, list_identity_sources_errors(), tuple()}.
list_identity_sources(Client, Input) ->
    list_identity_sources(Client, Input, []).

-spec list_identity_sources(aws_client:aws_client(), list_identity_sources_request(), proplists:proplist()) ->
    {ok, list_identity_sources_response(), tuple()} |
    {error, any()} |
    {error, list_identity_sources_errors(), tuple()}.
list_identity_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-sources/?List"],
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
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of policies.
%%
%% Policies define the permissions for team resources.
%%
%% The protected operation for a service integration might require specific
%% permissions. For more information, see How other services work with
%% Multi-party approval:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html in
%% the Multi-party approval User Guide.
-spec list_policies(aws_client:aws_client(), list_policies_request()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input) ->
    list_policies(Client, Input, []).

-spec list_policies(aws_client:aws_client(), list_policies_request(), proplists:proplist()) ->
    {ok, list_policies_response(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/policies/?List"],
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
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the versions for policies.
%%
%% Policies define the permissions for team resources.
%%
%% The protected operation for a service integration might require specific
%% permissions. For more information, see How other services work with
%% Multi-party approval:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html in
%% the Multi-party approval User Guide.
-spec list_policy_versions(aws_client:aws_client(), binary() | list(), list_policy_versions_request()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, PolicyArn, Input) ->
    list_policy_versions(Client, PolicyArn, Input, []).

-spec list_policy_versions(aws_client:aws_client(), binary() | list(), list_policy_versions_request(), proplists:proplist()) ->
    {ok, list_policy_versions_response(), tuple()} |
    {error, any()} |
    {error, list_policy_versions_errors(), tuple()}.
list_policy_versions(Client, PolicyArn, Input0, Options0) ->
    Method = post,
    Path = ["/policies/", aws_util:encode_uri(PolicyArn), "/?List"],
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
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of policies for a resource.
-spec list_resource_policies(aws_client:aws_client(), binary() | list(), list_resource_policies_request()) ->
    {ok, list_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, list_resource_policies_errors(), tuple()}.
list_resource_policies(Client, ResourceArn, Input) ->
    list_resource_policies(Client, ResourceArn, Input, []).

-spec list_resource_policies(aws_client:aws_client(), binary() | list(), list_resource_policies_request(), proplists:proplist()) ->
    {ok, list_resource_policies_response(), tuple()} |
    {error, any()} |
    {error, list_resource_policies_errors(), tuple()}.
list_resource_policies(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resource-policies/", aws_util:encode_uri(ResourceArn), "/?List"],
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
                     {<<"MaxResults">>, <<"MaxResults">>},
                     {<<"NextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of approval sessions.
%%
%% For more information, see Session:
%% https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html in the
%% Multi-party approval User Guide.
-spec list_sessions(aws_client:aws_client(), binary() | list(), list_sessions_request()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, ApprovalTeamArn, Input) ->
    list_sessions(Client, ApprovalTeamArn, Input, []).

-spec list_sessions(aws_client:aws_client(), binary() | list(), list_sessions_request(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, ApprovalTeamArn, Input0, Options0) ->
    Method = post,
    Path = ["/approval-teams/", aws_util:encode_uri(ApprovalTeamArn), "/sessions/?List"],
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

%% @doc Returns a list of the tags for a resource.
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

%% @doc Starts the deletion process for an active approval team.
%%
%% Deletions require team approval
%%
%% Requests to delete an active team must be approved by the team.
-spec start_active_approval_team_deletion(aws_client:aws_client(), binary() | list(), start_active_approval_team_deletion_request()) ->
    {ok, start_active_approval_team_deletion_response(), tuple()} |
    {error, any()} |
    {error, start_active_approval_team_deletion_errors(), tuple()}.
start_active_approval_team_deletion(Client, Arn, Input) ->
    start_active_approval_team_deletion(Client, Arn, Input, []).

-spec start_active_approval_team_deletion(aws_client:aws_client(), binary() | list(), start_active_approval_team_deletion_request(), proplists:proplist()) ->
    {ok, start_active_approval_team_deletion_response(), tuple()} |
    {error, any()} |
    {error, start_active_approval_team_deletion_errors(), tuple()}.
start_active_approval_team_deletion(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/approval-teams/", aws_util:encode_uri(Arn), "?Delete"],
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

%% @doc Creates or updates a resource tag.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources.
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
    Method = put,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a resource tag.
%%
%% Each tag is a label consisting of a user-defined key and value. Tags can
%% help you manage, identify, organize, search for, and filter resources.
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
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates an approval team.
%%
%% You can request to update the team description, approval threshold, and
%% approvers in the team.
%%
%% Updates require team approval
%%
%% Updates to an active team must be approved by the team.
-spec update_approval_team(aws_client:aws_client(), binary() | list(), update_approval_team_request()) ->
    {ok, update_approval_team_response(), tuple()} |
    {error, any()} |
    {error, update_approval_team_errors(), tuple()}.
update_approval_team(Client, Arn, Input) ->
    update_approval_team(Client, Arn, Input, []).

-spec update_approval_team(aws_client:aws_client(), binary() | list(), update_approval_team_request(), proplists:proplist()) ->
    {ok, update_approval_team_response(), tuple()} |
    {error, any()} |
    {error, update_approval_team_errors(), tuple()}.
update_approval_team(Client, Arn, Input0, Options0) ->
    Method = patch,
    Path = ["/approval-teams/", aws_util:encode_uri(Arn), ""],
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"mpa">>},
    Host = build_host(<<"mpa">>, Client1),
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
