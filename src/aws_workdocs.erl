%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The WorkDocs API is designed for the following use cases:
%%
%% <ul> <li> File Migration: File migration applications are supported for
%% users who want to migrate their files from an on-premises or off-premises
%% file system or service. Users can insert files into a user directory
%% structure, as well as allow for basic metadata changes, such as
%% modifications to the permissions of files.
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
         describe_activities/11,
         describe_activities/12,
         describe_comments/6,
         describe_comments/7,
         describe_document_versions/7,
         describe_document_versions/8,
         describe_folder_contents/9,
         describe_folder_contents/10,
         describe_groups/6,
         describe_groups/7,
         describe_notification_subscriptions/4,
         describe_notification_subscriptions/5,
         describe_resource_permissions/6,
         describe_resource_permissions/7,
         describe_root_folders/4,
         describe_root_folders/5,
         describe_users/11,
         describe_users/12,
         get_current_user/2,
         get_current_user/3,
         get_document/4,
         get_document/5,
         get_document_path/6,
         get_document_path/7,
         get_document_version/6,
         get_document_version/7,
         get_folder/4,
         get_folder/5,
         get_folder_path/6,
         get_folder_path/7,
         get_resources/6,
         get_resources/7,
         initiate_document_version_upload/2,
         initiate_document_version_upload/3,
         remove_all_resource_permissions/3,
         remove_all_resource_permissions/4,
         remove_resource_permission/4,
         remove_resource_permission/5,
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
%% previously initiated by <a>InitiateDocumentVersionUpload</a>. The client
%% should make this call only when it no longer intends to upload the
%% document version, or fails to do so.
abort_document_version_upload(Client, DocumentId, VersionId, Input) ->
    abort_document_version_upload(Client, DocumentId, VersionId, Input, []).
abort_document_version_upload(Client, DocumentId, VersionId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Activates the specified user. Only active users can access Amazon
%% WorkDocs.
activate_user(Client, UserId, Input) ->
    activate_user(Client, UserId, Input, []).
activate_user(Client, UserId, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/users/", http_uri:encode(UserId), "/activation"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a set of permissions for the specified folder or document.
%% The resource permissions are overwritten if the principals already have
%% different permissions.
add_resource_permissions(Client, ResourceId, Input) ->
    add_resource_permissions(Client, ResourceId, Input, []).
add_resource_permissions(Client, ResourceId, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/permissions"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a new comment to the specified document version.
create_comment(Client, DocumentId, VersionId, Input) ->
    create_comment(Client, DocumentId, VersionId, Input, []).
create_comment(Client, DocumentId, VersionId, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), "/comment"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more custom properties to the specified resource (a
%% folder, document, or version).
create_custom_metadata(Client, ResourceId, Input) ->
    create_custom_metadata(Client, ResourceId, Input, []).
create_custom_metadata(Client, ResourceId, Input0, Options) ->
    Method = put,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"versionid">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a folder with the specified name and parent folder.
create_folder(Client, Input) ->
    create_folder(Client, Input, []).
create_folder(Client, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/folders"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified list of labels to the given resource (a document
%% or folder)
create_labels(Client, ResourceId, Input) ->
    create_labels(Client, ResourceId, Input, []).
create_labels(Client, ResourceId, Input0, Options) ->
    Method = put,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/labels"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Configure Amazon WorkDocs to use Amazon SNS notifications. The
%% endpoint receives a confirmation message, and must confirm the
%% subscription.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html">Subscribe
%% to Notifications</a> in the <i>Amazon WorkDocs Developer Guide</i>.
create_notification_subscription(Client, OrganizationId, Input) ->
    create_notification_subscription(Client, OrganizationId, Input, []).
create_notification_subscription(Client, OrganizationId, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/organizations/", http_uri:encode(OrganizationId), "/subscriptions"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a user in a Simple AD or Microsoft AD directory. The status
%% of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
create_user(Client, Input) ->
    create_user(Client, Input, []).
create_user(Client, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/users"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deactivates the specified user, which revokes the user's access to
%% Amazon WorkDocs.
deactivate_user(Client, UserId, Input) ->
    deactivate_user(Client, UserId, Input, []).
deactivate_user(Client, UserId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/users/", http_uri:encode(UserId), "/activation"],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified comment from the document version.
delete_comment(Client, CommentId, DocumentId, VersionId, Input) ->
    delete_comment(Client, CommentId, DocumentId, VersionId, Input, []).
delete_comment(Client, CommentId, DocumentId, VersionId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), "/comment/", http_uri:encode(CommentId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes custom metadata from the specified resource.
delete_custom_metadata(Client, ResourceId, Input) ->
    delete_custom_metadata(Client, ResourceId, Input, []).
delete_custom_metadata(Client, ResourceId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/customMetadata"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"keys">>, <<"Keys">>},
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified document and its associated
%% metadata.
delete_document(Client, DocumentId, Input) ->
    delete_document(Client, DocumentId, Input, []).
delete_document(Client, DocumentId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently deletes the specified folder and its contents.
delete_folder(Client, FolderId, Input) ->
    delete_folder(Client, FolderId, Input, []).
delete_folder(Client, FolderId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the contents of the specified folder.
delete_folder_contents(Client, FolderId, Input) ->
    delete_folder_contents(Client, FolderId, Input, []).
delete_folder_contents(Client, FolderId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), "/contents"],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified list of labels from a resource.
delete_labels(Client, ResourceId, Input) ->
    delete_labels(Client, ResourceId, Input, []).
delete_labels(Client, ResourceId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/labels"],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"deleteAll">>, <<"DeleteAll">>},
                     {<<"labels">>, <<"Labels">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified subscription from the specified organization.
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input) ->
    delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input, []).
delete_notification_subscription(Client, OrganizationId, SubscriptionId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/organizations/", http_uri:encode(OrganizationId), "/subscriptions/", http_uri:encode(SubscriptionId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified user from a Simple AD or Microsoft AD
%% directory.
delete_user(Client, UserId, Input) ->
    delete_user(Client, UserId, Input, []).
delete_user(Client, UserId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the user activities in a specified time period.
describe_activities(Client, ActivityTypes, EndTime, IncludeIndirectActivities, Limit, Marker, OrganizationId, ResourceId, StartTime, UserId, AuthenticationToken)
  when is_map(Client) ->
    describe_activities(Client, ActivityTypes, EndTime, IncludeIndirectActivities, Limit, Marker, OrganizationId, ResourceId, StartTime, UserId, AuthenticationToken, []).
describe_activities(Client, ActivityTypes, EndTime, IncludeIndirectActivities, Limit, Marker, OrganizationId, ResourceId, StartTime, UserId, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/activities"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"activityTypes">>, ActivityTypes},
        {<<"endTime">>, EndTime},
        {<<"includeIndirectActivities">>, IncludeIndirectActivities},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"organizationId">>, OrganizationId},
        {<<"resourceId">>, ResourceId},
        {<<"startTime">>, StartTime},
        {<<"userId">>, UserId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the comments for the specified document version.
describe_comments(Client, DocumentId, VersionId, Limit, Marker, AuthenticationToken)
  when is_map(Client) ->
    describe_comments(Client, DocumentId, VersionId, Limit, Marker, AuthenticationToken, []).
describe_comments(Client, DocumentId, VersionId, Limit, Marker, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), "/comments"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the document versions for the specified document.
%%
%% By default, only active versions are returned.
describe_document_versions(Client, DocumentId, Fields, Include, Limit, Marker, AuthenticationToken)
  when is_map(Client) ->
    describe_document_versions(Client, DocumentId, Fields, Include, Limit, Marker, AuthenticationToken, []).
describe_document_versions(Client, DocumentId, Fields, Include, Limit, Marker, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, Fields},
        {<<"include">>, Include},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
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
describe_folder_contents(Client, FolderId, Include, Limit, Marker, Order, Sort, Type, AuthenticationToken)
  when is_map(Client) ->
    describe_folder_contents(Client, FolderId, Include, Limit, Marker, Order, Sort, Type, AuthenticationToken, []).
describe_folder_contents(Client, FolderId, Include, Limit, Marker, Order, Sort, Type, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), "/contents"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"include">>, Include},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"order">>, Order},
        {<<"sort">>, Sort},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the groups specified by the query. Groups are defined by
%% the underlying Active Directory.
describe_groups(Client, Limit, Marker, OrganizationId, SearchQuery, AuthenticationToken)
  when is_map(Client) ->
    describe_groups(Client, Limit, Marker, OrganizationId, SearchQuery, AuthenticationToken, []).
describe_groups(Client, Limit, Marker, OrganizationId, SearchQuery, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/groups"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"organizationId">>, OrganizationId},
        {<<"searchQuery">>, SearchQuery}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the specified notification subscriptions.
describe_notification_subscriptions(Client, OrganizationId, Limit, Marker)
  when is_map(Client) ->
    describe_notification_subscriptions(Client, OrganizationId, Limit, Marker, []).
describe_notification_subscriptions(Client, OrganizationId, Limit, Marker, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/organizations/", http_uri:encode(OrganizationId), "/subscriptions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions of a specified resource.
describe_resource_permissions(Client, ResourceId, Limit, Marker, PrincipalId, AuthenticationToken)
  when is_map(Client) ->
    describe_resource_permissions(Client, ResourceId, Limit, Marker, PrincipalId, AuthenticationToken, []).
describe_resource_permissions(Client, ResourceId, Limit, Marker, PrincipalId, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/permissions"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"principalId">>, PrincipalId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current user's special folders; the
%% <code>RootFolder</code> and the <code>RecycleBin</code>.
%% <code>RootFolder</code> is the root of user's files and folders and
%% <code>RecycleBin</code> is the root of recycled items. This is not a valid
%% action for SigV4 (administrative API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token, register an application with Amazon WorkDocs. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication
%% and Access Control for User Applications</a> in the <i>Amazon WorkDocs
%% Developer Guide</i>.
describe_root_folders(Client, Limit, Marker, AuthenticationToken)
  when is_map(Client) ->
    describe_root_folders(Client, Limit, Marker, AuthenticationToken, []).
describe_root_folders(Client, Limit, Marker, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/me/root"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified users. You can describe all users or filter
%% the results (for example, by status or organization).
%%
%% By default, Amazon WorkDocs returns the first 24 active or pending users.
%% If there are more results, the response includes a marker that you can use
%% to request the next set of results.
describe_users(Client, Fields, Include, Limit, Marker, Order, OrganizationId, Query, Sort, UserIds, AuthenticationToken)
  when is_map(Client) ->
    describe_users(Client, Fields, Include, Limit, Marker, Order, OrganizationId, Query, Sort, UserIds, AuthenticationToken, []).
describe_users(Client, Fields, Include, Limit, Marker, Order, OrganizationId, Query, Sort, UserIds, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/users"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, Fields},
        {<<"include">>, Include},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"order">>, Order},
        {<<"organizationId">>, OrganizationId},
        {<<"query">>, Query},
        {<<"sort">>, Sort},
        {<<"userIds">>, UserIds}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of the current user for whom the authentication
%% token was generated. This is not a valid action for SigV4 (administrative
%% API) clients.
%%
%% This action requires an authentication token. To get an authentication
%% token, register an application with Amazon WorkDocs. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication
%% and Access Control for User Applications</a> in the <i>Amazon WorkDocs
%% Developer Guide</i>.
get_current_user(Client, AuthenticationToken)
  when is_map(Client) ->
    get_current_user(Client, AuthenticationToken, []).
get_current_user(Client, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/me"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of a document.
get_document(Client, DocumentId, IncludeCustomMetadata, AuthenticationToken)
  when is_map(Client) ->
    get_document(Client, DocumentId, IncludeCustomMetadata, AuthenticationToken, []).
get_document(Client, DocumentId, IncludeCustomMetadata, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), ""],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, IncludeCustomMetadata}
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
get_document_path(Client, DocumentId, Fields, Limit, Marker, AuthenticationToken)
  when is_map(Client) ->
    get_document_path(Client, DocumentId, Fields, Limit, Marker, AuthenticationToken, []).
get_document_path(Client, DocumentId, Fields, Limit, Marker, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/path"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, Fields},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves version metadata for the specified document.
get_document_version(Client, DocumentId, VersionId, Fields, IncludeCustomMetadata, AuthenticationToken)
  when is_map(Client) ->
    get_document_version(Client, DocumentId, VersionId, Fields, IncludeCustomMetadata, AuthenticationToken, []).
get_document_version(Client, DocumentId, VersionId, Fields, IncludeCustomMetadata, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), ""],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, Fields},
        {<<"includeCustomMetadata">>, IncludeCustomMetadata}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the metadata of the specified folder.
get_folder(Client, FolderId, IncludeCustomMetadata, AuthenticationToken)
  when is_map(Client) ->
    get_folder(Client, FolderId, IncludeCustomMetadata, AuthenticationToken, []).
get_folder(Client, FolderId, IncludeCustomMetadata, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), ""],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"includeCustomMetadata">>, IncludeCustomMetadata}
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
get_folder_path(Client, FolderId, Fields, Limit, Marker, AuthenticationToken)
  when is_map(Client) ->
    get_folder_path(Client, FolderId, Fields, Limit, Marker, AuthenticationToken, []).
get_folder_path(Client, FolderId, Fields, Limit, Marker, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), "/path"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"fields">>, Fields},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a collection of resources, including folders and documents.
%% The only <code>CollectionType</code> supported is
%% <code>SHARED_WITH_ME</code>.
get_resources(Client, CollectionType, Limit, Marker, UserId, AuthenticationToken)
  when is_map(Client) ->
    get_resources(Client, CollectionType, Limit, Marker, UserId, AuthenticationToken, []).
get_resources(Client, CollectionType, Limit, Marker, UserId, AuthenticationToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/api/v1/resources"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Authentication">>, AuthenticationToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"collectionType">>, CollectionType},
        {<<"limit">>, Limit},
        {<<"marker">>, Marker},
        {<<"userId">>, UserId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new document object and version object.
%%
%% The client specifies the parent folder ID and name of the document to
%% upload. The ID is optionally specified when creating a new version of an
%% existing document. This is the first step to upload a document. Next,
%% upload the document to the URL returned from the call, and then call
%% <a>UpdateDocumentVersion</a>.
%%
%% To cancel the document upload, call <a>AbortDocumentVersionUpload</a>.
initiate_document_version_upload(Client, Input) ->
    initiate_document_version_upload(Client, Input, []).
initiate_document_version_upload(Client, Input0, Options) ->
    Method = post,
    Path = ["/api/v1/documents"],
    SuccessStatusCode = 201,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes all the permissions from the specified resource.
remove_all_resource_permissions(Client, ResourceId, Input) ->
    remove_all_resource_permissions(Client, ResourceId, Input, []).
remove_all_resource_permissions(Client, ResourceId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/permissions"],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the permission for the specified principal from the specified
%% resource.
remove_resource_permission(Client, PrincipalId, ResourceId, Input) ->
    remove_resource_permission(Client, PrincipalId, ResourceId, Input, []).
remove_resource_permission(Client, PrincipalId, ResourceId, Input0, Options) ->
    Method = delete,
    Path = ["/api/v1/resources/", http_uri:encode(ResourceId), "/permissions/", http_uri:encode(PrincipalId), ""],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"type">>, <<"PrincipalType">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of a document. The user must have
%% access to both the document and its parent folder, if applicable.
update_document(Client, DocumentId, Input) ->
    update_document(Client, DocumentId, Input, []).
update_document(Client, DocumentId, Input0, Options) ->
    Method = patch,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), ""],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of the document version to ACTIVE.
%%
%% Amazon WorkDocs also sets its document container to ACTIVE. This is the
%% last step in a document upload, after the client uploads the document to
%% an S3-presigned URL returned by <a>InitiateDocumentVersionUpload</a>.
update_document_version(Client, DocumentId, VersionId, Input) ->
    update_document_version(Client, DocumentId, VersionId, Input, []).
update_document_version(Client, DocumentId, VersionId, Input0, Options) ->
    Method = patch,
    Path = ["/api/v1/documents/", http_uri:encode(DocumentId), "/versions/", http_uri:encode(VersionId), ""],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified folder. The user
%% must have access to both the folder and its parent folder, if applicable.
update_folder(Client, FolderId, Input) ->
    update_folder(Client, FolderId, Input, []).
update_folder(Client, FolderId, Input0, Options) ->
    Method = patch,
    Path = ["/api/v1/folders/", http_uri:encode(FolderId), ""],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified attributes of the specified user, and grants or
%% revokes administrative privileges to the Amazon WorkDocs site.
update_user(Client, UserId, Input) ->
    update_user(Client, UserId, Input, []).
update_user(Client, UserId, Input0, Options) ->
    Method = patch,
    Path = ["/api/v1/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 200,

    HeadersMapping = [
                       {<<"Authentication">>, <<"AuthenticationToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"workdocs">>},
    Host = build_host(<<"workdocs">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

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
