%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Q Apps feature capability within Amazon Q Business allows
%% web experience users to create lightweight, purpose-built AI apps to
%% fulfill specific tasks from within their web experience.
%%
%% For example, users can create a Q App that exclusively generates
%% marketing-related content to improve your marketing team's
%% productivity or a Q App for writing customer emails and creating
%% promotional content using a certain style of voice, tone, and branding.
%% For more information on the capabilities, see Amazon Q Apps capabilities:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html#q-apps-actions
%% in the Amazon Q Business User Guide.
%%
%% For an overview of the Amazon Q App APIs, see Overview of Amazon Q Apps
%% API operations:
%% https://docs.aws.amazon.com/amazonq/latest/api-reference/API_Operations_QApps.html.
%%
%% For information about the IAM access control permissions you need to use
%% the Amazon Q Apps API, see IAM role for the Amazon Q Business web
%% experience including Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html
%% in the Amazon Q Business User Guide.
-module(aws_qapps).

-export([associate_library_item_review/2,
         associate_library_item_review/3,
         associate_q_app_with_user/2,
         associate_q_app_with_user/3,
         batch_create_category/2,
         batch_create_category/3,
         batch_delete_category/2,
         batch_delete_category/3,
         batch_update_category/2,
         batch_update_category/3,
         create_library_item/2,
         create_library_item/3,
         create_presigned_url/2,
         create_presigned_url/3,
         create_q_app/2,
         create_q_app/3,
         delete_library_item/2,
         delete_library_item/3,
         delete_q_app/2,
         delete_q_app/3,
         describe_q_app_permissions/3,
         describe_q_app_permissions/5,
         describe_q_app_permissions/6,
         disassociate_library_item_review/2,
         disassociate_library_item_review/3,
         disassociate_q_app_from_user/2,
         disassociate_q_app_from_user/3,
         export_q_app_session_data/2,
         export_q_app_session_data/3,
         get_library_item/3,
         get_library_item/5,
         get_library_item/6,
         get_q_app/3,
         get_q_app/5,
         get_q_app/6,
         get_q_app_session/3,
         get_q_app_session/5,
         get_q_app_session/6,
         get_q_app_session_metadata/3,
         get_q_app_session_metadata/5,
         get_q_app_session_metadata/6,
         import_document/2,
         import_document/3,
         list_categories/2,
         list_categories/4,
         list_categories/5,
         list_library_items/2,
         list_library_items/4,
         list_library_items/5,
         list_q_app_session_data/3,
         list_q_app_session_data/5,
         list_q_app_session_data/6,
         list_q_apps/2,
         list_q_apps/4,
         list_q_apps/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         predict_q_app/2,
         predict_q_app/3,
         start_q_app_session/2,
         start_q_app_session/3,
         stop_q_app_session/2,
         stop_q_app_session/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_library_item/2,
         update_library_item/3,
         update_library_item_metadata/2,
         update_library_item_metadata/3,
         update_q_app/2,
         update_q_app/3,
         update_q_app_permissions/2,
         update_q_app_permissions/3,
         update_q_app_session/2,
         update_q_app_session/3,
         update_q_app_session_metadata/2,
         update_q_app_session_metadata/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_library_item_input() :: #{
%%   <<"appId">> := string(),
%%   <<"appVersion">> := integer(),
%%   <<"categories">> := list(string()),
%%   <<"instanceId">> := string()
%% }
-type create_library_item_input() :: #{binary() => any()}.


%% Example:
%% update_library_item_metadata_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"isVerified">> => [boolean()],
%%   <<"libraryItemId">> := string()
%% }
-type update_library_item_metadata_input() :: #{binary() => any()}.


%% Example:
%% user_app_item() :: #{
%%   <<"appArn">> => string(),
%%   <<"appId">> => string(),
%%   <<"canEdit">> => [boolean()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"isVerified">> => [boolean()],
%%   <<"status">> => [string()],
%%   <<"title">> => string()
%% }
-type user_app_item() :: #{binary() => any()}.


%% Example:
%% create_library_item_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"isVerified">> => [boolean()],
%%   <<"libraryItemId">> => string(),
%%   <<"ratingCount">> => [integer()],
%%   <<"status">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()]
%% }
-type create_library_item_output() :: #{binary() => any()}.


%% Example:
%% update_q_app_permissions_output() :: #{
%%   <<"appId">> => [string()],
%%   <<"permissions">> => list(permission_output()),
%%   <<"resourceArn">> => [string()]
%% }
-type update_q_app_permissions_output() :: #{binary() => any()}.


%% Example:
%% update_q_app_session_metadata_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string(),
%%   <<"sessionName">> => string(),
%%   <<"sharingConfiguration">> := session_sharing_configuration()
%% }
-type update_q_app_session_metadata_input() :: #{binary() => any()}.


%% Example:
%% import_document_output() :: #{
%%   <<"fileId">> => [string()]
%% }
-type import_document_output() :: #{binary() => any()}.


%% Example:
%% list_q_app_session_data_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"sessionArn">> => [string()],
%%   <<"sessionData">> => list(q_app_session_data()),
%%   <<"sessionId">> => string()
%% }
-type list_q_app_session_data_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_library_item_input() :: #{
%%   <<"appId">> => string(),
%%   <<"instanceId">> := string(),
%%   <<"libraryItemId">> := string()
%% }
-type get_library_item_input() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% get_q_app_session_metadata_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string()
%% }
-type get_q_app_session_metadata_input() :: #{binary() => any()}.


%% Example:
%% permission_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"principal">> => principal_output()
%% }
-type permission_output() :: #{binary() => any()}.


%% Example:
%% document_attribute() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => list()
%% }
-type document_attribute() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% disassociate_q_app_from_user_input() :: #{
%%   <<"appId">> := string(),
%%   <<"instanceId">> := string()
%% }
-type disassociate_q_app_from_user_input() :: #{binary() => any()}.


%% Example:
%% batch_create_category_input() :: #{
%%   <<"categories">> := list(batch_create_category_input_category()),
%%   <<"instanceId">> := string()
%% }
-type batch_create_category_input() :: #{binary() => any()}.


%% Example:
%% list_categories_output() :: #{
%%   <<"categories">> => list(category())
%% }
-type list_categories_output() :: #{binary() => any()}.


%% Example:
%% form_input_card_input() :: #{
%%   <<"computeMode">> => list(any()),
%%   <<"id">> => string(),
%%   <<"metadata">> => form_input_card_metadata(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type form_input_card_input() :: #{binary() => any()}.


%% Example:
%% session_sharing_configuration() :: #{
%%   <<"acceptResponses">> => boolean(),
%%   <<"enabled">> => boolean(),
%%   <<"revealCards">> => boolean()
%% }
-type session_sharing_configuration() :: #{binary() => any()}.


%% Example:
%% category_input() :: #{
%%   <<"color">> => [string()],
%%   <<"id">> => string(),
%%   <<"title">> => [string()]
%% }
-type category_input() :: #{binary() => any()}.


%% Example:
%% app_definition_input() :: #{
%%   <<"cards">> => list(list()),
%%   <<"initialPrompt">> => string()
%% }
-type app_definition_input() :: #{binary() => any()}.


%% Example:
%% form_input_card_metadata() :: #{
%%   <<"schema">> => any()
%% }
-type form_input_card_metadata() :: #{binary() => any()}.


%% Example:
%% start_q_app_session_input() :: #{
%%   <<"appId">> := string(),
%%   <<"appVersion">> := integer(),
%%   <<"initialValues">> => list(card_value()),
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> => [string()],
%%   <<"tags">> => map()
%% }
-type start_q_app_session_input() :: #{binary() => any()}.


%% Example:
%% get_library_item_output() :: #{
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"categories">> => list(category()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"isRatedByUser">> => [boolean()],
%%   <<"isVerified">> => [boolean()],
%%   <<"libraryItemId">> => string(),
%%   <<"ratingCount">> => [integer()],
%%   <<"status">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()],
%%   <<"userCount">> => [integer()]
%% }
-type get_library_item_output() :: #{binary() => any()}.


%% Example:
%% update_q_app_session_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string(),
%%   <<"values">> => list(card_value())
%% }
-type update_q_app_session_input() :: #{binary() => any()}.


%% Example:
%% delete_q_app_input() :: #{
%%   <<"appId">> := string(),
%%   <<"instanceId">> := string()
%% }
-type delete_q_app_input() :: #{binary() => any()}.


%% Example:
%% predict_q_app_output() :: #{
%%   <<"app">> => predict_app_definition(),
%%   <<"problemStatement">> => [string()]
%% }
-type predict_q_app_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% associate_q_app_with_user_input() :: #{
%%   <<"appId">> := string(),
%%   <<"instanceId">> := string()
%% }
-type associate_q_app_with_user_input() :: #{binary() => any()}.


%% Example:
%% describe_q_app_permissions_output() :: #{
%%   <<"appId">> => [string()],
%%   <<"permissions">> => list(permission_output()),
%%   <<"resourceArn">> => [string()]
%% }
-type describe_q_app_permissions_output() :: #{binary() => any()}.


%% Example:
%% create_q_app_input() :: #{
%%   <<"appDefinition">> := app_definition_input(),
%%   <<"description">> => string(),
%%   <<"instanceId">> := string(),
%%   <<"tags">> => map(),
%%   <<"title">> := string()
%% }
-type create_q_app_input() :: #{binary() => any()}.


%% Example:
%% q_plugin_card() :: #{
%%   <<"actionIdentifier">> => string(),
%%   <<"dependencies">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"pluginId">> => [string()],
%%   <<"pluginType">> => list(any()),
%%   <<"prompt">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type q_plugin_card() :: #{binary() => any()}.


%% Example:
%% update_library_item_output() :: #{
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"categories">> => list(category()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"isRatedByUser">> => [boolean()],
%%   <<"isVerified">> => [boolean()],
%%   <<"libraryItemId">> => string(),
%%   <<"ratingCount">> => [integer()],
%%   <<"status">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()],
%%   <<"userCount">> => [integer()]
%% }
-type update_library_item_output() :: #{binary() => any()}.


%% Example:
%% file_upload_card_input() :: #{
%%   <<"allowOverride">> => [boolean()],
%%   <<"fileId">> => string(),
%%   <<"filename">> => string(),
%%   <<"id">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type file_upload_card_input() :: #{binary() => any()}.


%% Example:
%% update_q_app_session_output() :: #{
%%   <<"sessionArn">> => [string()],
%%   <<"sessionId">> => [string()]
%% }
-type update_q_app_session_output() :: #{binary() => any()}.


%% Example:
%% app_definition() :: #{
%%   <<"appDefinitionVersion">> => [string()],
%%   <<"canEdit">> => [boolean()],
%%   <<"cards">> => list(list())
%% }
-type app_definition() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_presigned_url_output() :: #{
%%   <<"fileId">> => [string()],
%%   <<"presignedUrl">> => [string()],
%%   <<"presignedUrlExpiration">> => non_neg_integer(),
%%   <<"presignedUrlFields">> => map()
%% }
-type create_presigned_url_output() :: #{binary() => any()}.


%% Example:
%% library_item_member() :: #{
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"categories">> => list(category()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"isRatedByUser">> => [boolean()],
%%   <<"isVerified">> => [boolean()],
%%   <<"libraryItemId">> => string(),
%%   <<"ratingCount">> => [integer()],
%%   <<"status">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()],
%%   <<"userCount">> => [integer()]
%% }
-type library_item_member() :: #{binary() => any()}.


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
%% get_q_app_input() :: #{
%%   <<"appId">> := string(),
%%   <<"appVersion">> => integer(),
%%   <<"instanceId">> := string()
%% }
-type get_q_app_input() :: #{binary() => any()}.


%% Example:
%% get_q_app_session_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string()
%% }
-type get_q_app_session_input() :: #{binary() => any()}.


%% Example:
%% delete_library_item_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"libraryItemId">> := string()
%% }
-type delete_library_item_input() :: #{binary() => any()}.


%% Example:
%% predict_app_definition() :: #{
%%   <<"appDefinition">> => app_definition_input(),
%%   <<"description">> => string(),
%%   <<"title">> => string()
%% }
-type predict_app_definition() :: #{binary() => any()}.


%% Example:
%% card_status() :: #{
%%   <<"currentState">> => list(any()),
%%   <<"currentValue">> => [string()],
%%   <<"submissions">> => list(submission())
%% }
-type card_status() :: #{binary() => any()}.


%% Example:
%% q_query_card() :: #{
%%   <<"attributeFilter">> => attribute_filter(),
%%   <<"dependencies">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"memoryReferences">> => list([string()]()),
%%   <<"outputSource">> => list(any()),
%%   <<"prompt">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type q_query_card() :: #{binary() => any()}.


%% Example:
%% batch_delete_category_input() :: #{
%%   <<"categories">> := list(string()),
%%   <<"instanceId">> := string()
%% }
-type batch_delete_category_input() :: #{binary() => any()}.


%% Example:
%% principal_output() :: #{
%%   <<"email">> => [string()],
%%   <<"userId">> => [string()],
%%   <<"userType">> => list(any())
%% }
-type principal_output() :: #{binary() => any()}.


%% Example:
%% batch_create_category_input_category() :: #{
%%   <<"color">> => [string()],
%%   <<"id">> => string(),
%%   <<"title">> => [string()]
%% }
-type batch_create_category_input_category() :: #{binary() => any()}.


%% Example:
%% q_plugin_card_input() :: #{
%%   <<"actionIdentifier">> => string(),
%%   <<"id">> => string(),
%%   <<"pluginId">> => string(),
%%   <<"prompt">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type q_plugin_card_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_q_app_output() :: #{
%%   <<"appArn">> => string(),
%%   <<"appDefinition">> => app_definition(),
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"initialPrompt">> => string(),
%%   <<"requiredCapabilities">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()]
%% }
-type get_q_app_output() :: #{binary() => any()}.


%% Example:
%% update_q_app_permissions_input() :: #{
%%   <<"appId">> := string(),
%%   <<"grantPermissions">> => list(permission_input()),
%%   <<"instanceId">> := string(),
%%   <<"revokePermissions">> => list(permission_input())
%% }
-type update_q_app_permissions_input() :: #{binary() => any()}.


%% Example:
%% disassociate_library_item_review_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"libraryItemId">> := string()
%% }
-type disassociate_library_item_review_input() :: #{binary() => any()}.


%% Example:
%% list_library_items_input() :: #{
%%   <<"categoryId">> => string(),
%%   <<"instanceId">> := string(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_library_items_input() :: #{binary() => any()}.


%% Example:
%% text_input_card_input() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"id">> => string(),
%%   <<"placeholder">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type text_input_card_input() :: #{binary() => any()}.


%% Example:
%% conversation_message() :: #{
%%   <<"body">> => [string()],
%%   <<"type">> => list(any())
%% }
-type conversation_message() :: #{binary() => any()}.


%% Example:
%% update_library_item_input() :: #{
%%   <<"categories">> => list(string()),
%%   <<"instanceId">> := string(),
%%   <<"libraryItemId">> := string(),
%%   <<"status">> => list(any())
%% }
-type update_library_item_input() :: #{binary() => any()}.


%% Example:
%% create_q_app_output() :: #{
%%   <<"appArn">> => string(),
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"initialPrompt">> => string(),
%%   <<"requiredCapabilities">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()]
%% }
-type create_q_app_output() :: #{binary() => any()}.


%% Example:
%% update_q_app_session_metadata_output() :: #{
%%   <<"sessionArn">> => [string()],
%%   <<"sessionId">> => string(),
%%   <<"sessionName">> => string(),
%%   <<"sharingConfiguration">> => session_sharing_configuration()
%% }
-type update_q_app_session_metadata_output() :: #{binary() => any()}.


%% Example:
%% list_categories_input() :: #{
%%   <<"instanceId">> := string()
%% }
-type list_categories_input() :: #{binary() => any()}.


%% Example:
%% create_presigned_url_input() :: #{
%%   <<"appId">> := string(),
%%   <<"cardId">> := string(),
%%   <<"fileContentsSha256">> := [string()],
%%   <<"fileName">> := string(),
%%   <<"instanceId">> := string(),
%%   <<"scope">> := list(any()),
%%   <<"sessionId">> => string()
%% }
-type create_presigned_url_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_q_app_session_metadata_output() :: #{
%%   <<"sessionArn">> => [string()],
%%   <<"sessionId">> => string(),
%%   <<"sessionName">> => string(),
%%   <<"sessionOwner">> => [boolean()],
%%   <<"sharingConfiguration">> => session_sharing_configuration()
%% }
-type get_q_app_session_metadata_output() :: #{binary() => any()}.


%% Example:
%% list_q_app_session_data_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string()
%% }
-type list_q_app_session_data_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% permission_input() :: #{
%%   <<"action">> => list(any()),
%%   <<"principal">> => [string()]
%% }
-type permission_input() :: #{binary() => any()}.


%% Example:
%% submission() :: #{
%%   <<"submissionId">> => string(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"value">> => [any()]
%% }
-type submission() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% text_input_card() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"dependencies">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"placeholder">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type text_input_card() :: #{binary() => any()}.


%% Example:
%% list_library_items_output() :: #{
%%   <<"libraryItems">> => list(library_item_member()),
%%   <<"nextToken">> => [string()]
%% }
-type list_library_items_output() :: #{binary() => any()}.


%% Example:
%% get_q_app_session_output() :: #{
%%   <<"appVersion">> => integer(),
%%   <<"cardStatus">> => map(),
%%   <<"latestPublishedAppVersion">> => integer(),
%%   <<"sessionArn">> => [string()],
%%   <<"sessionId">> => [string()],
%%   <<"sessionName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"userIsHost">> => [boolean()]
%% }
-type get_q_app_session_output() :: #{binary() => any()}.


%% Example:
%% list_q_apps_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_q_apps_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% export_q_app_session_data_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string()
%% }
-type export_q_app_session_data_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"userId">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% associate_library_item_review_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"libraryItemId">> := string()
%% }
-type associate_library_item_review_input() :: #{binary() => any()}.


%% Example:
%% file_upload_card() :: #{
%%   <<"allowOverride">> => [boolean()],
%%   <<"dependencies">> => list([string()]()),
%%   <<"fileId">> => [string()],
%%   <<"filename">> => [string()],
%%   <<"id">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type file_upload_card() :: #{binary() => any()}.


%% Example:
%% card_value() :: #{
%%   <<"cardId">> => string(),
%%   <<"submissionMutation">> => submission_mutation(),
%%   <<"value">> => [string()]
%% }
-type card_value() :: #{binary() => any()}.


%% Example:
%% update_q_app_output() :: #{
%%   <<"appArn">> => string(),
%%   <<"appId">> => string(),
%%   <<"appVersion">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"initialPrompt">> => string(),
%%   <<"requiredCapabilities">> => list(list(any())()),
%%   <<"status">> => list(any()),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => [string()]
%% }
-type update_q_app_output() :: #{binary() => any()}.


%% Example:
%% category() :: #{
%%   <<"appCount">> => [integer()],
%%   <<"color">> => [string()],
%%   <<"id">> => string(),
%%   <<"title">> => [string()]
%% }
-type category() :: #{binary() => any()}.


%% Example:
%% stop_q_app_session_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"sessionId">> := string()
%% }
-type stop_q_app_session_input() :: #{binary() => any()}.


%% Example:
%% attribute_filter() :: #{
%%   <<"andAllFilters">> => list(attribute_filter()),
%%   <<"containsAll">> => document_attribute(),
%%   <<"containsAny">> => document_attribute(),
%%   <<"equalsTo">> => document_attribute(),
%%   <<"greaterThan">> => document_attribute(),
%%   <<"greaterThanOrEquals">> => document_attribute(),
%%   <<"lessThan">> => document_attribute(),
%%   <<"lessThanOrEquals">> => document_attribute(),
%%   <<"notFilter">> => attribute_filter(),
%%   <<"orAllFilters">> => list(attribute_filter())
%% }
-type attribute_filter() :: #{binary() => any()}.


%% Example:
%% q_query_card_input() :: #{
%%   <<"attributeFilter">> => attribute_filter(),
%%   <<"id">> => string(),
%%   <<"outputSource">> => list(any()),
%%   <<"prompt">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type q_query_card_input() :: #{binary() => any()}.


%% Example:
%% update_q_app_input() :: #{
%%   <<"appDefinition">> => app_definition_input(),
%%   <<"appId">> := string(),
%%   <<"description">> => string(),
%%   <<"instanceId">> := string(),
%%   <<"title">> => string()
%% }
-type update_q_app_input() :: #{binary() => any()}.


%% Example:
%% predict_q_app_input() :: #{
%%   <<"instanceId">> := string(),
%%   <<"options">> => list()
%% }
-type predict_q_app_input() :: #{binary() => any()}.


%% Example:
%% content_too_large_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type content_too_large_exception() :: #{binary() => any()}.


%% Example:
%% import_document_input() :: #{
%%   <<"appId">> := string(),
%%   <<"cardId">> := string(),
%%   <<"fileContentsBase64">> := [string()],
%%   <<"fileName">> := string(),
%%   <<"instanceId">> := string(),
%%   <<"scope">> := list(any()),
%%   <<"sessionId">> => string()
%% }
-type import_document_input() :: #{binary() => any()}.


%% Example:
%% batch_update_category_input() :: #{
%%   <<"categories">> := list(category_input()),
%%   <<"instanceId">> := string()
%% }
-type batch_update_category_input() :: #{binary() => any()}.


%% Example:
%% start_q_app_session_output() :: #{
%%   <<"sessionArn">> => [string()],
%%   <<"sessionId">> => [string()]
%% }
-type start_q_app_session_output() :: #{binary() => any()}.


%% Example:
%% describe_q_app_permissions_input() :: #{
%%   <<"appId">> := string(),
%%   <<"instanceId">> := string()
%% }
-type describe_q_app_permissions_input() :: #{binary() => any()}.


%% Example:
%% submission_mutation() :: #{
%%   <<"mutationType">> => list(any()),
%%   <<"submissionId">> => string()
%% }
-type submission_mutation() :: #{binary() => any()}.


%% Example:
%% form_input_card() :: #{
%%   <<"computeMode">> => list(any()),
%%   <<"dependencies">> => list([string()]()),
%%   <<"id">> => string(),
%%   <<"metadata">> => form_input_card_metadata(),
%%   <<"title">> => string(),
%%   <<"type">> => list(any())
%% }
-type form_input_card() :: #{binary() => any()}.


%% Example:
%% list_q_apps_output() :: #{
%%   <<"apps">> => list(user_app_item()),
%%   <<"nextToken">> => [string()]
%% }
-type list_q_apps_output() :: #{binary() => any()}.


%% Example:
%% q_app_session_data() :: #{
%%   <<"cardId">> => string(),
%%   <<"submissionId">> => string(),
%%   <<"timestamp">> => non_neg_integer(),
%%   <<"user">> => user(),
%%   <<"value">> => [any()]
%% }
-type q_app_session_data() :: #{binary() => any()}.


%% Example:
%% export_q_app_session_data_output() :: #{
%%   <<"csvFileLink">> => [string()],
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"sessionArn">> => [string()]
%% }
-type export_q_app_session_data_output() :: #{binary() => any()}.

-type associate_library_item_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type associate_q_app_with_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type batch_create_category_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type batch_delete_category_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type batch_update_category_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type create_library_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type create_presigned_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type create_q_app_errors() ::
    content_too_large_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type delete_library_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type delete_q_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type describe_q_app_permissions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type disassociate_library_item_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type disassociate_q_app_from_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type export_q_app_session_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type get_library_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_q_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_q_app_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_q_app_session_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type import_document_errors() ::
    content_too_large_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_categories_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_library_items_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_q_app_session_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_q_apps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type predict_q_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type start_q_app_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type stop_q_app_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_library_item_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type update_library_item_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type update_q_app_errors() ::
    content_too_large_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_q_app_permissions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_q_app_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_q_app_session_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a rating or review for a library item with the user
%% submitting the request.
%%
%% This increments the rating count for the specified library item.
-spec associate_library_item_review(aws_client:aws_client(), associate_library_item_review_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_library_item_review_errors(), tuple()}.
associate_library_item_review(Client, Input) ->
    associate_library_item_review(Client, Input, []).

-spec associate_library_item_review(aws_client:aws_client(), associate_library_item_review_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_library_item_review_errors(), tuple()}.
associate_library_item_review(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.associateItemRating"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation creates a link between the user's identity calling
%% the operation and a specific Q App.
%%
%% This is useful to mark the Q App as a favorite for the user if the user
%% doesn't own the Amazon Q App so they can still run it and see it in
%% their inventory of Q Apps.
-spec associate_q_app_with_user(aws_client:aws_client(), associate_q_app_with_user_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_q_app_with_user_errors(), tuple()}.
associate_q_app_with_user(Client, Input) ->
    associate_q_app_with_user(Client, Input, []).

-spec associate_q_app_with_user(aws_client:aws_client(), associate_q_app_with_user_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_q_app_with_user_errors(), tuple()}.
associate_q_app_with_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.install"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates Categories for the Amazon Q Business application environment
%% instance.
%%
%% Web experience users use Categories to tag and filter library items. For
%% more information, see Custom labels for Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html.
-spec batch_create_category(aws_client:aws_client(), batch_create_category_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_create_category_errors(), tuple()}.
batch_create_category(Client, Input) ->
    batch_create_category(Client, Input, []).

-spec batch_create_category(aws_client:aws_client(), batch_create_category_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_create_category_errors(), tuple()}.
batch_create_category(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.createCategories"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes Categories for the Amazon Q Business application environment
%% instance.
%%
%% Web experience users use Categories to tag and filter library items. For
%% more information, see Custom labels for Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html.
-spec batch_delete_category(aws_client:aws_client(), batch_delete_category_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_delete_category_errors(), tuple()}.
batch_delete_category(Client, Input) ->
    batch_delete_category(Client, Input, []).

-spec batch_delete_category(aws_client:aws_client(), batch_delete_category_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_delete_category_errors(), tuple()}.
batch_delete_category(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.deleteCategories"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates Categories for the Amazon Q Business application environment
%% instance.
%%
%% Web experience users use Categories to tag and filter library items. For
%% more information, see Custom labels for Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html.
-spec batch_update_category(aws_client:aws_client(), batch_update_category_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_update_category_errors(), tuple()}.
batch_update_category(Client, Input) ->
    batch_update_category(Client, Input, []).

-spec batch_update_category(aws_client:aws_client(), batch_update_category_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_update_category_errors(), tuple()}.
batch_update_category(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.updateCategories"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new library item for an Amazon Q App, allowing it to be
%% discovered and used by other allowed users.
-spec create_library_item(aws_client:aws_client(), create_library_item_input()) ->
    {ok, create_library_item_output(), tuple()} |
    {error, any()} |
    {error, create_library_item_errors(), tuple()}.
create_library_item(Client, Input) ->
    create_library_item(Client, Input, []).

-spec create_library_item(aws_client:aws_client(), create_library_item_input(), proplists:proplist()) ->
    {ok, create_library_item_output(), tuple()} |
    {error, any()} |
    {error, create_library_item_errors(), tuple()}.
create_library_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.createItem"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a presigned URL for an S3 POST operation to upload a file.
%%
%% You can use this URL to set a default file for a `FileUploadCard' in a
%% Q App definition or to provide a file for a single Q App run. The
%% `scope' parameter determines how the file will be used, either at the
%% app definition level or the app session level.
%%
%% The IAM permissions are derived from the `qapps:ImportDocument'
%% action. For more information on the IAM policy for Amazon Q Apps, see IAM
%% permissions for using Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-q-apps-iam-permissions.html.
-spec create_presigned_url(aws_client:aws_client(), create_presigned_url_input()) ->
    {ok, create_presigned_url_output(), tuple()} |
    {error, any()} |
    {error, create_presigned_url_errors(), tuple()}.
create_presigned_url(Client, Input) ->
    create_presigned_url(Client, Input, []).

-spec create_presigned_url(aws_client:aws_client(), create_presigned_url_input(), proplists:proplist()) ->
    {ok, create_presigned_url_output(), tuple()} |
    {error, any()} |
    {error, create_presigned_url_errors(), tuple()}.
create_presigned_url(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.createPresignedUrl"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Amazon Q App based on the provided definition.
%%
%% The Q App definition specifies the cards and flow of the Q App. This
%% operation also calculates the dependencies between the cards by inspecting
%% the references in the prompts.
-spec create_q_app(aws_client:aws_client(), create_q_app_input()) ->
    {ok, create_q_app_output(), tuple()} |
    {error, any()} |
    {error, create_q_app_errors(), tuple()}.
create_q_app(Client, Input) ->
    create_q_app(Client, Input, []).

-spec create_q_app(aws_client:aws_client(), create_q_app_input(), proplists:proplist()) ->
    {ok, create_q_app_output(), tuple()} |
    {error, any()} |
    {error, create_q_app_errors(), tuple()}.
create_q_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a library item for an Amazon Q App, removing it from the
%% library so it can no longer be discovered or used by other users.
-spec delete_library_item(aws_client:aws_client(), delete_library_item_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_library_item_errors(), tuple()}.
delete_library_item(Client, Input) ->
    delete_library_item(Client, Input, []).

-spec delete_library_item(aws_client:aws_client(), delete_library_item_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_library_item_errors(), tuple()}.
delete_library_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.deleteItem"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Q App owned by the user.
%%
%% If the Q App was previously published to the library, it is also removed
%% from the library.
-spec delete_q_app(aws_client:aws_client(), delete_q_app_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_q_app_errors(), tuple()}.
delete_q_app(Client, Input) ->
    delete_q_app(Client, Input, []).

-spec delete_q_app(aws_client:aws_client(), delete_q_app_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_q_app_errors(), tuple()}.
delete_q_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes read permissions for a Amazon Q App in Amazon Q Business
%% application environment instance.
-spec describe_q_app_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_q_app_permissions_output(), tuple()} |
    {error, any()} |
    {error, describe_q_app_permissions_errors(), tuple()}.
describe_q_app_permissions(Client, AppId, InstanceId)
  when is_map(Client) ->
    describe_q_app_permissions(Client, AppId, InstanceId, #{}, #{}).

-spec describe_q_app_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_q_app_permissions_output(), tuple()} |
    {error, any()} |
    {error, describe_q_app_permissions_errors(), tuple()}.
describe_q_app_permissions(Client, AppId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_q_app_permissions(Client, AppId, InstanceId, QueryMap, HeadersMap, []).

-spec describe_q_app_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_q_app_permissions_output(), tuple()} |
    {error, any()} |
    {error, describe_q_app_permissions_errors(), tuple()}.
describe_q_app_permissions(Client, AppId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps.describeQAppPermissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"appId">>, AppId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes a rating or review previously submitted by the user for a
%% library item.
-spec disassociate_library_item_review(aws_client:aws_client(), disassociate_library_item_review_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_library_item_review_errors(), tuple()}.
disassociate_library_item_review(Client, Input) ->
    disassociate_library_item_review(Client, Input, []).

-spec disassociate_library_item_review(aws_client:aws_client(), disassociate_library_item_review_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_library_item_review_errors(), tuple()}.
disassociate_library_item_review(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.disassociateItemRating"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a Q App from a user removing the user's access to
%% run the Q App.
-spec disassociate_q_app_from_user(aws_client:aws_client(), disassociate_q_app_from_user_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_q_app_from_user_errors(), tuple()}.
disassociate_q_app_from_user(Client, Input) ->
    disassociate_q_app_from_user(Client, Input, []).

-spec disassociate_q_app_from_user(aws_client:aws_client(), disassociate_q_app_from_user_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_q_app_from_user_errors(), tuple()}.
disassociate_q_app_from_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.uninstall"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Exports the collected data of a Q App data collection session.
-spec export_q_app_session_data(aws_client:aws_client(), export_q_app_session_data_input()) ->
    {ok, export_q_app_session_data_output(), tuple()} |
    {error, any()} |
    {error, export_q_app_session_data_errors(), tuple()}.
export_q_app_session_data(Client, Input) ->
    export_q_app_session_data(Client, Input, []).

-spec export_q_app_session_data(aws_client:aws_client(), export_q_app_session_data_input(), proplists:proplist()) ->
    {ok, export_q_app_session_data_output(), tuple()} |
    {error, any()} |
    {error, export_q_app_session_data_errors(), tuple()}.
export_q_app_session_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime.exportQAppSessionData"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves details about a library item for an Amazon Q App, including
%% its metadata, categories, ratings, and usage statistics.
-spec get_library_item(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_library_item_output(), tuple()} |
    {error, any()} |
    {error, get_library_item_errors(), tuple()}.
get_library_item(Client, LibraryItemId, InstanceId)
  when is_map(Client) ->
    get_library_item(Client, LibraryItemId, InstanceId, #{}, #{}).

-spec get_library_item(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_library_item_output(), tuple()} |
    {error, any()} |
    {error, get_library_item_errors(), tuple()}.
get_library_item(Client, LibraryItemId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_library_item(Client, LibraryItemId, InstanceId, QueryMap, HeadersMap, []).

-spec get_library_item(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_library_item_output(), tuple()} |
    {error, any()} |
    {error, get_library_item_errors(), tuple()}.
get_library_item(Client, LibraryItemId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog.getItem"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"appId">>, maps:get(<<"appId">>, QueryMap, undefined)},
        {<<"libraryItemId">>, LibraryItemId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the full details of an Q App, including its definition
%% specifying the cards and flow.
-spec get_q_app(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_q_app_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_errors(), tuple()}.
get_q_app(Client, AppId, InstanceId)
  when is_map(Client) ->
    get_q_app(Client, AppId, InstanceId, #{}, #{}).

-spec get_q_app(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_q_app_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_errors(), tuple()}.
get_q_app(Client, AppId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_q_app(Client, AppId, InstanceId, QueryMap, HeadersMap, []).

-spec get_q_app(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_q_app_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_errors(), tuple()}.
get_q_app(Client, AppId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps.get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"appId">>, AppId},
        {<<"appVersion">>, maps:get(<<"appVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current state and results for an active session of an
%% Amazon Q App.
-spec get_q_app_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_errors(), tuple()}.
get_q_app_session(Client, SessionId, InstanceId)
  when is_map(Client) ->
    get_q_app_session(Client, SessionId, InstanceId, #{}, #{}).

-spec get_q_app_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_errors(), tuple()}.
get_q_app_session(Client, SessionId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_q_app_session(Client, SessionId, InstanceId, QueryMap, HeadersMap, []).

-spec get_q_app_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_errors(), tuple()}.
get_q_app_session(Client, SessionId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtime.getQAppSession"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sessionId">>, SessionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current configuration of a Q App session.
-spec get_q_app_session_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_q_app_session_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_metadata_errors(), tuple()}.
get_q_app_session_metadata(Client, SessionId, InstanceId)
  when is_map(Client) ->
    get_q_app_session_metadata(Client, SessionId, InstanceId, #{}, #{}).

-spec get_q_app_session_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_q_app_session_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_metadata_errors(), tuple()}.
get_q_app_session_metadata(Client, SessionId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_q_app_session_metadata(Client, SessionId, InstanceId, QueryMap, HeadersMap, []).

-spec get_q_app_session_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_q_app_session_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_q_app_session_metadata_errors(), tuple()}.
get_q_app_session_metadata(Client, SessionId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtime.getQAppSessionMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sessionId">>, SessionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Uploads a file that can then be used either as a default in a
%% `FileUploadCard' from Q App definition or as a file that is used
%% inside a single Q App run.
%%
%% The purpose of the document is determined by a scope parameter that
%% indicates whether it is at the app definition level or at the app session
%% level.
-spec import_document(aws_client:aws_client(), import_document_input()) ->
    {ok, import_document_output(), tuple()} |
    {error, any()} |
    {error, import_document_errors(), tuple()}.
import_document(Client, Input) ->
    import_document(Client, Input, []).

-spec import_document(aws_client:aws_client(), import_document_input(), proplists:proplist()) ->
    {ok, import_document_output(), tuple()} |
    {error, any()} |
    {error, import_document_errors(), tuple()}.
import_document(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.importDocument"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the categories of a Amazon Q Business application environment
%% instance.
%%
%% For more information, see Custom labels for Amazon Q Apps:
%% https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html.
-spec list_categories(aws_client:aws_client(), binary() | list()) ->
    {ok, list_categories_output(), tuple()} |
    {error, any()} |
    {error, list_categories_errors(), tuple()}.
list_categories(Client, InstanceId)
  when is_map(Client) ->
    list_categories(Client, InstanceId, #{}, #{}).

-spec list_categories(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_categories_output(), tuple()} |
    {error, any()} |
    {error, list_categories_errors(), tuple()}.
list_categories(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_categories(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_categories(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_categories_output(), tuple()} |
    {error, any()} |
    {error, list_categories_errors(), tuple()}.
list_categories(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog.listCategories"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the library items for Amazon Q Apps that are published and
%% available for users in your Amazon Web Services account.
-spec list_library_items(aws_client:aws_client(), binary() | list()) ->
    {ok, list_library_items_output(), tuple()} |
    {error, any()} |
    {error, list_library_items_errors(), tuple()}.
list_library_items(Client, InstanceId)
  when is_map(Client) ->
    list_library_items(Client, InstanceId, #{}, #{}).

-spec list_library_items(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_library_items_output(), tuple()} |
    {error, any()} |
    {error, list_library_items_errors(), tuple()}.
list_library_items(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_library_items(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_library_items(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_library_items_output(), tuple()} |
    {error, any()} |
    {error, list_library_items_errors(), tuple()}.
list_library_items(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog.list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"categoryId">>, maps:get(<<"categoryId">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the collected data of a Q App data collection session.
-spec list_q_app_session_data(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_q_app_session_data_output(), tuple()} |
    {error, any()} |
    {error, list_q_app_session_data_errors(), tuple()}.
list_q_app_session_data(Client, SessionId, InstanceId)
  when is_map(Client) ->
    list_q_app_session_data(Client, SessionId, InstanceId, #{}, #{}).

-spec list_q_app_session_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_q_app_session_data_output(), tuple()} |
    {error, any()} |
    {error, list_q_app_session_data_errors(), tuple()}.
list_q_app_session_data(Client, SessionId, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_q_app_session_data(Client, SessionId, InstanceId, QueryMap, HeadersMap, []).

-spec list_q_app_session_data(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_q_app_session_data_output(), tuple()} |
    {error, any()} |
    {error, list_q_app_session_data_errors(), tuple()}.
list_q_app_session_data(Client, SessionId, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtime.listQAppSessionData"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"sessionId">>, SessionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Q Apps owned by or associated with the user either
%% because they created it or because they used it from the library in the
%% past.
%%
%% The user identity is extracted from the credentials used to invoke this
%% operation..
-spec list_q_apps(aws_client:aws_client(), binary() | list()) ->
    {ok, list_q_apps_output(), tuple()} |
    {error, any()} |
    {error, list_q_apps_errors(), tuple()}.
list_q_apps(Client, InstanceId)
  when is_map(Client) ->
    list_q_apps(Client, InstanceId, #{}, #{}).

-spec list_q_apps(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_q_apps_output(), tuple()} |
    {error, any()} |
    {error, list_q_apps_errors(), tuple()}.
list_q_apps(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_q_apps(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_q_apps(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_q_apps_output(), tuple()} |
    {error, any()} |
    {error, list_q_apps_errors(), tuple()}.
list_q_apps(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps.list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"instance-id">>, InstanceId}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with an Amazon Q Apps resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates an Amazon Q App definition based on either a conversation
%% or a problem statement provided as input.The resulting app definition can
%% be used to call `CreateQApp'.
%%
%% This API doesn't create Amazon Q Apps directly.
-spec predict_q_app(aws_client:aws_client(), predict_q_app_input()) ->
    {ok, predict_q_app_output(), tuple()} |
    {error, any()} |
    {error, predict_q_app_errors(), tuple()}.
predict_q_app(Client, Input) ->
    predict_q_app(Client, Input, []).

-spec predict_q_app(aws_client:aws_client(), predict_q_app_input(), proplists:proplist()) ->
    {ok, predict_q_app_output(), tuple()} |
    {error, any()} |
    {error, predict_q_app_errors(), tuple()}.
predict_q_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.predictQApp"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a new session for an Amazon Q App, allowing inputs to be
%% provided and the app to be run.
%%
%% Each Q App session will be condensed into a single conversation in the web
%% experience.
-spec start_q_app_session(aws_client:aws_client(), start_q_app_session_input()) ->
    {ok, start_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, start_q_app_session_errors(), tuple()}.
start_q_app_session(Client, Input) ->
    start_q_app_session(Client, Input, []).

-spec start_q_app_session(aws_client:aws_client(), start_q_app_session_input(), proplists:proplist()) ->
    {ok, start_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, start_q_app_session_errors(), tuple()}.
start_q_app_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime.startQAppSession"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops an active session for an Amazon Q App.This deletes all data
%% related to the session and makes it invalid for future uses.
%%
%% The results of the session will be persisted as part of the conversation.
-spec stop_q_app_session(aws_client:aws_client(), stop_q_app_session_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_q_app_session_errors(), tuple()}.
stop_q_app_session(Client, Input) ->
    stop_q_app_session(Client, Input, []).

-spec stop_q_app_session(aws_client:aws_client(), stop_q_app_session_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_q_app_session_errors(), tuple()}.
stop_q_app_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime.deleteMiniAppRun"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates tags with an Amazon Q Apps resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceARN, Input) ->
    tag_resource(Client, ResourceARN, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Disassociates tags from an Amazon Q Apps resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceARN, Input) ->
    untag_resource(Client, ResourceARN, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Updates the library item for an Amazon Q App.
-spec update_library_item(aws_client:aws_client(), update_library_item_input()) ->
    {ok, update_library_item_output(), tuple()} |
    {error, any()} |
    {error, update_library_item_errors(), tuple()}.
update_library_item(Client, Input) ->
    update_library_item(Client, Input, []).

-spec update_library_item(aws_client:aws_client(), update_library_item_input(), proplists:proplist()) ->
    {ok, update_library_item_output(), tuple()} |
    {error, any()} |
    {error, update_library_item_errors(), tuple()}.
update_library_item(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.updateItem"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the verification status of a library item for an Amazon Q
%% App.
-spec update_library_item_metadata(aws_client:aws_client(), update_library_item_metadata_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_library_item_metadata_errors(), tuple()}.
update_library_item_metadata(Client, Input) ->
    update_library_item_metadata(Client, Input, []).

-spec update_library_item_metadata(aws_client:aws_client(), update_library_item_metadata_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_library_item_metadata_errors(), tuple()}.
update_library_item_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/catalog.updateItemMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Amazon Q App, allowing modifications to its
%% title, description, and definition.
-spec update_q_app(aws_client:aws_client(), update_q_app_input()) ->
    {ok, update_q_app_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_errors(), tuple()}.
update_q_app(Client, Input) ->
    update_q_app(Client, Input, []).

-spec update_q_app(aws_client:aws_client(), update_q_app_input(), proplists:proplist()) ->
    {ok, update_q_app_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_errors(), tuple()}.
update_q_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates read permissions for a Amazon Q App in Amazon Q Business
%% application environment instance.
-spec update_q_app_permissions(aws_client:aws_client(), update_q_app_permissions_input()) ->
    {ok, update_q_app_permissions_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_permissions_errors(), tuple()}.
update_q_app_permissions(Client, Input) ->
    update_q_app_permissions(Client, Input, []).

-spec update_q_app_permissions(aws_client:aws_client(), update_q_app_permissions_input(), proplists:proplist()) ->
    {ok, update_q_app_permissions_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_permissions_errors(), tuple()}.
update_q_app_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps.updateQAppPermissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the session for a given Q App `sessionId'.
%%
%% This is only valid when at least one card of the session is in the
%% `WAITING' state. Data for each `WAITING' card can be provided as
%% input. If inputs are not provided, the call will be accepted but session
%% will not move forward. Inputs for cards that are not in the `WAITING'
%% status will be ignored.
-spec update_q_app_session(aws_client:aws_client(), update_q_app_session_input()) ->
    {ok, update_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_session_errors(), tuple()}.
update_q_app_session(Client, Input) ->
    update_q_app_session(Client, Input, []).

-spec update_q_app_session(aws_client:aws_client(), update_q_app_session_input(), proplists:proplist()) ->
    {ok, update_q_app_session_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_session_errors(), tuple()}.
update_q_app_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime.updateQAppSession"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration metadata of a session for a given Q App
%% `sessionId'.
-spec update_q_app_session_metadata(aws_client:aws_client(), update_q_app_session_metadata_input()) ->
    {ok, update_q_app_session_metadata_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_session_metadata_errors(), tuple()}.
update_q_app_session_metadata(Client, Input) ->
    update_q_app_session_metadata(Client, Input, []).

-spec update_q_app_session_metadata(aws_client:aws_client(), update_q_app_session_metadata_input(), proplists:proplist()) ->
    {ok, update_q_app_session_metadata_output(), tuple()} |
    {error, any()} |
    {error, update_q_app_session_metadata_errors(), tuple()}.
update_q_app_session_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/runtime.updateQAppSessionMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"instance-id">>, <<"instanceId">>}
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
    Client1 = Client#{service => <<"qapps">>},
    Host = build_host(<<"data.qapps">>, Client1),
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
