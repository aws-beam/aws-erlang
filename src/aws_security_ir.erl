%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This guide provides documents the action and response elements for
%% customer use of the service.
-module(aws_security_ir).

-export([batch_get_member_account_details/3,
         batch_get_member_account_details/4,
         cancel_membership/3,
         cancel_membership/4,
         close_case/3,
         close_case/4,
         create_case/2,
         create_case/3,
         create_case_comment/3,
         create_case_comment/4,
         create_membership/2,
         create_membership/3,
         get_case/2,
         get_case/4,
         get_case/5,
         get_case_attachment_download_url/3,
         get_case_attachment_download_url/5,
         get_case_attachment_download_url/6,
         get_case_attachment_upload_url/3,
         get_case_attachment_upload_url/4,
         get_membership/2,
         get_membership/4,
         get_membership/5,
         list_case_edits/3,
         list_case_edits/4,
         list_cases/2,
         list_cases/3,
         list_comments/3,
         list_comments/4,
         list_memberships/2,
         list_memberships/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_case/3,
         update_case/4,
         update_case_comment/4,
         update_case_comment/5,
         update_case_status/3,
         update_case_status/4,
         update_membership/3,
         update_membership/4,
         update_resolver_type/3,
         update_resolver_type/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% case_attachment_attributes() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"attachmentStatus">> => list(any()),
%%   <<"createdDate">> => [non_neg_integer()],
%%   <<"creator">> => string(),
%%   <<"fileName">> => string()
%% }
-type case_attachment_attributes() :: #{binary() => any()}.


%% Example:
%% get_membership_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"customerType">> => list(any()),
%%   <<"incidentResponseTeam">> => list(incident_responder()()),
%%   <<"membershipActivationTimestamp">> => [non_neg_integer()],
%%   <<"membershipArn">> => string(),
%%   <<"membershipDeactivationTimestamp">> => [non_neg_integer()],
%%   <<"membershipId">> => string(),
%%   <<"membershipName">> => string(),
%%   <<"membershipStatus">> => list(any()),
%%   <<"numberOfAccountsCovered">> => [float()],
%%   <<"optInFeatures">> => list(opt_in_feature()()),
%%   <<"region">> => list(any())
%% }
-type get_membership_response() :: #{binary() => any()}.


%% Example:
%% security_incident_response_not_active_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type security_incident_response_not_active_exception() :: #{binary() => any()}.


%% Example:
%% get_membership_account_detail_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"error">> => [string()],
%%   <<"message">> => [string()]
%% }
-type get_membership_account_detail_error() :: #{binary() => any()}.


%% Example:
%% list_membership_item() :: #{
%%   <<"accountId">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"membershipStatus">> => list(any()),
%%   <<"region">> => list(any())
%% }
-type list_membership_item() :: #{binary() => any()}.


%% Example:
%% get_membership_account_detail_item() :: #{
%%   <<"accountId">> => string(),
%%   <<"relationshipStatus">> => list(any()),
%%   <<"relationshipType">> => list(any())
%% }
-type get_membership_account_detail_item() :: #{binary() => any()}.


%% Example:
%% create_case_comment_request() :: #{
%%   <<"body">> := string(),
%%   <<"clientToken">> => [string()]
%% }
-type create_case_comment_request() :: #{binary() => any()}.


%% Example:
%% watcher() :: #{
%%   <<"email">> => string(),
%%   <<"jobTitle">> => string(),
%%   <<"name">> => string()
%% }
-type watcher() :: #{binary() => any()}.


%% Example:
%% list_memberships_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_memberships_request() :: #{binary() => any()}.


%% Example:
%% impacted_aws_region() :: #{
%%   <<"region">> => list(any())
%% }
-type impacted_aws_region() :: #{binary() => any()}.


%% Example:
%% create_case_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"description">> := string(),
%%   <<"engagementType">> := list(any()),
%%   <<"impactedAccounts">> := list(string()()),
%%   <<"impactedAwsRegions">> => list(impacted_aws_region()()),
%%   <<"impactedServices">> => list(string()()),
%%   <<"reportedIncidentStartDate">> := [non_neg_integer()],
%%   <<"resolverType">> := list(any()),
%%   <<"tags">> => map(),
%%   <<"threatActorIpAddresses">> => list(threat_actor_ip()()),
%%   <<"title">> := string(),
%%   <<"watchers">> := list(watcher()())
%% }
-type create_case_request() :: #{binary() => any()}.


%% Example:
%% incident_responder() :: #{
%%   <<"email">> => string(),
%%   <<"jobTitle">> => string(),
%%   <<"name">> => string()
%% }
-type incident_responder() :: #{binary() => any()}.


%% Example:
%% create_case_response() :: #{
%%   <<"caseId">> => string()
%% }
-type create_case_response() :: #{binary() => any()}.


%% Example:
%% batch_get_member_account_details_request() :: #{
%%   <<"accountIds">> := list(string()())
%% }
-type batch_get_member_account_details_request() :: #{binary() => any()}.


%% Example:
%% update_resolver_type_response() :: #{
%%   <<"caseId">> => string(),
%%   <<"caseStatus">> => list(any()),
%%   <<"resolverType">> => list(any())
%% }
-type update_resolver_type_response() :: #{binary() => any()}.


%% Example:
%% list_cases_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_cases_request() :: #{binary() => any()}.


%% Example:
%% get_case_response() :: #{
%%   <<"actualIncidentStartDate">> => [non_neg_integer()],
%%   <<"caseArn">> => string(),
%%   <<"caseAttachments">> => list(case_attachment_attributes()()),
%%   <<"caseStatus">> => list(any()),
%%   <<"closedDate">> => [non_neg_integer()],
%%   <<"closureCode">> => list(any()),
%%   <<"createdDate">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"engagementType">> => list(any()),
%%   <<"impactedAccounts">> => list(string()()),
%%   <<"impactedAwsRegions">> => list(impacted_aws_region()()),
%%   <<"impactedServices">> => list(string()()),
%%   <<"lastUpdatedDate">> => [non_neg_integer()],
%%   <<"pendingAction">> => list(any()),
%%   <<"reportedIncidentStartDate">> => [non_neg_integer()],
%%   <<"resolverType">> => list(any()),
%%   <<"threatActorIpAddresses">> => list(threat_actor_ip()()),
%%   <<"title">> => string(),
%%   <<"watchers">> => list(watcher()())
%% }
-type get_case_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% list_cases_response() :: #{
%%   <<"items">> => list(list_cases_item()()),
%%   <<"nextToken">> => [string()],
%%   <<"total">> => [float()]
%% }
-type list_cases_response() :: #{binary() => any()}.


%% Example:
%% list_comments_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_comments_request() :: #{binary() => any()}.


%% Example:
%% list_cases_item() :: #{
%%   <<"caseArn">> => string(),
%%   <<"caseId">> => string(),
%%   <<"caseStatus">> => list(any()),
%%   <<"closedDate">> => [non_neg_integer()],
%%   <<"createdDate">> => [non_neg_integer()],
%%   <<"engagementType">> => list(any()),
%%   <<"lastUpdatedDate">> => [non_neg_integer()],
%%   <<"pendingAction">> => list(any()),
%%   <<"resolverType">> => list(any()),
%%   <<"title">> => string()
%% }
-type list_cases_item() :: #{binary() => any()}.


%% Example:
%% close_case_response() :: #{
%%   <<"caseStatus">> => list(any()),
%%   <<"closedDate">> => [non_neg_integer()]
%% }
-type close_case_response() :: #{binary() => any()}.

%% Example:
%% get_case_attachment_download_url_request() :: #{}
-type get_case_attachment_download_url_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_case_attachment_upload_url_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"contentLength">> := float(),
%%   <<"fileName">> := string()
%% }
-type get_case_attachment_upload_url_request() :: #{binary() => any()}.

%% Example:
%% get_case_request() :: #{}
-type get_case_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_case_edits_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_case_edits_request() :: #{binary() => any()}.

%% Example:
%% update_membership_response() :: #{}
-type update_membership_response() :: #{}.


%% Example:
%% update_case_status_response() :: #{
%%   <<"caseStatus">> => list(any())
%% }
-type update_case_status_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% get_case_attachment_download_url_response() :: #{
%%   <<"attachmentPresignedUrl">> => string()
%% }
-type get_case_attachment_download_url_response() :: #{binary() => any()}.


%% Example:
%% update_case_comment_request() :: #{
%%   <<"body">> := string()
%% }
-type update_case_comment_request() :: #{binary() => any()}.


%% Example:
%% list_case_edits_response() :: #{
%%   <<"items">> => list(case_edit_item()()),
%%   <<"nextToken">> => [string()],
%%   <<"total">> => [integer()]
%% }
-type list_case_edits_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% close_case_request() :: #{}
-type close_case_request() :: #{}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% update_case_status_request() :: #{
%%   <<"caseStatus">> := list(any())
%% }
-type update_case_status_request() :: #{binary() => any()}.

%% Example:
%% get_membership_request() :: #{}
-type get_membership_request() :: #{}.


%% Example:
%% update_membership_request() :: #{
%%   <<"incidentResponseTeam">> => list(incident_responder()()),
%%   <<"membershipName">> => string(),
%%   <<"optInFeatures">> => list(opt_in_feature()())
%% }
-type update_membership_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_case_request() :: #{
%%   <<"actualIncidentStartDate">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"engagementType">> => list(any()),
%%   <<"impactedAccountsToAdd">> => list(string()()),
%%   <<"impactedAccountsToDelete">> => list(string()()),
%%   <<"impactedAwsRegionsToAdd">> => list(impacted_aws_region()()),
%%   <<"impactedAwsRegionsToDelete">> => list(impacted_aws_region()()),
%%   <<"impactedServicesToAdd">> => list(string()()),
%%   <<"impactedServicesToDelete">> => list(string()()),
%%   <<"reportedIncidentStartDate">> => [non_neg_integer()],
%%   <<"threatActorIpAddressesToAdd">> => list(threat_actor_ip()()),
%%   <<"threatActorIpAddressesToDelete">> => list(threat_actor_ip()()),
%%   <<"title">> => string(),
%%   <<"watchersToAdd">> => list(watcher()()),
%%   <<"watchersToDelete">> => list(watcher()())
%% }
-type update_case_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% opt_in_feature() :: #{
%%   <<"featureName">> => list(any()),
%%   <<"isEnabled">> => [boolean()]
%% }
-type opt_in_feature() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% case_edit_item() :: #{
%%   <<"action">> => string(),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"message">> => string(),
%%   <<"principal">> => [string()]
%% }
-type case_edit_item() :: #{binary() => any()}.


%% Example:
%% list_memberships_response() :: #{
%%   <<"items">> => list(list_membership_item()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_memberships_response() :: #{binary() => any()}.


%% Example:
%% get_case_attachment_upload_url_response() :: #{
%%   <<"attachmentPresignedUrl">> => string()
%% }
-type get_case_attachment_upload_url_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_member_account_details_response() :: #{
%%   <<"errors">> => list(get_membership_account_detail_error()()),
%%   <<"items">> => list(get_membership_account_detail_item()())
%% }
-type batch_get_member_account_details_response() :: #{binary() => any()}.


%% Example:
%% update_case_comment_response() :: #{
%%   <<"body">> => string(),
%%   <<"commentId">> => string()
%% }
-type update_case_comment_response() :: #{binary() => any()}.


%% Example:
%% list_comments_item() :: #{
%%   <<"body">> => string(),
%%   <<"commentId">> => string(),
%%   <<"createdDate">> => [non_neg_integer()],
%%   <<"creator">> => string(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"lastUpdatedDate">> => [non_neg_integer()]
%% }
-type list_comments_item() :: #{binary() => any()}.


%% Example:
%% create_case_comment_response() :: #{
%%   <<"commentId">> => string()
%% }
-type create_case_comment_response() :: #{binary() => any()}.


%% Example:
%% update_resolver_type_request() :: #{
%%   <<"resolverType">> := list(any())
%% }
-type update_resolver_type_request() :: #{binary() => any()}.


%% Example:
%% create_membership_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"incidentResponseTeam">> := list(incident_responder()()),
%%   <<"membershipName">> := string(),
%%   <<"optInFeatures">> => list(opt_in_feature()()),
%%   <<"tags">> => map()
%% }
-type create_membership_request() :: #{binary() => any()}.

%% Example:
%% cancel_membership_request() :: #{}
-type cancel_membership_request() :: #{}.

%% Example:
%% update_case_response() :: #{}
-type update_case_response() :: #{}.


%% Example:
%% list_comments_response() :: #{
%%   <<"items">> => list(list_comments_item()()),
%%   <<"nextToken">> => [string()],
%%   <<"total">> => [integer()]
%% }
-type list_comments_response() :: #{binary() => any()}.


%% Example:
%% invalid_token_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_token_exception() :: #{binary() => any()}.


%% Example:
%% create_membership_response() :: #{
%%   <<"membershipId">> => string()
%% }
-type create_membership_response() :: #{binary() => any()}.


%% Example:
%% cancel_membership_response() :: #{
%%   <<"membershipId">> => string()
%% }
-type cancel_membership_response() :: #{binary() => any()}.


%% Example:
%% threat_actor_ip() :: #{
%%   <<"ipAddress">> => string(),
%%   <<"userAgent">> => string()
%% }
-type threat_actor_ip() :: #{binary() => any()}.

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Grants permission to view an existing membership.
-spec batch_get_member_account_details(aws_client:aws_client(), binary() | list(), batch_get_member_account_details_request()) ->
    {ok, batch_get_member_account_details_response(), tuple()} |
    {error, any()}.
batch_get_member_account_details(Client, MembershipId, Input) ->
    batch_get_member_account_details(Client, MembershipId, Input, []).

-spec batch_get_member_account_details(aws_client:aws_client(), binary() | list(), batch_get_member_account_details_request(), proplists:proplist()) ->
    {ok, batch_get_member_account_details_response(), tuple()} |
    {error, any()}.
batch_get_member_account_details(Client, MembershipId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/membership/", aws_util:encode_uri(MembershipId), "/batch-member-details"],
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

%% @doc Grants permissions to cancel an existing membership.
-spec cancel_membership(aws_client:aws_client(), binary() | list(), cancel_membership_request()) ->
    {ok, cancel_membership_response(), tuple()} |
    {error, any()}.
cancel_membership(Client, MembershipId, Input) ->
    cancel_membership(Client, MembershipId, Input, []).

-spec cancel_membership(aws_client:aws_client(), binary() | list(), cancel_membership_request(), proplists:proplist()) ->
    {ok, cancel_membership_response(), tuple()} |
    {error, any()}.
cancel_membership(Client, MembershipId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/membership/", aws_util:encode_uri(MembershipId), ""],
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

%% @doc Grants permission to close an existing case.
-spec close_case(aws_client:aws_client(), binary() | list(), close_case_request()) ->
    {ok, close_case_response(), tuple()} |
    {error, any()}.
close_case(Client, CaseId, Input) ->
    close_case(Client, CaseId, Input, []).

-spec close_case(aws_client:aws_client(), binary() | list(), close_case_request(), proplists:proplist()) ->
    {ok, close_case_response(), tuple()} |
    {error, any()}.
close_case(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/close-case"],
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

%% @doc Grants permission to create a new case.
-spec create_case(aws_client:aws_client(), create_case_request()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()}.
create_case(Client, Input) ->
    create_case(Client, Input, []).

-spec create_case(aws_client:aws_client(), create_case_request(), proplists:proplist()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()}.
create_case(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/create-case"],
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

%% @doc Grants permission to add a comment to an existing case.
-spec create_case_comment(aws_client:aws_client(), binary() | list(), create_case_comment_request()) ->
    {ok, create_case_comment_response(), tuple()} |
    {error, any()}.
create_case_comment(Client, CaseId, Input) ->
    create_case_comment(Client, CaseId, Input, []).

-spec create_case_comment(aws_client:aws_client(), binary() | list(), create_case_comment_request(), proplists:proplist()) ->
    {ok, create_case_comment_response(), tuple()} |
    {error, any()}.
create_case_comment(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/create-comment"],
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

%% @doc Grants permissions to create a new membership.
-spec create_membership(aws_client:aws_client(), create_membership_request()) ->
    {ok, create_membership_response(), tuple()} |
    {error, any()}.
create_membership(Client, Input) ->
    create_membership(Client, Input, []).

-spec create_membership(aws_client:aws_client(), create_membership_request(), proplists:proplist()) ->
    {ok, create_membership_response(), tuple()} |
    {error, any()}.
create_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/membership"],
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

%% @doc Grant permission to view a designated case.
-spec get_case(aws_client:aws_client(), binary() | list()) ->
    {ok, get_case_response(), tuple()} |
    {error, any()}.
get_case(Client, CaseId)
  when is_map(Client) ->
    get_case(Client, CaseId, #{}, #{}).

-spec get_case(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_case_response(), tuple()} |
    {error, any()}.
get_case(Client, CaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_case(Client, CaseId, QueryMap, HeadersMap, []).

-spec get_case(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_case_response(), tuple()} |
    {error, any()}.
get_case(Client, CaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/get-case"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to obtain an Amazon S3 presigned URL to download an
%% attachment.
-spec get_case_attachment_download_url(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_case_attachment_download_url_response(), tuple()} |
    {error, any()}.
get_case_attachment_download_url(Client, AttachmentId, CaseId)
  when is_map(Client) ->
    get_case_attachment_download_url(Client, AttachmentId, CaseId, #{}, #{}).

-spec get_case_attachment_download_url(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_case_attachment_download_url_response(), tuple()} |
    {error, any()}.
get_case_attachment_download_url(Client, AttachmentId, CaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_case_attachment_download_url(Client, AttachmentId, CaseId, QueryMap, HeadersMap, []).

-spec get_case_attachment_download_url(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_case_attachment_download_url_response(), tuple()} |
    {error, any()}.
get_case_attachment_download_url(Client, AttachmentId, CaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/get-presigned-url/", aws_util:encode_uri(AttachmentId), ""],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to upload an attachment to a case.
-spec get_case_attachment_upload_url(aws_client:aws_client(), binary() | list(), get_case_attachment_upload_url_request()) ->
    {ok, get_case_attachment_upload_url_response(), tuple()} |
    {error, any()}.
get_case_attachment_upload_url(Client, CaseId, Input) ->
    get_case_attachment_upload_url(Client, CaseId, Input, []).

-spec get_case_attachment_upload_url(aws_client:aws_client(), binary() | list(), get_case_attachment_upload_url_request(), proplists:proplist()) ->
    {ok, get_case_attachment_upload_url_response(), tuple()} |
    {error, any()}.
get_case_attachment_upload_url(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/get-presigned-url"],
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

%% @doc Grants permission to get details of a designated service membership.
-spec get_membership(aws_client:aws_client(), binary() | list()) ->
    {ok, get_membership_response(), tuple()} |
    {error, any()}.
get_membership(Client, MembershipId)
  when is_map(Client) ->
    get_membership(Client, MembershipId, #{}, #{}).

-spec get_membership(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_membership_response(), tuple()} |
    {error, any()}.
get_membership(Client, MembershipId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_membership(Client, MembershipId, QueryMap, HeadersMap, []).

-spec get_membership(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_membership_response(), tuple()} |
    {error, any()}.
get_membership(Client, MembershipId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/membership/", aws_util:encode_uri(MembershipId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permissions to view the aidt log for edits made to a
%% designated case.
-spec list_case_edits(aws_client:aws_client(), binary() | list(), list_case_edits_request()) ->
    {ok, list_case_edits_response(), tuple()} |
    {error, any()}.
list_case_edits(Client, CaseId, Input) ->
    list_case_edits(Client, CaseId, Input, []).

-spec list_case_edits(aws_client:aws_client(), binary() | list(), list_case_edits_request(), proplists:proplist()) ->
    {ok, list_case_edits_response(), tuple()} |
    {error, any()}.
list_case_edits(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/list-case-edits"],
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

%% @doc Grants permission to list all cases the requester has access to.
-spec list_cases(aws_client:aws_client(), list_cases_request()) ->
    {ok, list_cases_response(), tuple()} |
    {error, any()}.
list_cases(Client, Input) ->
    list_cases(Client, Input, []).

-spec list_cases(aws_client:aws_client(), list_cases_request(), proplists:proplist()) ->
    {ok, list_cases_response(), tuple()} |
    {error, any()}.
list_cases(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/list-cases"],
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

%% @doc Grants permissions to list and view comments for a designated case.
-spec list_comments(aws_client:aws_client(), binary() | list(), list_comments_request()) ->
    {ok, list_comments_response(), tuple()} |
    {error, any()}.
list_comments(Client, CaseId, Input) ->
    list_comments(Client, CaseId, Input, []).

-spec list_comments(aws_client:aws_client(), binary() | list(), list_comments_request(), proplists:proplist()) ->
    {ok, list_comments_response(), tuple()} |
    {error, any()}.
list_comments(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/list-comments"],
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

%% @doc Grants permission to query the memberships a principal has access to.
-spec list_memberships(aws_client:aws_client(), list_memberships_request()) ->
    {ok, list_memberships_response(), tuple()} |
    {error, any()}.
list_memberships(Client, Input) ->
    list_memberships(Client, Input, []).

-spec list_memberships(aws_client:aws_client(), list_memberships_request(), proplists:proplist()) ->
    {ok, list_memberships_response(), tuple()} |
    {error, any()}.
list_memberships(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/memberships"],
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

%% @doc Grants permission to view currently configured tags on a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Grants permission to add a tag(s) to a designated resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Grants permission to remove a tag(s) from a designate resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Grants permission to update an existing case.
-spec update_case(aws_client:aws_client(), binary() | list(), update_case_request()) ->
    {ok, update_case_response(), tuple()} |
    {error, any()}.
update_case(Client, CaseId, Input) ->
    update_case(Client, CaseId, Input, []).

-spec update_case(aws_client:aws_client(), binary() | list(), update_case_request(), proplists:proplist()) ->
    {ok, update_case_response(), tuple()} |
    {error, any()}.
update_case(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/update-case"],
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

%% @doc Grants permission to update an existing case comment.
-spec update_case_comment(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_comment_request()) ->
    {ok, update_case_comment_response(), tuple()} |
    {error, any()}.
update_case_comment(Client, CaseId, CommentId, Input) ->
    update_case_comment(Client, CaseId, CommentId, Input, []).

-spec update_case_comment(aws_client:aws_client(), binary() | list(), binary() | list(), update_case_comment_request(), proplists:proplist()) ->
    {ok, update_case_comment_response(), tuple()} |
    {error, any()}.
update_case_comment(Client, CaseId, CommentId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/update-case-comment/", aws_util:encode_uri(CommentId), ""],
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

%% @doc Grants permission to update the status for a designated cases.
%%
%% Options include `Submitted | Detection and Analysis | Eradication,
%% Containment and Recovery | Post-Incident Activities | Closed'.
-spec update_case_status(aws_client:aws_client(), binary() | list(), update_case_status_request()) ->
    {ok, update_case_status_response(), tuple()} |
    {error, any()}.
update_case_status(Client, CaseId, Input) ->
    update_case_status(Client, CaseId, Input, []).

-spec update_case_status(aws_client:aws_client(), binary() | list(), update_case_status_request(), proplists:proplist()) ->
    {ok, update_case_status_response(), tuple()} |
    {error, any()}.
update_case_status(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/update-case-status"],
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

%% @doc Grants access to UpdateMembership to change membership configuration.
-spec update_membership(aws_client:aws_client(), binary() | list(), update_membership_request()) ->
    {ok, update_membership_response(), tuple()} |
    {error, any()}.
update_membership(Client, MembershipId, Input) ->
    update_membership(Client, MembershipId, Input, []).

-spec update_membership(aws_client:aws_client(), binary() | list(), update_membership_request(), proplists:proplist()) ->
    {ok, update_membership_response(), tuple()} |
    {error, any()}.
update_membership(Client, MembershipId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/membership/", aws_util:encode_uri(MembershipId), "/update-membership"],
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

%% @doc Grants permission to update the resolver type for a case.
%%
%% This is a one-way action and cannot be reversed.
%%
%% Options include self-supported &gt; AWS-supported.
-spec update_resolver_type(aws_client:aws_client(), binary() | list(), update_resolver_type_request()) ->
    {ok, update_resolver_type_response(), tuple()} |
    {error, any()}.
update_resolver_type(Client, CaseId, Input) ->
    update_resolver_type(Client, CaseId, Input, []).

-spec update_resolver_type(aws_client:aws_client(), binary() | list(), update_resolver_type_request(), proplists:proplist()) ->
    {ok, update_resolver_type_response(), tuple()} |
    {error, any()}.
update_resolver_type(Client, CaseId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/cases/", aws_util:encode_uri(CaseId), "/update-resolver-type"],
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
    Client1 = Client#{service => <<"security-ir">>},
    Host = build_host(<<"security-ir">>, Client1),
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
