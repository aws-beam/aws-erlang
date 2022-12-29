%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The WorkDocs API is designed for the following use cases:
%%
%% <ul> <li> File Migration: File migration applications are supported for
%% users who want to migrate their files from an on-premises or off-premises
%% file system or service.
%%
%% Users can insert files into a user directory structure, as well as allow
%% for basic metadata changes, such as modifications to the permissions of
%% files.
%%
%% </li> <li> Security: Support security applications are supported for users
%% who have additional security needs, such as antivirus or data loss
%% prevention. The API actions, along with AWS CloudTrail, allow these
%% applications to detect when changes occur in Amazon WorkDocs. Then, the
%% application can take the necessary actions and replace the target file. If
%% the target file violates the policy, the application can also choose to
%% email the user.
%%
%% </li> <li> eDiscovery/Analytics: General administrative applications are
%% supported, such as eDiscovery and analytics. These applications can choose
%% to mimic or record the actions in an Amazon WorkDocs site, along with AWS
%% CloudTrail, to replicate data for eDiscovery, backup, or analytical
%% applications.
%%
%% </li> </ul> All Amazon WorkDocs API actions are Amazon authenticated and
%% certificate-signed. They not only require the use of the AWS SDK, but also
%% allow for the exclusive use of IAM users and roles to help facilitate
%% access, trust, and permission policies. By creating a role and allowing an
%% IAM user to access the Amazon WorkDocs site, the IAM user gains full
%% administrative visibility into the entire Amazon WorkDocs site (or as set
%% in the IAM policy). This includes, but is not limited to, the ability to
%% modify file permissions and upload any file to any user. This allows
%% developers to perform the three use cases above, as well as give users the
%% ability to grant access on a selective basis using the IAM model.
%%
%% The pricing for Amazon WorkDocs APIs varies depending on the API call type
%% for these actions:
%%
%% `READ (Get*)'
%%
%% `WRITE (Activate*, Add*, Create*, Deactivate*, Initiate*, Update*)'
%%
%% `LIST (Describe*)'
%%
%% `DELETE*, CANCEL'
%%
%% For information about Amazon WorkDocs API pricing, see Amazon WorkDocs
%% Pricing.
-module(aws_workdocs).

-export([abort_document_version_upload/4,
         abort_document_version_upload/5,
         activate_user/3,
         activate_user/4,
         add_resource_permissions/3,
         add_resource_permissions/4,
         create_comment/4,
         create_comment/5,
         create_custom_metadata/3,
         create_custom_metadata/4,
         create_folder/2,
         create_folder/3,
         create_labels/3,
         create_labels/4,
         create_notification_subscription/3,
         create_notification_subscription/4,
         create_user/2,
         create_user/3,
         deactivate_user/3,
         deactivate_user/4,
         delete_comment/5,
         delete_comment/6,
         delete_custom_metadata/3,
         delete_custom_metadata/4,
         delete_document/3,
         delete_document/4,
         delete_document_version/4,
         delete_document_version/5,
         delete_folder/3,
         delete_folder/4,
         delete_folder_contents/3,
         delete_folder_contents/4,
         delete_labels/3,
         delete_labels/4,
         delete_notification_subscription/4,
         delete_notification_subscription/5,
         delete_user/3,
         delete_user/4,
         describe_activities/1,
         describe_activities/3,
         describe_activities/4,
         describe_comments/3,
         describe_comments/5,
         describe_comments/6,
         describe_document_versions/2,
         describe_document_versions/4,
         describe_document_versions/5,
         describe_folder_contents/2,
         describe_folder_contents/4,
         describe_folder_contents/5,
         describe_groups/2,
         describe_groups/4,
         describe_groups/5,
         describe_notification_subscriptions/2,
         describe_notification_subscriptions/4,
         describe_notification_subscriptions/5,
         describe_resource_permissions/2,
         describe_resource_permissions/4,
         describe_resource_permissions/5,
         describe_root_folders/2,
         describe_root_folders/4,
         describe_root_folders/5,
         describe_users/1,
         describe_users/3,
         describe_users/4,
         get_current_user/2,
         get_current_user/4,
         get_current_user/5,
         get_document/2,
         get_document/4,
         get_document/5,
         get_document_path/2,
         get_document_path/4,
         get_document_path/5,
         get_document_version/3,
         get_document_version/5,
         get_document_version/6,
         get_folder/2,
         get_folder/4,
         get_folder/5,
         get_folder_path/2,
         get_folder_path/4,
         get_folder_path/5,
         get_resources/1,
         get_resources/3,
         get_resources/4,
         initiate_document_version_upload/2,
         initiate_document_version_upload/3,
         remove_all_resource_permissions/3,
         remove_all_resource_permissions/4,
         remove_resource_permission/4,
         remove_resource_permission/5,
         restore_document_versions/3,
         restore_document_versions/4,
         update_document/3,
         update_document/4,
         update_document_version/4,
         update_document_version/5,
         update_folder/3,
         update_folder/4,
         update_user/3,
         update_user/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Aborts the upload of the specified document version that was
%% previously initiated by `InitiateDocumentVersionUpload'.
%%
%% The client should make this call only when it no longer intends to upload
%% the document version, or fails to do so.
abort_document_version_upload(Client, DocumentId, VersionId, Input) ->
    abort_document_version_upload(Client, DocumentId, VersionId, Input, []).
abort_document_version_upload(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Activates the specified user.
%%
%% Only active users can access Amazon WorkDocs.
activate_user(Client, UserId, Input) ->
    activate_user(Client, UserId, Input, []).
activate_user(Client, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), "/activation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a set of permissions for the specified folder or document.
%%
%% The resource permissions are overwritten if the principals already have
%% different permissions.
add_resource_permissions(Client, ResourceId, Input) ->
    add_resource_permissions(Client, ResourceId, Input, []).
add_resource_permissions(Client, ResourceId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new comment to the specified document version.
create_comment(Client, DocumentId, VersionId, Input) ->
    create_comment(Client, DocumentId, VersionId, Input, []).
create_comment(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comment"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more custom properties to the specified resource (a
%% folder, document, or version).
create_custom_metadata(Client, ResourceId, Input) ->
    create_custom_metadata(Client, ResourceId, Input, []).
create_custom_metadata(Client, ResourceId, Input0, Options0) ->
    Method = put,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionid">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a folder with the specified name and parent folder.
create_folder(Client, Input) ->
    create_folder(Client, Input, []).
create_folder(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/folders"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of labels to the given resource (a document
%% or folder)
create_labels(Client, ResourceId, Input) ->
    create_labels(Client, ResourceId, Input, []).
create_labels(Client, ResourceId, Input0, Options0) ->
    Method = put,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/labels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Configure Amazon WorkDocs to use Amazon SNS notifications.
%%
%% The endpoint receives a confirmation message, and must confirm the
%% subscription.
%%
%% For more information, see Setting up notifications for an IAM user or role
%% in the Amazon WorkDocs Developer Guide.
create_notification_subscription(Client, OrganizationId, Input) ->
    create_notification_subscription(Client, OrganizationId, Input, []).
create_notification_subscription(Client, OrganizationId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a user in a Simple AD or Microsoft AD directory.
%%
%% The status of a newly created user is "ACTIVE". New users can access
%% Amazon WorkDocs.
create_user(Client, Input) ->
    create_user(Client, Input, []).
create_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/users"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates the specified user, which revokes the user's access to
%% Amazon WorkDocs.
deactivate_user(Client, UserId, Input) ->
    deactivate_user(Client, UserId, Input, []).
deactivate_user(Client, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), "/activation"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified comment from the document version.
delete_comment(Client, CommentId, DocumentId, VersionId, Input) ->
    delete_comment(Client, CommentId, DocumentId, VersionId, Input, []).
delete_comment(Client, CommentId, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comment/", aws_util:encode_uri(CommentId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes custom metadata from the specified resource.
delete_custom_metadata(Client, ResourceId, Input) ->
    delete_custom_metadata(Client, ResourceId, Input, []).
delete_custom_metadata(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"keys">>, <<"Keys">>},
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified document and its associated
%% metadata.
delete_document(Client, DocumentId, Input) ->
    delete_document(Client, DocumentId, Input, []).
delete_document(Client, DocumentId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a version of an Amazon WorkDocs document.
%%
%% Use the `DeletePriorVersions' parameter to delete prior versions.
delete_document_version(Client, DocumentId, VersionId, Input) ->
    delete_document_version(Client, DocumentId, VersionId, Input, []).
delete_document_version(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/documentVersions/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deletePriorVersions">>, <<"DeletePriorVersions">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified folder and its contents.
delete_folder(Client, FolderId, Input) ->
    delete_folder(Client, FolderId, Input, []).
delete_folder(Client, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the contents of the specified folder.
delete_folder_contents(Client, FolderId, Input) ->
    delete_folder_contents(Client, FolderId, Input, []).
delete_folder_contents(Client, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/contents"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified list of labels from a resource.
delete_labels(Client, ResourceId, Input) ->
    delete_labels(Client, ResourceId, Input, []).
delete_labels(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/labels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"labels">>, <<"Labels">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified subscription from the specified organization.
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input) ->
    delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input, []).
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified user from a Simple AD or Microsoft AD
%% directory.
delete_user(Client, UserId, Input) ->
    delete_user(Client, UserId, Input, []).
delete_user(Client, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the user activities in a specified time period.
describe_activities(Client)
  when is_map(Client) ->
    describe_activities(Client, #{}, #{}).

describe_activities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_activities(Client, QueryMap, HeadersMap, []).

describe_activities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/activities"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"activityTypes">>, maps:get(<<"activityTypes">>, QueryMap, undefined)},
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"includeIndirectActivities">>, maps:get(<<"includeIndirectActivities">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"resourceId">>, maps:get(<<"resourceId">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the comments for the specified document version.
describe_comments(Client, DocumentId, VersionId)
  when is_map(Client) ->
    describe_comments(Client, DocumentId, VersionId, #{}, #{}).

describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap, []).

describe_comments(Client, DocumentId, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), "/comments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the document versions for the specified document.
%%
%% By default, only active versions are returned.
describe_document_versions(Client, DocumentId)
  when is_map(Client) ->
    describe_document_versions(Client, DocumentId, #{}, #{}).

describe_document_versions(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_document_versions(Client, DocumentId, QueryMap, HeadersMap, []).

describe_document_versions(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the contents of the specified folder, including its
%% documents and subfolders.
%%
%% By default, Amazon WorkDocs returns the first 100 active document and
%% folder metadata items. If there are more results, the response includes a
%% marker that you can use to request the next set of results. You can also
%% request initialized documents.
describe_folder_contents(Client, FolderId)
  when is_map(Client) ->
    describe_folder_contents(Client, FolderId, #{}, #{}).

describe_folder_contents(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_contents(Client, FolderId, QueryMap, HeadersMap, []).

describe_folder_contents(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/contents"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"sort">>, maps:get(<<"sort">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the groups specified by the query.
%%
%% Groups are defined by the underlying Active Directory.
describe_groups(Client, SearchQuery)
  when is_map(Client) ->
    describe_groups(Client, SearchQuery, #{}, #{}).

describe_groups(Client, SearchQuery, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_groups(Client, SearchQuery, QueryMap, HeadersMap, []).

describe_groups(Client, SearchQuery, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/groups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"searchQuery">>, SearchQuery}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the specified notification subscriptions.
describe_notification_subscriptions(Client, OrganizationId)
  when is_map(Client) ->
    describe_notification_subscriptions(Client, OrganizationId, #{}, #{}).

describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap, []).

describe_notification_subscriptions(Client, OrganizationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/organizations/", aws_util:encode_uri(OrganizationId), "/subscriptions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions of a specified resource.
describe_resource_permissions(Client, ResourceId)
  when is_map(Client) ->
    describe_resource_permissions(Client, ResourceId, #{}, #{}).

describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap, []).

describe_resource_permissions(Client, ResourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current user's special folders; the `RootFolder' and
%% the `RecycleBin'.
%%
%% `RootFolder' is the root of user's files and folders and `RecycleBin' is
%% the root of recycled items. This is not a valid action for SigV4
%% (administrative API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token, register an application with Amazon WorkDocs. For more information,
%% see Authentication and Access Control for User Applications in the Amazon
%% WorkDocs Developer Guide.
describe_root_folders(Client, AuthenticationToken)
  when is_map(Client) ->
    describe_root_folders(Client, AuthenticationToken, #{}, #{}).

describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap, []).

describe_root_folders(Client, AuthenticationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/me/root"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified users.
%%
%% You can describe all users or filter the results (for example, by status
%% or organization).
%%
%% By default, Amazon WorkDocs returns the first 24 active or pending users.
%% If there are more results, the response includes a marker that you can use
%% to request the next set of results.
describe_users(Client)
  when is_map(Client) ->
    describe_users(Client, #{}, #{}).

describe_users(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_users(Client, QueryMap, HeadersMap, []).

describe_users(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/users"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"order">>, maps:get(<<"order">>, QueryMap, undefined)},
        {<<"organizationId">>, maps:get(<<"organizationId">>, QueryMap, undefined)},
        {<<"query">>, maps:get(<<"query">>, QueryMap, undefined)},
        {<<"sort">>, maps:get(<<"sort">>, QueryMap, undefined)},
        {<<"userIds">>, maps:get(<<"userIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of the current user for whom the authentication
%% token was generated.
%%
%% This is not a valid action for SigV4 (administrative API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token, register an application with Amazon WorkDocs. For more information,
%% see Authentication and Access Control for User Applications in the Amazon
%% WorkDocs Developer Guide.
get_current_user(Client, AuthenticationToken)
  when is_map(Client) ->
    get_current_user(Client, AuthenticationToken, #{}, #{}).

get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap, []).

get_current_user(Client, AuthenticationToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/me"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of a document.
get_document(Client, DocumentId)
  when is_map(Client) ->
    get_document(Client, DocumentId, #{}, #{}).

get_document(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document(Client, DocumentId, QueryMap, HeadersMap, []).

get_document(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the path information (the hierarchy from the root folder)
%% for the requested document.
%%
%% By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
%% the requested document and only includes the IDs of the parent folders in
%% the path. You can limit the maximum number of levels. You can also request
%% the names of the parent folders.
get_document_path(Client, DocumentId)
  when is_map(Client) ->
    get_document_path(Client, DocumentId, #{}, #{}).

get_document_path(Client, DocumentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document_path(Client, DocumentId, QueryMap, HeadersMap, []).

get_document_path(Client, DocumentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/path"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves version metadata for the specified document.
get_document_version(Client, DocumentId, VersionId)
  when is_map(Client) ->
    get_document_version(Client, DocumentId, VersionId, #{}, #{}).

get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap, []).

get_document_version(Client, DocumentId, VersionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the metadata of the specified folder.
get_folder(Client, FolderId)
  when is_map(Client) ->
    get_folder(Client, FolderId, #{}, #{}).

get_folder(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_folder(Client, FolderId, QueryMap, HeadersMap, []).

get_folder(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, maps:get(<<"includeCustomMetadata">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the path information (the hierarchy from the root folder)
%% for the specified folder.
%%
%% By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
%% the requested folder and only includes the IDs of the parent folders in
%% the path. You can limit the maximum number of levels. You can also request
%% the parent folder names.
get_folder_path(Client, FolderId)
  when is_map(Client) ->
    get_folder_path(Client, FolderId, #{}, #{}).

get_folder_path(Client, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_folder_path(Client, FolderId, QueryMap, HeadersMap, []).

get_folder_path(Client, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), "/path"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, maps:get(<<"fields">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a collection of resources, including folders and documents.
%%
%% The only `CollectionType' supported is `SHARED_WITH_ME'.
get_resources(Client)
  when is_map(Client) ->
    get_resources(Client, #{}, #{}).

get_resources(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resources(Client, QueryMap, HeadersMap, []).

get_resources(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/v1/resources"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Authentication">>, maps:get(<<"Authentication">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"collectionType">>, maps:get(<<"collectionType">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new document object and version object.
%%
%% The client specifies the parent folder ID and name of the document to
%% upload. The ID is optionally specified when creating a new version of an
%% existing document. This is the first step to upload a document. Next,
%% upload the document to the URL returned from the call, and then call
%% `UpdateDocumentVersion'.
%%
%% To cancel the document upload, call `AbortDocumentVersionUpload'.
initiate_document_version_upload(Client, Input) ->
    initiate_document_version_upload(Client, Input, []).
initiate_document_version_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documents"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes all the permissions from the specified resource.
remove_all_resource_permissions(Client, ResourceId, Input) ->
    remove_all_resource_permissions(Client, ResourceId, Input, []).
remove_all_resource_permissions(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the permission for the specified principal from the specified
%% resource.
remove_resource_permission(Client, PrincipalId, ResourceId, Input) ->
    remove_resource_permission(Client, PrincipalId, ResourceId, Input, []).
remove_resource_permission(Client, PrincipalId, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/api/v1/resources/", aws_util:encode_uri(ResourceId), "/permissions/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"type">>, <<"PrincipalType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Recovers a deleted version of an Amazon WorkDocs document.
restore_document_versions(Client, DocumentId, Input) ->
    restore_document_versions(Client, DocumentId, Input, []).
restore_document_versions(Client, DocumentId, Input0, Options0) ->
    Method = post,
    Path = ["/api/v1/documentVersions/restore/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of a document.
%%
%% The user must have access to both the document and its parent folder, if
%% applicable.
update_document(Client, DocumentId, Input) ->
    update_document(Client, DocumentId, Input, []).
update_document(Client, DocumentId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of the document version to ACTIVE.
%%
%% Amazon WorkDocs also sets its document container to ACTIVE. This is the
%% last step in a document upload, after the client uploads the document to
%% an S3-presigned URL returned by `InitiateDocumentVersionUpload'.
update_document_version(Client, DocumentId, VersionId, Input) ->
    update_document_version(Client, DocumentId, VersionId, Input, []).
update_document_version(Client, DocumentId, VersionId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/documents/", aws_util:encode_uri(DocumentId), "/versions/", aws_util:encode_uri(VersionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified folder.
%%
%% The user must have access to both the folder and its parent folder, if
%% applicable.
update_folder(Client, FolderId, Input) ->
    update_folder(Client, FolderId, Input, []).
update_folder(Client, FolderId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified user, and grants or
%% revokes administrative privileges to the Amazon WorkDocs site.
update_user(Client, UserId, Input) ->
    update_user(Client, UserId, Input, []).
update_user(Client, UserId, Input0, Options0) ->
    Method = patch,
    Path = ["/api/v1/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"workdocs">>},
    Host = build_host(<<"workdocs">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

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
