%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Well-Architected Tool
%%
%% This is the Well-Architected Tool API Reference.
%%
%% The WA Tool API provides programmatic access to the Well-Architected Tool
%% in the Amazon Web Services Management Console. For information about the
%% Well-Architected Tool, see the Well-Architected Tool User Guide.
-module(aws_wellarchitected).

-export([associate_lenses/3,
         associate_lenses/4,
         associate_profiles/3,
         associate_profiles/4,
         create_lens_share/3,
         create_lens_share/4,
         create_lens_version/3,
         create_lens_version/4,
         create_milestone/3,
         create_milestone/4,
         create_profile/2,
         create_profile/3,
         create_profile_share/3,
         create_profile_share/4,
         create_review_template/2,
         create_review_template/3,
         create_template_share/3,
         create_template_share/4,
         create_workload/2,
         create_workload/3,
         create_workload_share/3,
         create_workload_share/4,
         delete_lens/3,
         delete_lens/4,
         delete_lens_share/4,
         delete_lens_share/5,
         delete_profile/3,
         delete_profile/4,
         delete_profile_share/4,
         delete_profile_share/5,
         delete_review_template/3,
         delete_review_template/4,
         delete_template_share/4,
         delete_template_share/5,
         delete_workload/3,
         delete_workload/4,
         delete_workload_share/4,
         delete_workload_share/5,
         disassociate_lenses/3,
         disassociate_lenses/4,
         disassociate_profiles/3,
         disassociate_profiles/4,
         export_lens/2,
         export_lens/4,
         export_lens/5,
         get_answer/4,
         get_answer/6,
         get_answer/7,
         get_consolidated_report/2,
         get_consolidated_report/4,
         get_consolidated_report/5,
         get_lens/2,
         get_lens/4,
         get_lens/5,
         get_lens_review/3,
         get_lens_review/5,
         get_lens_review/6,
         get_lens_review_report/3,
         get_lens_review_report/5,
         get_lens_review_report/6,
         get_lens_version_difference/2,
         get_lens_version_difference/4,
         get_lens_version_difference/5,
         get_milestone/3,
         get_milestone/5,
         get_milestone/6,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_profile_template/1,
         get_profile_template/3,
         get_profile_template/4,
         get_review_template/2,
         get_review_template/4,
         get_review_template/5,
         get_review_template_answer/4,
         get_review_template_answer/6,
         get_review_template_answer/7,
         get_review_template_lens_review/3,
         get_review_template_lens_review/5,
         get_review_template_lens_review/6,
         get_workload/2,
         get_workload/4,
         get_workload/5,
         import_lens/2,
         import_lens/3,
         list_answers/3,
         list_answers/5,
         list_answers/6,
         list_check_details/3,
         list_check_details/4,
         list_check_summaries/3,
         list_check_summaries/4,
         list_lens_review_improvements/3,
         list_lens_review_improvements/5,
         list_lens_review_improvements/6,
         list_lens_reviews/2,
         list_lens_reviews/4,
         list_lens_reviews/5,
         list_lens_shares/2,
         list_lens_shares/4,
         list_lens_shares/5,
         list_lenses/1,
         list_lenses/3,
         list_lenses/4,
         list_milestones/3,
         list_milestones/4,
         list_notifications/2,
         list_notifications/3,
         list_profile_notifications/1,
         list_profile_notifications/3,
         list_profile_notifications/4,
         list_profile_shares/2,
         list_profile_shares/4,
         list_profile_shares/5,
         list_profiles/1,
         list_profiles/3,
         list_profiles/4,
         list_review_template_answers/3,
         list_review_template_answers/5,
         list_review_template_answers/6,
         list_review_templates/1,
         list_review_templates/3,
         list_review_templates/4,
         list_share_invitations/1,
         list_share_invitations/3,
         list_share_invitations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_shares/2,
         list_template_shares/4,
         list_template_shares/5,
         list_workload_shares/2,
         list_workload_shares/4,
         list_workload_shares/5,
         list_workloads/2,
         list_workloads/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_answer/5,
         update_answer/6,
         update_global_settings/2,
         update_global_settings/3,
         update_lens_review/4,
         update_lens_review/5,
         update_profile/3,
         update_profile/4,
         update_review_template/3,
         update_review_template/4,
         update_review_template_answer/5,
         update_review_template_answer/6,
         update_review_template_lens_review/4,
         update_review_template_lens_review/5,
         update_share_invitation/3,
         update_share_invitation/4,
         update_workload/3,
         update_workload/4,
         update_workload_share/4,
         update_workload_share/5,
         upgrade_lens_review/4,
         upgrade_lens_review/5,
         upgrade_profile_version/4,
         upgrade_profile_version/5,
         upgrade_review_template_lens_review/4,
         upgrade_review_template_lens_review/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associate a lens to a workload.
%%
%% Up to 10 lenses can be associated with a workload in a single API
%% operation. A maximum of 20 lenses can be associated with a workload.
%%
%% Disclaimer
%%
%% By accessing and/or applying custom lenses created by another Amazon Web
%% Services user or account, you acknowledge that custom lenses created by
%% other users and shared with you are Third Party Content as defined in the
%% Amazon Web Services Customer Agreement.
associate_lenses(Client, WorkloadId, Input) ->
    associate_lenses(Client, WorkloadId, Input, []).
associate_lenses(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/associateLenses"],
    SuccessStatusCode = undefined,
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

%% @doc Associate a profile with a workload.
associate_profiles(Client, WorkloadId, Input) ->
    associate_profiles(Client, WorkloadId, Input, []).
associate_profiles(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/associateProfiles"],
    SuccessStatusCode = undefined,
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

%% @doc Create a lens share.
%%
%% The owner of a lens can share it with other Amazon Web Services accounts,
%% users, an organization, and organizational units (OUs) in the same Amazon
%% Web Services Region. Lenses provided by Amazon Web Services (Amazon Web
%% Services Official Content) cannot be shared.
%%
%% Shared access to a lens is not removed until the lens invitation is
%% deleted.
%%
%% If you share a lens with an organization or OU, all accounts in the
%% organization or OU are granted access to the lens.
%%
%% For more information, see Sharing a custom lens in the Well-Architected
%% Tool User Guide.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts, you
%% acknowledge that Amazon Web Services will make your custom lenses
%% available to those other accounts. Those other accounts may continue to
%% access and use your shared custom lenses even if you delete the custom
%% lenses from your own Amazon Web Services account or terminate your Amazon
%% Web Services account.
create_lens_share(Client, LensAlias, Input) ->
    create_lens_share(Client, LensAlias, Input, []).
create_lens_share(Client, LensAlias, Input0, Options0) ->
    Method = post,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares"],
    SuccessStatusCode = undefined,
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

%% @doc Create a new lens version.
%%
%% A lens can have up to 100 versions.
%%
%% Use this operation to publish a new lens version after you have imported a
%% lens. The `LensAlias' is used to identify the lens to be published.
%% The owner of a lens can share the lens with other Amazon Web Services
%% accounts and users in the same Amazon Web Services Region. Only the owner
%% of a lens can delete it.
create_lens_version(Client, LensAlias, Input) ->
    create_lens_version(Client, LensAlias, Input, []).
create_lens_version(Client, LensAlias, Input0, Options0) ->
    Method = post,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/versions"],
    SuccessStatusCode = undefined,
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

%% @doc Create a milestone for an existing workload.
create_milestone(Client, WorkloadId, Input) ->
    create_milestone(Client, WorkloadId, Input, []).
create_milestone(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestones"],
    SuccessStatusCode = undefined,
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

%% @doc Create a profile.
create_profile(Client, Input) ->
    create_profile(Client, Input, []).
create_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profiles"],
    SuccessStatusCode = undefined,
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

%% @doc Create a profile share.
create_profile_share(Client, ProfileArn, Input) ->
    create_profile_share(Client, ProfileArn, Input, []).
create_profile_share(Client, ProfileArn, Input0, Options0) ->
    Method = post,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares"],
    SuccessStatusCode = undefined,
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

%% @doc Create a review template.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or other identifiable individuals in or via your review templates.
%% If your review template or those shared with you and used in your account
%% do include or collect PII you are responsible for: ensuring that the
%% included PII is processed in accordance with applicable law, providing
%% adequate privacy notices, and obtaining necessary consents for processing
%% such data.
create_review_template(Client, Input) ->
    create_review_template(Client, Input, []).
create_review_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reviewTemplates"],
    SuccessStatusCode = undefined,
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

%% @doc Create a review template share.
%%
%% The owner of a review template can share it with other Amazon Web Services
%% accounts, users, an organization, and organizational units (OUs) in the
%% same Amazon Web Services Region.
%%
%% Shared access to a review template is not removed until the review
%% template share invitation is deleted.
%%
%% If you share a review template with an organization or OU, all accounts in
%% the organization or OU are granted access to the review template.
%%
%% Disclaimer
%%
%% By sharing your review template with other Amazon Web Services accounts,
%% you acknowledge that Amazon Web Services will make your review template
%% available to those other accounts.
create_template_share(Client, TemplateArn, Input) ->
    create_template_share(Client, TemplateArn, Input, []).
create_template_share(Client, TemplateArn, Input0, Options0) ->
    Method = post,
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Create a new workload.
%%
%% The owner of a workload can share the workload with other Amazon Web
%% Services accounts, users, an organization, and organizational units (OUs)
%% in the same Amazon Web Services Region. Only the owner of a workload can
%% delete it.
%%
%% For more information, see Defining a Workload in the Well-Architected Tool
%% User Guide.
%%
%% Either `AwsRegions', `NonAwsRegions', or both must be specified
%% when creating a workload.
%%
%% You also must specify `ReviewOwner', even though the parameter is
%% listed as not being required in the following section.
%%
%% When creating a workload using a review template, you must have the
%% following IAM permissions:
%%
%% <ul> <li> `wellarchitected:GetReviewTemplate'
%%
%% </li> <li> `wellarchitected:GetReviewTemplateAnswer'
%%
%% </li> <li> `wellarchitected:ListReviewTemplateAnswers'
%%
%% </li> <li> `wellarchitected:GetReviewTemplateLensReview'
%%
%% </li> </ul>
create_workload(Client, Input) ->
    create_workload(Client, Input, []).
create_workload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workloads"],
    SuccessStatusCode = undefined,
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

%% @doc Create a workload share.
%%
%% The owner of a workload can share it with other Amazon Web Services
%% accounts and users in the same Amazon Web Services Region. Shared access
%% to a workload is not removed until the workload invitation is deleted.
%%
%% If you share a workload with an organization or OU, all accounts in the
%% organization or OU are granted access to the workload.
%%
%% For more information, see Sharing a workload in the Well-Architected Tool
%% User Guide.
create_workload_share(Client, WorkloadId, Input) ->
    create_workload_share(Client, WorkloadId, Input, []).
create_workload_share(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares"],
    SuccessStatusCode = undefined,
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

%% @doc Delete an existing lens.
%%
%% Only the owner of a lens can delete it. After the lens is deleted, Amazon
%% Web Services accounts and users that you shared the lens with can continue
%% to use it, but they will no longer be able to apply it to new workloads.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts, you
%% acknowledge that Amazon Web Services will make your custom lenses
%% available to those other accounts. Those other accounts may continue to
%% access and use your shared custom lenses even if you delete the custom
%% lenses from your own Amazon Web Services account or terminate your Amazon
%% Web Services account.
delete_lens(Client, LensAlias, Input) ->
    delete_lens(Client, LensAlias, Input, []).
delete_lens(Client, LensAlias, Input0, Options0) ->
    Method = delete,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>},
                     {<<"LensStatus">>, <<"LensStatus">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a lens share.
%%
%% After the lens share is deleted, Amazon Web Services accounts, users,
%% organizations, and organizational units (OUs) that you shared the lens
%% with can continue to use it, but they will no longer be able to apply it
%% to new workloads.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts, you
%% acknowledge that Amazon Web Services will make your custom lenses
%% available to those other accounts. Those other accounts may continue to
%% access and use your shared custom lenses even if you delete the custom
%% lenses from your own Amazon Web Services account or terminate your Amazon
%% Web Services account.
delete_lens_share(Client, LensAlias, ShareId, Input) ->
    delete_lens_share(Client, LensAlias, ShareId, Input, []).
delete_lens_share(Client, LensAlias, ShareId, Input0, Options0) ->
    Method = delete,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a profile.
%%
%% Disclaimer
%%
%% By sharing your profile with other Amazon Web Services accounts, you
%% acknowledge that Amazon Web Services will make your profile available to
%% those other accounts. Those other accounts may continue to access and use
%% your shared profile even if you delete the profile from your own Amazon
%% Web Services account or terminate your Amazon Web Services account.
delete_profile(Client, ProfileArn, Input) ->
    delete_profile(Client, ProfileArn, Input, []).
delete_profile(Client, ProfileArn, Input0, Options0) ->
    Method = delete,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a profile share.
delete_profile_share(Client, ProfileArn, ShareId, Input) ->
    delete_profile_share(Client, ProfileArn, ShareId, Input, []).
delete_profile_share(Client, ProfileArn, ShareId, Input0, Options0) ->
    Method = delete,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a review template.
%%
%% Only the owner of a review template can delete it.
%%
%% After the review template is deleted, Amazon Web Services accounts, users,
%% organizations, and organizational units (OUs) that you shared the review
%% template with will no longer be able to apply it to new workloads.
delete_review_template(Client, TemplateArn, Input) ->
    delete_review_template(Client, TemplateArn, Input, []).
delete_review_template(Client, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a review template share.
%%
%% After the review template share is deleted, Amazon Web Services accounts,
%% users, organizations, and organizational units (OUs) that you shared the
%% review template with will no longer be able to apply it to new workloads.
delete_template_share(Client, ShareId, TemplateArn, Input) ->
    delete_template_share(Client, ShareId, TemplateArn, Input, []).
delete_template_share(Client, ShareId, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), "/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an existing workload.
delete_workload(Client, WorkloadId, Input) ->
    delete_workload(Client, WorkloadId, Input, []).
delete_workload(Client, WorkloadId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a workload share.
delete_workload_share(Client, ShareId, WorkloadId, Input) ->
    delete_workload_share(Client, ShareId, WorkloadId, Input, []).
delete_workload_share(Client, ShareId, WorkloadId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociate a lens from a workload.
%%
%% Up to 10 lenses can be disassociated from a workload in a single API
%% operation.
%%
%% The Amazon Web Services Well-Architected Framework lens
%% (`wellarchitected') cannot be removed from a workload.
disassociate_lenses(Client, WorkloadId, Input) ->
    disassociate_lenses(Client, WorkloadId, Input, []).
disassociate_lenses(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/disassociateLenses"],
    SuccessStatusCode = undefined,
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

%% @doc Disassociate a profile from a workload.
disassociate_profiles(Client, WorkloadId, Input) ->
    disassociate_profiles(Client, WorkloadId, Input, []).
disassociate_profiles(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/disassociateProfiles"],
    SuccessStatusCode = undefined,
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

%% @doc Export an existing lens.
%%
%% Only the owner of a lens can export it. Lenses provided by Amazon Web
%% Services (Amazon Web Services Official Content) cannot be exported.
%%
%% Lenses are defined in JSON. For more information, see JSON format
%% specification in the Well-Architected Tool User Guide.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or other identifiable individuals in or via your custom lenses. If
%% your custom lens or those shared with you and used in your account do
%% include or collect PII you are responsible for: ensuring that the included
%% PII is processed in accordance with applicable law, providing adequate
%% privacy notices, and obtaining necessary consents for processing such
%% data.
export_lens(Client, LensAlias)
  when is_map(Client) ->
    export_lens(Client, LensAlias, #{}, #{}).

export_lens(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_lens(Client, LensAlias, QueryMap, HeadersMap, []).

export_lens(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/export"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"LensVersion">>, maps:get(<<"LensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the answer to a specific question in a workload review.
get_answer(Client, LensAlias, QuestionId, WorkloadId)
  when is_map(Client) ->
    get_answer(Client, LensAlias, QuestionId, WorkloadId, #{}, #{}).

get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap, []).

get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a consolidated report of your workloads.
%%
%% You can optionally choose to include workloads that have been shared with
%% you.
get_consolidated_report(Client, Format)
  when is_map(Client) ->
    get_consolidated_report(Client, Format, #{}, #{}).

get_consolidated_report(Client, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_consolidated_report(Client, Format, QueryMap, HeadersMap, []).

get_consolidated_report(Client, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/consolidatedReport"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Format">>, Format},
        {<<"IncludeSharedResources">>, maps:get(<<"IncludeSharedResources">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an existing lens.
get_lens(Client, LensAlias)
  when is_map(Client) ->
    get_lens(Client, LensAlias, #{}, #{}).

get_lens(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens(Client, LensAlias, QueryMap, HeadersMap, []).

get_lens(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"LensVersion">>, maps:get(<<"LensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens review.
get_lens_review(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    get_lens_review(Client, LensAlias, WorkloadId, #{}, #{}).

get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens review report.
get_lens_review_report(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    get_lens_review_report(Client, LensAlias, WorkloadId, #{}, #{}).

get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/report"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens version differences.
get_lens_version_difference(Client, LensAlias)
  when is_map(Client) ->
    get_lens_version_difference(Client, LensAlias, #{}, #{}).

get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap, []).

get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/versionDifference"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"BaseLensVersion">>, maps:get(<<"BaseLensVersion">>, QueryMap, undefined)},
        {<<"TargetLensVersion">>, maps:get(<<"TargetLensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a milestone for an existing workload.
get_milestone(Client, MilestoneNumber, WorkloadId)
  when is_map(Client) ->
    get_milestone(Client, MilestoneNumber, WorkloadId, #{}, #{}).

get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap, []).

get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestones/", aws_util:encode_uri(MilestoneNumber), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get profile information.
get_profile(Client, ProfileArn)
  when is_map(Client) ->
    get_profile(Client, ProfileArn, #{}, #{}).

get_profile(Client, ProfileArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfileArn, QueryMap, HeadersMap, []).

get_profile(Client, ProfileArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"ProfileVersion">>, maps:get(<<"ProfileVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get profile template.
get_profile_template(Client)
  when is_map(Client) ->
    get_profile_template(Client, #{}, #{}).

get_profile_template(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_template(Client, QueryMap, HeadersMap, []).

get_profile_template(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileTemplate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get review template.
get_review_template(Client, TemplateArn)
  when is_map(Client) ->
    get_review_template(Client, TemplateArn, #{}, #{}).

get_review_template(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template(Client, TemplateArn, QueryMap, HeadersMap, []).

get_review_template(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get review template answer.
get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn)
  when is_map(Client) ->
    get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, #{}, #{}).

get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap, []).

get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a lens review associated with a review template.
get_review_template_lens_review(Client, LensAlias, TemplateArn)
  when is_map(Client) ->
    get_review_template_lens_review(Client, LensAlias, TemplateArn, #{}, #{}).

get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, []).

get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an existing workload.
get_workload(Client, WorkloadId)
  when is_map(Client) ->
    get_workload(Client, WorkloadId, #{}, #{}).

get_workload(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workload(Client, WorkloadId, QueryMap, HeadersMap, []).

get_workload(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Import a new custom lens or update an existing custom lens.
%%
%% To update an existing custom lens, specify its ARN as the `LensAlias'.
%% If no ARN is specified, a new custom lens is created.
%%
%% The new or updated lens will have a status of `DRAFT'. The lens cannot
%% be applied to workloads or shared with other Amazon Web Services accounts
%% until it's published with `CreateLensVersion'.
%%
%% Lenses are defined in JSON. For more information, see JSON format
%% specification in the Well-Architected Tool User Guide.
%%
%% A custom lens cannot exceed 500 KB in size.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or other identifiable individuals in or via your custom lenses. If
%% your custom lens or those shared with you and used in your account do
%% include or collect PII you are responsible for: ensuring that the included
%% PII is processed in accordance with applicable law, providing adequate
%% privacy notices, and obtaining necessary consents for processing such
%% data.
import_lens(Client, Input) ->
    import_lens(Client, Input, []).
import_lens(Client, Input0, Options0) ->
    Method = put,
    Path = ["/importLens"],
    SuccessStatusCode = undefined,
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

%% @doc List of answers for a particular workload and lens.
list_answers(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    list_answers(Client, LensAlias, WorkloadId, #{}, #{}).

list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)},
        {<<"QuestionPriority">>, maps:get(<<"QuestionPriority">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List of Trusted Advisor check details by account related to the
%% workload.
list_check_details(Client, WorkloadId, Input) ->
    list_check_details(Client, WorkloadId, Input, []).
list_check_details(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/checks"],
    SuccessStatusCode = undefined,
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

%% @doc List of Trusted Advisor checks summarized for all accounts related to
%% the workload.
list_check_summaries(Client, WorkloadId, Input) ->
    list_check_summaries(Client, WorkloadId, Input, []).
list_check_summaries(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/checkSummaries"],
    SuccessStatusCode = undefined,
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

%% @doc List lens review improvements.
list_lens_review_improvements(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    list_lens_review_improvements(Client, LensAlias, WorkloadId, #{}, #{}).

list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/improvements"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)},
        {<<"QuestionPriority">>, maps:get(<<"QuestionPriority">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List lens reviews for a particular workload.
list_lens_reviews(Client, WorkloadId)
  when is_map(Client) ->
    list_lens_reviews(Client, WorkloadId, #{}, #{}).

list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap, []).

list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the lens shares associated with the lens.
list_lens_shares(Client, LensAlias)
  when is_map(Client) ->
    list_lens_shares(Client, LensAlias, #{}, #{}).

list_lens_shares(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_shares(Client, LensAlias, QueryMap, HeadersMap, []).

list_lens_shares(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the available lenses.
list_lenses(Client)
  when is_map(Client) ->
    list_lenses(Client, #{}, #{}).

list_lenses(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lenses(Client, QueryMap, HeadersMap, []).

list_lenses(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"LensName">>, maps:get(<<"LensName">>, QueryMap, undefined)},
        {<<"LensStatus">>, maps:get(<<"LensStatus">>, QueryMap, undefined)},
        {<<"LensType">>, maps:get(<<"LensType">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all milestones for an existing workload.
list_milestones(Client, WorkloadId, Input) ->
    list_milestones(Client, WorkloadId, Input, []).
list_milestones(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestonesSummaries"],
    SuccessStatusCode = undefined,
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

%% @doc List lens notifications.
list_notifications(Client, Input) ->
    list_notifications(Client, Input, []).
list_notifications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/notifications"],
    SuccessStatusCode = undefined,
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

%% @doc List profile notifications.
list_profile_notifications(Client)
  when is_map(Client) ->
    list_profile_notifications(Client, #{}, #{}).

list_profile_notifications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_notifications(Client, QueryMap, HeadersMap, []).

list_profile_notifications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileNotifications/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"WorkloadId">>, maps:get(<<"WorkloadId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List profile shares.
list_profile_shares(Client, ProfileArn)
  when is_map(Client) ->
    list_profile_shares(Client, ProfileArn, #{}, #{}).

list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap, []).

list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List profiles.
list_profiles(Client)
  when is_map(Client) ->
    list_profiles(Client, #{}, #{}).

list_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiles(Client, QueryMap, HeadersMap, []).

list_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileSummaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProfileNamePrefix">>, maps:get(<<"ProfileNamePrefix">>, QueryMap, undefined)},
        {<<"ProfileOwnerType">>, maps:get(<<"ProfileOwnerType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the answers of a review template.
list_review_template_answers(Client, LensAlias, TemplateArn)
  when is_map(Client) ->
    list_review_template_answers(Client, LensAlias, TemplateArn, #{}, #{}).

list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, []).

list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List review templates.
list_review_templates(Client)
  when is_map(Client) ->
    list_review_templates(Client, #{}, #{}).

list_review_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_review_templates(Client, QueryMap, HeadersMap, []).

list_review_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the share invitations.
%%
%% `WorkloadNamePrefix', `LensNamePrefix', `ProfileNamePrefix',
%% and `TemplateNamePrefix' are mutually exclusive. Use the parameter
%% that matches your `ShareResourceType'.
list_share_invitations(Client)
  when is_map(Client) ->
    list_share_invitations(Client, #{}, #{}).

list_share_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_share_invitations(Client, QueryMap, HeadersMap, []).

list_share_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/shareInvitations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"LensNamePrefix">>, maps:get(<<"LensNamePrefix">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProfileNamePrefix">>, maps:get(<<"ProfileNamePrefix">>, QueryMap, undefined)},
        {<<"ShareResourceType">>, maps:get(<<"ShareResourceType">>, QueryMap, undefined)},
        {<<"TemplateNamePrefix">>, maps:get(<<"TemplateNamePrefix">>, QueryMap, undefined)},
        {<<"WorkloadNamePrefix">>, maps:get(<<"WorkloadNamePrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for a resource.
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
list_tags_for_resource(Client, WorkloadArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, WorkloadArn, #{}, #{}).

list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List review template shares.
list_template_shares(Client, TemplateArn)
  when is_map(Client) ->
    list_template_shares(Client, TemplateArn, #{}, #{}).

list_template_shares(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_shares(Client, TemplateArn, QueryMap, HeadersMap, []).

list_template_shares(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the workload shares associated with the workload.
list_workload_shares(Client, WorkloadId)
  when is_map(Client) ->
    list_workload_shares(Client, WorkloadId, #{}, #{}).

list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap, []).

list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Paginated list of workloads.
list_workloads(Client, Input) ->
    list_workloads(Client, Input, []).
list_workloads(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workloadsSummaries"],
    SuccessStatusCode = undefined,
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

%% @doc Adds one or more tags to the specified resource.
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
tag_resource(Client, WorkloadArn, Input) ->
    tag_resource(Client, WorkloadArn, Input, []).
tag_resource(Client, WorkloadArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
    SuccessStatusCode = undefined,
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
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
%%
%% To specify multiple tags, use separate tagKeys parameters, for example:
%%
%% `DELETE /tags/WorkloadArn?tagKeys=key1&amp;tagKeys=key2'
untag_resource(Client, WorkloadArn, Input) ->
    untag_resource(Client, WorkloadArn, Input, []).
untag_resource(Client, WorkloadArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update the answer to a specific question in a workload review.
update_answer(Client, LensAlias, QuestionId, WorkloadId, Input) ->
    update_answer(Client, LensAlias, QuestionId, WorkloadId, Input, []).
update_answer(Client, LensAlias, QuestionId, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates whether the Amazon Web Services account is opted into
%% organization sharing and discovery integration features.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
update_global_settings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/global-settings"],
    SuccessStatusCode = undefined,
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

%% @doc Update lens review for a particular workload.
update_lens_review(Client, LensAlias, WorkloadId, Input) ->
    update_lens_review(Client, LensAlias, WorkloadId, Input, []).
update_lens_review(Client, LensAlias, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a profile.
update_profile(Client, ProfileArn, Input) ->
    update_profile(Client, ProfileArn, Input, []).
update_profile(Client, ProfileArn, Input0, Options0) ->
    Method = patch,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a review template.
update_review_template(Client, TemplateArn, Input) ->
    update_review_template(Client, TemplateArn, Input, []).
update_review_template(Client, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a review template answer.
update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input) ->
    update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input, []).
update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a lens review associated with a review template.
update_review_template_lens_review(Client, LensAlias, TemplateArn, Input) ->
    update_review_template_lens_review(Client, LensAlias, TemplateArn, Input, []).
update_review_template_lens_review(Client, LensAlias, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a workload or custom lens share invitation.
%%
%% This API operation can be called independently of any resource. Previous
%% documentation implied that a workload ARN must be specified.
update_share_invitation(Client, ShareInvitationId, Input) ->
    update_share_invitation(Client, ShareInvitationId, Input, []).
update_share_invitation(Client, ShareInvitationId, Input0, Options0) ->
    Method = patch,
    Path = ["/shareInvitations/", aws_util:encode_uri(ShareInvitationId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update an existing workload.
update_workload(Client, WorkloadId, Input) ->
    update_workload(Client, WorkloadId, Input, []).
update_workload(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Update a workload share.
update_workload_share(Client, ShareId, WorkloadId, Input) ->
    update_workload_share(Client, ShareId, WorkloadId, Input, []).
update_workload_share(Client, ShareId, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares/", aws_util:encode_uri(ShareId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Upgrade lens review for a particular workload.
upgrade_lens_review(Client, LensAlias, WorkloadId, Input) ->
    upgrade_lens_review(Client, LensAlias, WorkloadId, Input, []).
upgrade_lens_review(Client, LensAlias, WorkloadId, Input0, Options0) ->
    Method = put,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/upgrade"],
    SuccessStatusCode = undefined,
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

%% @doc Upgrade a profile.
upgrade_profile_version(Client, ProfileArn, WorkloadId, Input) ->
    upgrade_profile_version(Client, ProfileArn, WorkloadId, Input, []).
upgrade_profile_version(Client, ProfileArn, WorkloadId, Input0, Options0) ->
    Method = put,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/profiles/", aws_util:encode_uri(ProfileArn), "/upgrade"],
    SuccessStatusCode = undefined,
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

%% @doc Upgrade the lens review of a review template.
upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input) ->
    upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input, []).
upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input0, Options0) ->
    Method = put,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/upgrade"],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"wellarchitected">>},
    Host = build_host(<<"wellarchitected">>, Client1),
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
