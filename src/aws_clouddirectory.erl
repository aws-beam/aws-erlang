%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Cloud Directory
%%
%% Amazon Cloud Directory is a component of the AWS Directory Service that
%% simplifies the
%% development and management of cloud-scale web, mobile, and IoT
%% applications.
%%
%% This guide
%% describes the Cloud Directory operations that you can call
%% programmatically and includes
%% detailed information on data types and errors. For information about Cloud
%% Directory features, see AWS Directory
%% Service: https://aws.amazon.com/directoryservice/ and the Amazon Cloud
%% Directory Developer Guide:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html.
-module(aws_clouddirectory).

-export([add_facet_to_object/2,
         add_facet_to_object/3,
         apply_schema/2,
         apply_schema/3,
         attach_object/2,
         attach_object/3,
         attach_policy/2,
         attach_policy/3,
         attach_to_index/2,
         attach_to_index/3,
         attach_typed_link/2,
         attach_typed_link/3,
         batch_read/2,
         batch_read/3,
         batch_write/2,
         batch_write/3,
         create_directory/2,
         create_directory/3,
         create_facet/2,
         create_facet/3,
         create_index/2,
         create_index/3,
         create_object/2,
         create_object/3,
         create_schema/2,
         create_schema/3,
         create_typed_link_facet/2,
         create_typed_link_facet/3,
         delete_directory/2,
         delete_directory/3,
         delete_facet/2,
         delete_facet/3,
         delete_object/2,
         delete_object/3,
         delete_schema/2,
         delete_schema/3,
         delete_typed_link_facet/2,
         delete_typed_link_facet/3,
         detach_from_index/2,
         detach_from_index/3,
         detach_object/2,
         detach_object/3,
         detach_policy/2,
         detach_policy/3,
         detach_typed_link/2,
         detach_typed_link/3,
         disable_directory/2,
         disable_directory/3,
         enable_directory/2,
         enable_directory/3,
         get_applied_schema_version/2,
         get_applied_schema_version/3,
         get_directory/2,
         get_directory/3,
         get_facet/2,
         get_facet/3,
         get_link_attributes/2,
         get_link_attributes/3,
         get_object_attributes/2,
         get_object_attributes/3,
         get_object_information/2,
         get_object_information/3,
         get_schema_as_json/2,
         get_schema_as_json/3,
         get_typed_link_facet_information/2,
         get_typed_link_facet_information/3,
         list_applied_schema_arns/2,
         list_applied_schema_arns/3,
         list_attached_indices/2,
         list_attached_indices/3,
         list_development_schema_arns/2,
         list_development_schema_arns/3,
         list_directories/2,
         list_directories/3,
         list_facet_attributes/2,
         list_facet_attributes/3,
         list_facet_names/2,
         list_facet_names/3,
         list_incoming_typed_links/2,
         list_incoming_typed_links/3,
         list_index/2,
         list_index/3,
         list_managed_schema_arns/2,
         list_managed_schema_arns/3,
         list_object_attributes/2,
         list_object_attributes/3,
         list_object_children/2,
         list_object_children/3,
         list_object_parent_paths/2,
         list_object_parent_paths/3,
         list_object_parents/2,
         list_object_parents/3,
         list_object_policies/2,
         list_object_policies/3,
         list_outgoing_typed_links/2,
         list_outgoing_typed_links/3,
         list_policy_attachments/2,
         list_policy_attachments/3,
         list_published_schema_arns/2,
         list_published_schema_arns/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_typed_link_facet_attributes/2,
         list_typed_link_facet_attributes/3,
         list_typed_link_facet_names/2,
         list_typed_link_facet_names/3,
         lookup_policy/2,
         lookup_policy/3,
         publish_schema/2,
         publish_schema/3,
         put_schema_from_json/2,
         put_schema_from_json/3,
         remove_facet_from_object/2,
         remove_facet_from_object/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_facet/2,
         update_facet/3,
         update_link_attributes/2,
         update_link_attributes/3,
         update_object_attributes/2,
         update_object_attributes/3,
         update_schema/2,
         update_schema/3,
         update_typed_link_facet/2,
         update_typed_link_facet/3,
         upgrade_applied_schema/2,
         upgrade_applied_schema/3,
         upgrade_published_schema/2,
         upgrade_published_schema/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% incompatible_schema_exception() :: #{
%%   <<"Message">> => string()
%% }
-type incompatible_schema_exception() :: #{binary() => any()}.


%% Example:
%% get_facet_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type get_facet_request() :: #{binary() => any()}.


%% Example:
%% object_attribute_range() :: #{
%%   <<"AttributeKey">> => attribute_key(),
%%   <<"Range">> => typed_attribute_value_range()
%% }
-type object_attribute_range() :: #{binary() => any()}.


%% Example:
%% batch_get_link_attributes() :: #{
%%   <<"AttributeNames">> => list(string()),
%%   <<"TypedLinkSpecifier">> => typed_link_specifier()
%% }
-type batch_get_link_attributes() :: #{binary() => any()}.


%% Example:
%% batch_list_policy_attachments() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyReference">> => object_reference()
%% }
-type batch_list_policy_attachments() :: #{binary() => any()}.


%% Example:
%% delete_object_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type delete_object_request() :: #{binary() => any()}.


%% Example:
%% policy_to_path() :: #{
%%   <<"Path">> => string(),
%%   <<"Policies">> => list(policy_attachment())
%% }
-type policy_to_path() :: #{binary() => any()}.


%% Example:
%% list_incoming_typed_links_response() :: #{
%%   <<"LinkSpecifiers">> => list(typed_link_specifier()),
%%   <<"NextToken">> => string()
%% }
-type list_incoming_typed_links_response() :: #{binary() => any()}.


%% Example:
%% get_object_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value())
%% }
-type get_object_attributes_response() :: #{binary() => any()}.


%% Example:
%% batch_attach_object() :: #{
%%   <<"ChildReference">> => object_reference(),
%%   <<"LinkName">> => string(),
%%   <<"ParentReference">> => object_reference()
%% }
-type batch_attach_object() :: #{binary() => any()}.


%% Example:
%% batch_list_index() :: #{
%%   <<"IndexReference">> => object_reference(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RangesOnIndexedValues">> => list(object_attribute_range())
%% }
-type batch_list_index() :: #{binary() => any()}.


%% Example:
%% batch_detach_object_response() :: #{
%%   <<"detachedObjectIdentifier">> => string()
%% }
-type batch_detach_object_response() :: #{binary() => any()}.


%% Example:
%% create_directory_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type create_directory_request() :: #{binary() => any()}.


%% Example:
%% batch_lookup_policy() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_lookup_policy() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_object_policies_response() :: #{
%%   <<"AttachedPolicyIds">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_object_policies_response() :: #{binary() => any()}.


%% Example:
%% list_published_schema_arns_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaArns">> => list(string())
%% }
-type list_published_schema_arns_response() :: #{binary() => any()}.


%% Example:
%% batch_attach_to_index_response() :: #{
%%   <<"AttachedObjectIdentifier">> => string()
%% }
-type batch_attach_to_index_response() :: #{binary() => any()}.


%% Example:
%% create_schema_request() :: #{
%%   <<"Name">> := string()
%% }
-type create_schema_request() :: #{binary() => any()}.


%% Example:
%% batch_get_object_attributes() :: #{
%%   <<"AttributeNames">> => list(string()),
%%   <<"ObjectReference">> => object_reference(),
%%   <<"SchemaFacet">> => schema_facet()
%% }
-type batch_get_object_attributes() :: #{binary() => any()}.


%% Example:
%% typed_link_specifier() :: #{
%%   <<"IdentityAttributeValues">> => list(attribute_name_and_value()),
%%   <<"SourceObjectReference">> => object_reference(),
%%   <<"TargetObjectReference">> => object_reference(),
%%   <<"TypedLinkFacet">> => typed_link_schema_and_facet_name()
%% }
-type typed_link_specifier() :: #{binary() => any()}.


%% Example:
%% batch_list_incoming_typed_links() :: #{
%%   <<"FilterAttributeRanges">> => list(typed_link_attribute_range()),
%%   <<"FilterTypedLink">> => typed_link_schema_and_facet_name(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_incoming_typed_links() :: #{binary() => any()}.


%% Example:
%% batch_remove_facet_from_object() :: #{
%%   <<"ObjectReference">> => object_reference(),
%%   <<"SchemaFacet">> => schema_facet()
%% }
-type batch_remove_facet_from_object() :: #{binary() => any()}.


%% Example:
%% get_applied_schema_version_response() :: #{
%%   <<"AppliedSchemaArn">> => string()
%% }
-type get_applied_schema_version_response() :: #{binary() => any()}.


%% Example:
%% not_index_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_index_exception() :: #{binary() => any()}.

%% Example:
%% create_typed_link_facet_response() :: #{}
-type create_typed_link_facet_response() :: #{}.


%% Example:
%% batch_list_attached_indices() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TargetReference">> => object_reference()
%% }
-type batch_list_attached_indices() :: #{binary() => any()}.


%% Example:
%% disable_directory_response() :: #{
%%   <<"DirectoryArn">> => string()
%% }
-type disable_directory_response() :: #{binary() => any()}.


%% Example:
%% get_schema_as_json_response() :: #{
%%   <<"Document">> => string(),
%%   <<"Name">> => string()
%% }
-type get_schema_as_json_response() :: #{binary() => any()}.


%% Example:
%% retryable_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type retryable_conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_directory_response() :: #{
%%   <<"AppliedSchemaArn">> => string(),
%%   <<"DirectoryArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"ObjectIdentifier">> => string()
%% }
-type create_directory_response() :: #{binary() => any()}.


%% Example:
%% get_applied_schema_version_request() :: #{
%%   <<"SchemaArn">> := string()
%% }
-type get_applied_schema_version_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% delete_schema_request() :: #{
%%   <<"SchemaArn">> := string()
%% }
-type delete_schema_request() :: #{binary() => any()}.


%% Example:
%% schema_facet() :: #{
%%   <<"FacetName">> => string(),
%%   <<"SchemaArn">> => string()
%% }
-type schema_facet() :: #{binary() => any()}.


%% Example:
%% batch_list_object_attributes() :: #{
%%   <<"FacetFilter">> => schema_facet(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_object_attributes() :: #{binary() => any()}.

%% Example:
%% delete_object_response() :: #{}
-type delete_object_response() :: #{}.


%% Example:
%% object_reference() :: #{
%%   <<"Selector">> => string()
%% }
-type object_reference() :: #{binary() => any()}.


%% Example:
%% batch_write_operation_response() :: #{
%%   <<"AddFacetToObject">> => batch_add_facet_to_object_response(),
%%   <<"AttachObject">> => batch_attach_object_response(),
%%   <<"AttachPolicy">> => batch_attach_policy_response(),
%%   <<"AttachToIndex">> => batch_attach_to_index_response(),
%%   <<"AttachTypedLink">> => batch_attach_typed_link_response(),
%%   <<"CreateIndex">> => batch_create_index_response(),
%%   <<"CreateObject">> => batch_create_object_response(),
%%   <<"DeleteObject">> => batch_delete_object_response(),
%%   <<"DetachFromIndex">> => batch_detach_from_index_response(),
%%   <<"DetachObject">> => batch_detach_object_response(),
%%   <<"DetachPolicy">> => batch_detach_policy_response(),
%%   <<"DetachTypedLink">> => batch_detach_typed_link_response(),
%%   <<"RemoveFacetFromObject">> => batch_remove_facet_from_object_response(),
%%   <<"UpdateLinkAttributes">> => batch_update_link_attributes_response(),
%%   <<"UpdateObjectAttributes">> => batch_update_object_attributes_response()
%% }
-type batch_write_operation_response() :: #{binary() => any()}.


%% Example:
%% batch_write_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"Operations">> := list(batch_write_operation())
%% }
-type batch_write_request() :: #{binary() => any()}.


%% Example:
%% enable_directory_request() :: #{
%%   <<"DirectoryArn">> := string()
%% }
-type enable_directory_request() :: #{binary() => any()}.


%% Example:
%% batch_list_policy_attachments_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ObjectIdentifiers">> => list(string())
%% }
-type batch_list_policy_attachments_response() :: #{binary() => any()}.


%% Example:
%% invalid_facet_update_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_facet_update_exception() :: #{binary() => any()}.


%% Example:
%% batch_list_incoming_typed_links_response() :: #{
%%   <<"LinkSpecifiers">> => list(typed_link_specifier()),
%%   <<"NextToken">> => string()
%% }
-type batch_list_incoming_typed_links_response() :: #{binary() => any()}.


%% Example:
%% facet_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type facet_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_attached_indices_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TargetReference">> := object_reference()
%% }
-type list_attached_indices_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_object_response() :: #{}
-type batch_delete_object_response() :: #{}.


%% Example:
%% directory_deleted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_deleted_exception() :: #{binary() => any()}.


%% Example:
%% lookup_policy_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type lookup_policy_request() :: #{binary() => any()}.


%% Example:
%% batch_read_operation_response() :: #{
%%   <<"ExceptionResponse">> => batch_read_exception(),
%%   <<"SuccessfulResponse">> => batch_read_successful_response()
%% }
-type batch_read_operation_response() :: #{binary() => any()}.


%% Example:
%% list_typed_link_facet_names_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> := string()
%% }
-type list_typed_link_facet_names_request() :: #{binary() => any()}.


%% Example:
%% list_object_children_response() :: #{
%%   <<"Children">> => map(),
%%   <<"NextToken">> => string()
%% }
-type list_object_children_response() :: #{binary() => any()}.


%% Example:
%% batch_read_successful_response() :: #{
%%   <<"GetLinkAttributes">> => batch_get_link_attributes_response(),
%%   <<"GetObjectAttributes">> => batch_get_object_attributes_response(),
%%   <<"GetObjectInformation">> => batch_get_object_information_response(),
%%   <<"ListAttachedIndices">> => batch_list_attached_indices_response(),
%%   <<"ListIncomingTypedLinks">> => batch_list_incoming_typed_links_response(),
%%   <<"ListIndex">> => batch_list_index_response(),
%%   <<"ListObjectAttributes">> => batch_list_object_attributes_response(),
%%   <<"ListObjectChildren">> => batch_list_object_children_response(),
%%   <<"ListObjectParentPaths">> => batch_list_object_parent_paths_response(),
%%   <<"ListObjectParents">> => batch_list_object_parents_response(),
%%   <<"ListObjectPolicies">> => batch_list_object_policies_response(),
%%   <<"ListOutgoingTypedLinks">> => batch_list_outgoing_typed_links_response(),
%%   <<"ListPolicyAttachments">> => batch_list_policy_attachments_response(),
%%   <<"LookupPolicy">> => batch_lookup_policy_response()
%% }
-type batch_read_successful_response() :: #{binary() => any()}.


%% Example:
%% typed_link_schema_and_facet_name() :: #{
%%   <<"SchemaArn">> => string(),
%%   <<"TypedLinkName">> => string()
%% }
-type typed_link_schema_and_facet_name() :: #{binary() => any()}.


%% Example:
%% typed_attribute_value_range() :: #{
%%   <<"EndMode">> => list(any()),
%%   <<"EndValue">> => list(),
%%   <<"StartMode">> => list(any()),
%%   <<"StartValue">> => list()
%% }
-type typed_attribute_value_range() :: #{binary() => any()}.


%% Example:
%% list_object_attributes_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"FacetFilter">> => schema_facet(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_object_attributes_request() :: #{binary() => any()}.

%% Example:
%% batch_update_link_attributes_response() :: #{}
-type batch_update_link_attributes_response() :: #{}.


%% Example:
%% detach_policy_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference(),
%%   <<"PolicyReference">> := object_reference()
%% }
-type detach_policy_request() :: #{binary() => any()}.


%% Example:
%% publish_schema_response() :: #{
%%   <<"PublishedSchemaArn">> => string()
%% }
-type publish_schema_response() :: #{binary() => any()}.


%% Example:
%% directory() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"DirectoryArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type directory() :: #{binary() => any()}.


%% Example:
%% link_attribute_action() :: #{
%%   <<"AttributeActionType">> => list(any()),
%%   <<"AttributeUpdateValue">> => list()
%% }
-type link_attribute_action() :: #{binary() => any()}.


%% Example:
%% update_schema_response() :: #{
%%   <<"SchemaArn">> => string()
%% }
-type update_schema_response() :: #{binary() => any()}.


%% Example:
%% enable_directory_response() :: #{
%%   <<"DirectoryArn">> => string()
%% }
-type enable_directory_response() :: #{binary() => any()}.


%% Example:
%% list_object_policies_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_object_policies_request() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% batch_detach_policy_response() :: #{}
-type batch_detach_policy_response() :: #{}.


%% Example:
%% facet_attribute() :: #{
%%   <<"AttributeDefinition">> => facet_attribute_definition(),
%%   <<"AttributeReference">> => facet_attribute_reference(),
%%   <<"Name">> => string(),
%%   <<"RequiredBehavior">> => list(any())
%% }
-type facet_attribute() :: #{binary() => any()}.


%% Example:
%% list_typed_link_facet_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> := string()
%% }
-type list_typed_link_facet_attributes_request() :: #{binary() => any()}.


%% Example:
%% get_link_attributes_request() :: #{
%%   <<"AttributeNames">> := list(string()),
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"TypedLinkSpecifier">> := typed_link_specifier()
%% }
-type get_link_attributes_request() :: #{binary() => any()}.


%% Example:
%% list_development_schema_arns_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_development_schema_arns_request() :: #{binary() => any()}.


%% Example:
%% create_schema_response() :: #{
%%   <<"SchemaArn">> => string()
%% }
-type create_schema_response() :: #{binary() => any()}.


%% Example:
%% disable_directory_request() :: #{
%%   <<"DirectoryArn">> := string()
%% }
-type disable_directory_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% apply_schema_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"PublishedSchemaArn">> := string()
%% }
-type apply_schema_request() :: #{binary() => any()}.

%% Example:
%% batch_attach_policy_response() :: #{}
-type batch_attach_policy_response() :: #{}.


%% Example:
%% schema_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type schema_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% apply_schema_response() :: #{
%%   <<"AppliedSchemaArn">> => string(),
%%   <<"DirectoryArn">> => string()
%% }
-type apply_schema_response() :: #{binary() => any()}.


%% Example:
%% schema_already_published_exception() :: #{
%%   <<"Message">> => string()
%% }
-type schema_already_published_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_index_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type batch_create_index_response() :: #{binary() => any()}.


%% Example:
%% list_facet_attributes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> := string()
%% }
-type list_facet_attributes_request() :: #{binary() => any()}.

%% Example:
%% batch_add_facet_to_object_response() :: #{}
-type batch_add_facet_to_object_response() :: #{}.

%% Example:
%% batch_remove_facet_from_object_response() :: #{}
-type batch_remove_facet_from_object_response() :: #{}.


%% Example:
%% batch_get_object_information() :: #{
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_get_object_information() :: #{binary() => any()}.


%% Example:
%% invalid_arn_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_arn_exception() :: #{binary() => any()}.


%% Example:
%% batch_list_object_policies_response() :: #{
%%   <<"AttachedPolicyIds">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type batch_list_object_policies_response() :: #{binary() => any()}.


%% Example:
%% upgrade_published_schema_request() :: #{
%%   <<"DevelopmentSchemaArn">> := string(),
%%   <<"DryRun">> => boolean(),
%%   <<"MinorVersion">> := string(),
%%   <<"PublishedSchemaArn">> := string()
%% }
-type upgrade_published_schema_request() :: #{binary() => any()}.


%% Example:
%% update_object_attributes_request() :: #{
%%   <<"AttributeUpdates">> := list(object_attribute_update()),
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type update_object_attributes_request() :: #{binary() => any()}.


%% Example:
%% list_object_parent_paths_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_object_parent_paths_request() :: #{binary() => any()}.


%% Example:
%% list_typed_link_facet_attributes_response() :: #{
%%   <<"Attributes">> => list(typed_link_attribute_definition()),
%%   <<"NextToken">> => string()
%% }
-type list_typed_link_facet_attributes_response() :: #{binary() => any()}.


%% Example:
%% not_node_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_node_exception() :: #{binary() => any()}.


%% Example:
%% batch_list_object_parent_paths_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PathToObjectIdentifiersList">> => list(path_to_object_identifiers())
%% }
-type batch_list_object_parent_paths_response() :: #{binary() => any()}.


%% Example:
%% index_attachment() :: #{
%%   <<"IndexedAttributes">> => list(attribute_key_and_value()),
%%   <<"ObjectIdentifier">> => string()
%% }
-type index_attachment() :: #{binary() => any()}.


%% Example:
%% batch_list_object_parents_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ParentLinks">> => list(object_identifier_and_link_name_tuple())
%% }
-type batch_list_object_parents_response() :: #{binary() => any()}.


%% Example:
%% batch_write_response() :: #{
%%   <<"Responses">> => list(batch_write_operation_response())
%% }
-type batch_write_response() :: #{binary() => any()}.


%% Example:
%% batch_list_object_parent_paths() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_object_parent_paths() :: #{binary() => any()}.

%% Example:
%% create_facet_response() :: #{}
-type create_facet_response() :: #{}.


%% Example:
%% put_schema_from_json_response() :: #{
%%   <<"Arn">> => string()
%% }
-type put_schema_from_json_response() :: #{binary() => any()}.


%% Example:
%% list_object_parents_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ParentLinks">> => list(object_identifier_and_link_name_tuple()),
%%   <<"Parents">> => map()
%% }
-type list_object_parents_response() :: #{binary() => any()}.


%% Example:
%% get_directory_response() :: #{
%%   <<"Directory">> => directory()
%% }
-type get_directory_response() :: #{binary() => any()}.


%% Example:
%% attribute_name_and_value() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Value">> => list()
%% }
-type attribute_name_and_value() :: #{binary() => any()}.


%% Example:
%% attach_object_request() :: #{
%%   <<"ChildReference">> := object_reference(),
%%   <<"DirectoryArn">> := string(),
%%   <<"LinkName">> := string(),
%%   <<"ParentReference">> := object_reference()
%% }
-type attach_object_request() :: #{binary() => any()}.


%% Example:
%% batch_read_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type batch_read_exception() :: #{binary() => any()}.


%% Example:
%% list_object_children_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_object_children_request() :: #{binary() => any()}.


%% Example:
%% typed_link_attribute_definition() :: #{
%%   <<"DefaultValue">> => list(),
%%   <<"IsImmutable">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"RequiredBehavior">> => list(any()),
%%   <<"Rules">> => map(),
%%   <<"Type">> => list(any())
%% }
-type typed_link_attribute_definition() :: #{binary() => any()}.


%% Example:
%% list_facet_names_response() :: #{
%%   <<"FacetNames">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_facet_names_response() :: #{binary() => any()}.


%% Example:
%% facet_attribute_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Attribute">> => facet_attribute()
%% }
-type facet_attribute_update() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_applied_schema_arns_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> => string()
%% }
-type list_applied_schema_arns_request() :: #{binary() => any()}.


%% Example:
%% detach_object_response() :: #{
%%   <<"DetachedObjectIdentifier">> => string()
%% }
-type detach_object_response() :: #{binary() => any()}.

%% Example:
%% update_link_attributes_response() :: #{}
-type update_link_attributes_response() :: #{}.

%% Example:
%% add_facet_to_object_response() :: #{}
-type add_facet_to_object_response() :: #{}.


%% Example:
%% batch_lookup_policy_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PolicyToPathList">> => list(policy_to_path())
%% }
-type batch_lookup_policy_response() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% batch_detach_policy() :: #{
%%   <<"ObjectReference">> => object_reference(),
%%   <<"PolicyReference">> => object_reference()
%% }
-type batch_detach_policy() :: #{binary() => any()}.


%% Example:
%% directory_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% attach_policy_response() :: #{}
-type attach_policy_response() :: #{}.


%% Example:
%% batch_update_link_attributes() :: #{
%%   <<"AttributeUpdates">> => list(link_attribute_update()),
%%   <<"TypedLinkSpecifier">> => typed_link_specifier()
%% }
-type batch_update_link_attributes() :: #{binary() => any()}.


%% Example:
%% batch_create_object_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type batch_create_object_response() :: #{binary() => any()}.


%% Example:
%% attach_policy_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference(),
%%   <<"PolicyReference">> := object_reference()
%% }
-type attach_policy_request() :: #{binary() => any()}.


%% Example:
%% facet_attribute_reference() :: #{
%%   <<"TargetAttributeName">> => string(),
%%   <<"TargetFacetName">> => string()
%% }
-type facet_attribute_reference() :: #{binary() => any()}.


%% Example:
%% invalid_schema_doc_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_schema_doc_exception() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% delete_directory_response() :: #{
%%   <<"DirectoryArn">> => string()
%% }
-type delete_directory_response() :: #{binary() => any()}.


%% Example:
%% get_typed_link_facet_information_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type get_typed_link_facet_information_request() :: #{binary() => any()}.


%% Example:
%% attach_to_index_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"IndexReference">> := object_reference(),
%%   <<"TargetReference">> := object_reference()
%% }
-type attach_to_index_request() :: #{binary() => any()}.


%% Example:
%% batch_get_object_information_response() :: #{
%%   <<"ObjectIdentifier">> => string(),
%%   <<"SchemaFacets">> => list(schema_facet())
%% }
-type batch_get_object_information_response() :: #{binary() => any()}.


%% Example:
%% detach_from_index_response() :: #{
%%   <<"DetachedObjectIdentifier">> => string()
%% }
-type detach_from_index_response() :: #{binary() => any()}.


%% Example:
%% detach_from_index_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"IndexReference">> := object_reference(),
%%   <<"TargetReference">> := object_reference()
%% }
-type detach_from_index_request() :: #{binary() => any()}.


%% Example:
%% facet_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type facet_in_use_exception() :: #{binary() => any()}.


%% Example:
%% delete_schema_response() :: #{
%%   <<"SchemaArn">> => string()
%% }
-type delete_schema_response() :: #{binary() => any()}.


%% Example:
%% batch_detach_object() :: #{
%%   <<"BatchReferenceName">> => string(),
%%   <<"LinkName">> => string(),
%%   <<"ParentReference">> => object_reference()
%% }
-type batch_detach_object() :: #{binary() => any()}.


%% Example:
%% list_facet_names_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> := string()
%% }
-type list_facet_names_request() :: #{binary() => any()}.


%% Example:
%% batch_list_attached_indices_response() :: #{
%%   <<"IndexAttachments">> => list(index_attachment()),
%%   <<"NextToken">> => string()
%% }
-type batch_list_attached_indices_response() :: #{binary() => any()}.


%% Example:
%% delete_facet_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type delete_facet_request() :: #{binary() => any()}.


%% Example:
%% list_policy_attachments_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyReference">> := object_reference()
%% }
-type list_policy_attachments_request() :: #{binary() => any()}.


%% Example:
%% batch_create_object() :: #{
%%   <<"BatchReferenceName">> => string(),
%%   <<"LinkName">> => string(),
%%   <<"ObjectAttributeList">> => list(attribute_key_and_value()),
%%   <<"ParentReference">> => object_reference(),
%%   <<"SchemaFacet">> => list(schema_facet())
%% }
-type batch_create_object() :: #{binary() => any()}.


%% Example:
%% batch_read_operation() :: #{
%%   <<"GetLinkAttributes">> => batch_get_link_attributes(),
%%   <<"GetObjectAttributes">> => batch_get_object_attributes(),
%%   <<"GetObjectInformation">> => batch_get_object_information(),
%%   <<"ListAttachedIndices">> => batch_list_attached_indices(),
%%   <<"ListIncomingTypedLinks">> => batch_list_incoming_typed_links(),
%%   <<"ListIndex">> => batch_list_index(),
%%   <<"ListObjectAttributes">> => batch_list_object_attributes(),
%%   <<"ListObjectChildren">> => batch_list_object_children(),
%%   <<"ListObjectParentPaths">> => batch_list_object_parent_paths(),
%%   <<"ListObjectParents">> => batch_list_object_parents(),
%%   <<"ListObjectPolicies">> => batch_list_object_policies(),
%%   <<"ListOutgoingTypedLinks">> => batch_list_outgoing_typed_links(),
%%   <<"ListPolicyAttachments">> => batch_list_policy_attachments(),
%%   <<"LookupPolicy">> => batch_lookup_policy()
%% }
-type batch_read_operation() :: #{binary() => any()}.


%% Example:
%% list_incoming_typed_links_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"FilterAttributeRanges">> => list(typed_link_attribute_range()),
%%   <<"FilterTypedLink">> => typed_link_schema_and_facet_name(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_incoming_typed_links_request() :: #{binary() => any()}.


%% Example:
%% list_facet_attributes_response() :: #{
%%   <<"Attributes">> => list(facet_attribute()),
%%   <<"NextToken">> => string()
%% }
-type list_facet_attributes_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% object_attribute_update() :: #{
%%   <<"ObjectAttributeAction">> => object_attribute_action(),
%%   <<"ObjectAttributeKey">> => attribute_key()
%% }
-type object_attribute_update() :: #{binary() => any()}.


%% Example:
%% upgrade_published_schema_response() :: #{
%%   <<"UpgradedSchemaArn">> => string()
%% }
-type upgrade_published_schema_response() :: #{binary() => any()}.

%% Example:
%% update_facet_response() :: #{}
-type update_facet_response() :: #{}.


%% Example:
%% list_outgoing_typed_links_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"FilterAttributeRanges">> => list(typed_link_attribute_range()),
%%   <<"FilterTypedLink">> => typed_link_schema_and_facet_name(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_outgoing_typed_links_request() :: #{binary() => any()}.


%% Example:
%% batch_update_object_attributes_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type batch_update_object_attributes_response() :: #{binary() => any()}.


%% Example:
%% batch_list_index_response() :: #{
%%   <<"IndexAttachments">> => list(index_attachment()),
%%   <<"NextToken">> => string()
%% }
-type batch_list_index_response() :: #{binary() => any()}.


%% Example:
%% list_outgoing_typed_links_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TypedLinkSpecifiers">> => list(typed_link_specifier())
%% }
-type list_outgoing_typed_links_response() :: #{binary() => any()}.


%% Example:
%% attach_to_index_response() :: #{
%%   <<"AttachedObjectIdentifier">> => string()
%% }
-type attach_to_index_response() :: #{binary() => any()}.


%% Example:
%% indexed_attribute_missing_exception() :: #{
%%   <<"Message">> => string()
%% }
-type indexed_attribute_missing_exception() :: #{binary() => any()}.


%% Example:
%% update_link_attributes_request() :: #{
%%   <<"AttributeUpdates">> := list(link_attribute_update()),
%%   <<"DirectoryArn">> := string(),
%%   <<"TypedLinkSpecifier">> := typed_link_specifier()
%% }
-type update_link_attributes_request() :: #{binary() => any()}.


%% Example:
%% object_attribute_action() :: #{
%%   <<"ObjectAttributeActionType">> => list(any()),
%%   <<"ObjectAttributeUpdateValue">> => list()
%% }
-type object_attribute_action() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"Parameters">> => map(),
%%   <<"Type">> => list(any())
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% attach_typed_link_request() :: #{
%%   <<"Attributes">> := list(attribute_name_and_value()),
%%   <<"DirectoryArn">> := string(),
%%   <<"SourceObjectReference">> := object_reference(),
%%   <<"TargetObjectReference">> := object_reference(),
%%   <<"TypedLinkFacet">> := typed_link_schema_and_facet_name()
%% }
-type attach_typed_link_request() :: #{binary() => any()}.


%% Example:
%% list_applied_schema_arns_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaArns">> => list(string())
%% }
-type list_applied_schema_arns_response() :: #{binary() => any()}.


%% Example:
%% batch_write_operation() :: #{
%%   <<"AddFacetToObject">> => batch_add_facet_to_object(),
%%   <<"AttachObject">> => batch_attach_object(),
%%   <<"AttachPolicy">> => batch_attach_policy(),
%%   <<"AttachToIndex">> => batch_attach_to_index(),
%%   <<"AttachTypedLink">> => batch_attach_typed_link(),
%%   <<"CreateIndex">> => batch_create_index(),
%%   <<"CreateObject">> => batch_create_object(),
%%   <<"DeleteObject">> => batch_delete_object(),
%%   <<"DetachFromIndex">> => batch_detach_from_index(),
%%   <<"DetachObject">> => batch_detach_object(),
%%   <<"DetachPolicy">> => batch_detach_policy(),
%%   <<"DetachTypedLink">> => batch_detach_typed_link(),
%%   <<"RemoveFacetFromObject">> => batch_remove_facet_from_object(),
%%   <<"UpdateLinkAttributes">> => batch_update_link_attributes(),
%%   <<"UpdateObjectAttributes">> => batch_update_object_attributes()
%% }
-type batch_write_operation() :: #{binary() => any()}.


%% Example:
%% batch_attach_typed_link() :: #{
%%   <<"Attributes">> => list(attribute_name_and_value()),
%%   <<"SourceObjectReference">> => object_reference(),
%%   <<"TargetObjectReference">> => object_reference(),
%%   <<"TypedLinkFacet">> => typed_link_schema_and_facet_name()
%% }
-type batch_attach_typed_link() :: #{binary() => any()}.


%% Example:
%% unsupported_index_type_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_index_type_exception() :: #{binary() => any()}.


%% Example:
%% list_index_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"IndexReference">> := object_reference(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RangesOnIndexedValues">> => list(object_attribute_range())
%% }
-type list_index_request() :: #{binary() => any()}.


%% Example:
%% link_attribute_update() :: #{
%%   <<"AttributeAction">> => link_attribute_action(),
%%   <<"AttributeKey">> => attribute_key()
%% }
-type link_attribute_update() :: #{binary() => any()}.


%% Example:
%% link_name_already_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type link_name_already_in_use_exception() :: #{binary() => any()}.


%% Example:
%% policy_attachment() :: #{
%%   <<"ObjectIdentifier">> => string(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyType">> => string()
%% }
-type policy_attachment() :: #{binary() => any()}.


%% Example:
%% attach_typed_link_response() :: #{
%%   <<"TypedLinkSpecifier">> => typed_link_specifier()
%% }
-type attach_typed_link_response() :: #{binary() => any()}.


%% Example:
%% batch_update_object_attributes() :: #{
%%   <<"AttributeUpdates">> => list(object_attribute_update()),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_update_object_attributes() :: #{binary() => any()}.


%% Example:
%% list_object_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value()),
%%   <<"NextToken">> => string()
%% }
-type list_object_attributes_response() :: #{binary() => any()}.

%% Example:
%% update_typed_link_facet_response() :: #{}
-type update_typed_link_facet_response() :: #{}.


%% Example:
%% batch_list_object_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value()),
%%   <<"NextToken">> => string()
%% }
-type batch_list_object_attributes_response() :: #{binary() => any()}.


%% Example:
%% publish_schema_request() :: #{
%%   <<"DevelopmentSchemaArn">> := string(),
%%   <<"MinorVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> := string()
%% }
-type publish_schema_request() :: #{binary() => any()}.


%% Example:
%% get_object_information_response() :: #{
%%   <<"ObjectIdentifier">> => string(),
%%   <<"SchemaFacets">> => list(schema_facet())
%% }
-type get_object_information_response() :: #{binary() => any()}.


%% Example:
%% batch_read_response() :: #{
%%   <<"Responses">> => list(batch_read_operation_response())
%% }
-type batch_read_response() :: #{binary() => any()}.


%% Example:
%% path_to_object_identifiers() :: #{
%%   <<"ObjectIdentifiers">> => list(string()),
%%   <<"Path">> => string()
%% }
-type path_to_object_identifiers() :: #{binary() => any()}.


%% Example:
%% batch_attach_policy() :: #{
%%   <<"ObjectReference">> => object_reference(),
%%   <<"PolicyReference">> => object_reference()
%% }
-type batch_attach_policy() :: #{binary() => any()}.


%% Example:
%% list_object_parent_paths_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PathToObjectIdentifiersList">> => list(path_to_object_identifiers())
%% }
-type list_object_parent_paths_response() :: #{binary() => any()}.


%% Example:
%% batch_list_object_parents() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_object_parents() :: #{binary() => any()}.


%% Example:
%% put_schema_from_json_request() :: #{
%%   <<"Document">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type put_schema_from_json_request() :: #{binary() => any()}.


%% Example:
%% batch_attach_to_index() :: #{
%%   <<"IndexReference">> => object_reference(),
%%   <<"TargetReference">> => object_reference()
%% }
-type batch_attach_to_index() :: #{binary() => any()}.


%% Example:
%% delete_typed_link_facet_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type delete_typed_link_facet_request() :: #{binary() => any()}.


%% Example:
%% create_facet_request() :: #{
%%   <<"Attributes">> => list(facet_attribute()),
%%   <<"FacetStyle">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"ObjectType">> => list(any()),
%%   <<"SchemaArn">> := string()
%% }
-type create_facet_request() :: #{binary() => any()}.


%% Example:
%% list_directories_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"state">> => list(any())
%% }
-type list_directories_request() :: #{binary() => any()}.


%% Example:
%% cannot_list_parent_of_root_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cannot_list_parent_of_root_exception() :: #{binary() => any()}.


%% Example:
%% upgrade_applied_schema_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"DryRun">> => boolean(),
%%   <<"PublishedSchemaArn">> := string()
%% }
-type upgrade_applied_schema_request() :: #{binary() => any()}.


%% Example:
%% create_index_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"IsUnique">> := boolean(),
%%   <<"LinkName">> => string(),
%%   <<"OrderedIndexedAttributeList">> := list(attribute_key()),
%%   <<"ParentReference">> => object_reference()
%% }
-type create_index_request() :: #{binary() => any()}.


%% Example:
%% update_typed_link_facet_request() :: #{
%%   <<"AttributeUpdates">> := list(typed_link_facet_attribute_update()),
%%   <<"IdentityAttributeOrder">> := list(string()),
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type update_typed_link_facet_request() :: #{binary() => any()}.


%% Example:
%% batch_attach_typed_link_response() :: #{
%%   <<"TypedLinkSpecifier">> => typed_link_specifier()
%% }
-type batch_attach_typed_link_response() :: #{binary() => any()}.


%% Example:
%% get_object_information_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type get_object_information_request() :: #{binary() => any()}.


%% Example:
%% object_identifier_and_link_name_tuple() :: #{
%%   <<"LinkName">> => string(),
%%   <<"ObjectIdentifier">> => string()
%% }
-type object_identifier_and_link_name_tuple() :: #{binary() => any()}.


%% Example:
%% detach_object_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"LinkName">> := string(),
%%   <<"ParentReference">> := object_reference()
%% }
-type detach_object_request() :: #{binary() => any()}.


%% Example:
%% update_object_attributes_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type update_object_attributes_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_typed_link_facet_names_response() :: #{
%%   <<"FacetNames">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_typed_link_facet_names_response() :: #{binary() => any()}.


%% Example:
%% still_contains_links_exception() :: #{
%%   <<"Message">> => string()
%% }
-type still_contains_links_exception() :: #{binary() => any()}.


%% Example:
%% delete_directory_request() :: #{
%%   <<"DirectoryArn">> := string()
%% }
-type delete_directory_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% facet_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type facet_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% detach_policy_response() :: #{}
-type detach_policy_response() :: #{}.


%% Example:
%% list_development_schema_arns_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaArns">> => list(string())
%% }
-type list_development_schema_arns_response() :: #{binary() => any()}.


%% Example:
%% list_managed_schema_arns_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaArns">> => list(string())
%% }
-type list_managed_schema_arns_response() :: #{binary() => any()}.

%% Example:
%% delete_facet_response() :: #{}
-type delete_facet_response() :: #{}.


%% Example:
%% get_link_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value())
%% }
-type get_link_attributes_response() :: #{binary() => any()}.


%% Example:
%% batch_list_object_children() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_object_children() :: #{binary() => any()}.


%% Example:
%% list_attached_indices_response() :: #{
%%   <<"IndexAttachments">> => list(index_attachment()),
%%   <<"NextToken">> => string()
%% }
-type list_attached_indices_response() :: #{binary() => any()}.


%% Example:
%% attribute_key_and_value() :: #{
%%   <<"Key">> => attribute_key(),
%%   <<"Value">> => list()
%% }
-type attribute_key_and_value() :: #{binary() => any()}.


%% Example:
%% batch_detach_typed_link() :: #{
%%   <<"TypedLinkSpecifier">> => typed_link_specifier()
%% }
-type batch_detach_typed_link() :: #{binary() => any()}.


%% Example:
%% directory_not_disabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_not_disabled_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_index() :: #{
%%   <<"BatchReferenceName">> => string(),
%%   <<"IsUnique">> => boolean(),
%%   <<"LinkName">> => string(),
%%   <<"OrderedIndexedAttributeList">> => list(attribute_key()),
%%   <<"ParentReference">> => object_reference()
%% }
-type batch_create_index() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% update_facet_request() :: #{
%%   <<"AttributeUpdates">> => list(facet_attribute_update()),
%%   <<"Name">> := string(),
%%   <<"ObjectType">> => list(any()),
%%   <<"SchemaArn">> := string()
%% }
-type update_facet_request() :: #{binary() => any()}.


%% Example:
%% facet() :: #{
%%   <<"FacetStyle">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ObjectType">> => list(any())
%% }
-type facet() :: #{binary() => any()}.

%% Example:
%% batch_detach_typed_link_response() :: #{}
-type batch_detach_typed_link_response() :: #{}.


%% Example:
%% create_typed_link_facet_request() :: #{
%%   <<"Facet">> := typed_link_facet(),
%%   <<"SchemaArn">> := string()
%% }
-type create_typed_link_facet_request() :: #{binary() => any()}.


%% Example:
%% facet_validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type facet_validation_exception() :: #{binary() => any()}.


%% Example:
%% batch_list_object_policies() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_object_policies() :: #{binary() => any()}.


%% Example:
%% typed_link_facet() :: #{
%%   <<"Attributes">> => list(typed_link_attribute_definition()),
%%   <<"IdentityAttributeOrder">> => list(string()),
%%   <<"Name">> => string()
%% }
-type typed_link_facet() :: #{binary() => any()}.


%% Example:
%% invalid_rule_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_rule_exception() :: #{binary() => any()}.


%% Example:
%% batch_attach_object_response() :: #{
%%   <<"attachedObjectIdentifier">> => string()
%% }
-type batch_attach_object_response() :: #{binary() => any()}.


%% Example:
%% batch_list_object_children_response() :: #{
%%   <<"Children">> => map(),
%%   <<"NextToken">> => string()
%% }
-type batch_list_object_children_response() :: #{binary() => any()}.


%% Example:
%% batch_detach_from_index_response() :: #{
%%   <<"DetachedObjectIdentifier">> => string()
%% }
-type batch_detach_from_index_response() :: #{binary() => any()}.


%% Example:
%% list_published_schema_arns_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> => string()
%% }
-type list_published_schema_arns_request() :: #{binary() => any()}.


%% Example:
%% list_policy_attachments_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ObjectIdentifiers">> => list(string())
%% }
-type list_policy_attachments_response() :: #{binary() => any()}.


%% Example:
%% batch_get_object_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value())
%% }
-type batch_get_object_attributes_response() :: #{binary() => any()}.


%% Example:
%% object_not_detached_exception() :: #{
%%   <<"Message">> => string()
%% }
-type object_not_detached_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% batch_list_outgoing_typed_links_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TypedLinkSpecifiers">> => list(typed_link_specifier())
%% }
-type batch_list_outgoing_typed_links_response() :: #{binary() => any()}.


%% Example:
%% attach_object_response() :: #{
%%   <<"AttachedObjectIdentifier">> => string()
%% }
-type attach_object_response() :: #{binary() => any()}.


%% Example:
%% not_policy_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_policy_exception() :: #{binary() => any()}.


%% Example:
%% batch_detach_from_index() :: #{
%%   <<"IndexReference">> => object_reference(),
%%   <<"TargetReference">> => object_reference()
%% }
-type batch_detach_from_index() :: #{binary() => any()}.

%% Example:
%% remove_facet_from_object_response() :: #{}
-type remove_facet_from_object_response() :: #{}.


%% Example:
%% directory_not_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type directory_not_enabled_exception() :: #{binary() => any()}.


%% Example:
%% list_index_response() :: #{
%%   <<"IndexAttachments">> => list(index_attachment()),
%%   <<"NextToken">> => string()
%% }
-type list_index_response() :: #{binary() => any()}.


%% Example:
%% list_object_parents_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"IncludeAllLinksToEachParent">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> := object_reference()
%% }
-type list_object_parents_request() :: #{binary() => any()}.


%% Example:
%% detach_typed_link_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"TypedLinkSpecifier">> := typed_link_specifier()
%% }
-type detach_typed_link_request() :: #{binary() => any()}.


%% Example:
%% list_directories_response() :: #{
%%   <<"Directories">> => list(directory()),
%%   <<"NextToken">> => string()
%% }
-type list_directories_response() :: #{binary() => any()}.


%% Example:
%% create_index_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type create_index_response() :: #{binary() => any()}.


%% Example:
%% upgrade_applied_schema_response() :: #{
%%   <<"DirectoryArn">> => string(),
%%   <<"UpgradedSchemaArn">> => string()
%% }
-type upgrade_applied_schema_response() :: #{binary() => any()}.


%% Example:
%% create_object_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"LinkName">> => string(),
%%   <<"ObjectAttributeList">> => list(attribute_key_and_value()),
%%   <<"ParentReference">> => object_reference(),
%%   <<"SchemaFacets">> := list(schema_facet())
%% }
-type create_object_request() :: #{binary() => any()}.


%% Example:
%% create_object_response() :: #{
%%   <<"ObjectIdentifier">> => string()
%% }
-type create_object_response() :: #{binary() => any()}.


%% Example:
%% add_facet_to_object_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectAttributeList">> => list(attribute_key_and_value()),
%%   <<"ObjectReference">> := object_reference(),
%%   <<"SchemaFacet">> := schema_facet()
%% }
-type add_facet_to_object_request() :: #{binary() => any()}.


%% Example:
%% batch_list_outgoing_typed_links() :: #{
%%   <<"FilterAttributeRanges">> => list(typed_link_attribute_range()),
%%   <<"FilterTypedLink">> => typed_link_schema_and_facet_name(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_list_outgoing_typed_links() :: #{binary() => any()}.


%% Example:
%% batch_delete_object() :: #{
%%   <<"ObjectReference">> => object_reference()
%% }
-type batch_delete_object() :: #{binary() => any()}.


%% Example:
%% attribute_key() :: #{
%%   <<"FacetName">> => string(),
%%   <<"Name">> => string(),
%%   <<"SchemaArn">> => string()
%% }
-type attribute_key() :: #{binary() => any()}.


%% Example:
%% typed_link_facet_attribute_update() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Attribute">> => typed_link_attribute_definition()
%% }
-type typed_link_facet_attribute_update() :: #{binary() => any()}.


%% Example:
%% lookup_policy_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PolicyToPathList">> => list(policy_to_path())
%% }
-type lookup_policy_response() :: #{binary() => any()}.


%% Example:
%% invalid_attachment_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_attachment_exception() :: #{binary() => any()}.


%% Example:
%% facet_attribute_definition() :: #{
%%   <<"DefaultValue">> => list(),
%%   <<"IsImmutable">> => boolean(),
%%   <<"Rules">> => map(),
%%   <<"Type">> => list(any())
%% }
-type facet_attribute_definition() :: #{binary() => any()}.


%% Example:
%% remove_facet_from_object_request() :: #{
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference(),
%%   <<"SchemaFacet">> := schema_facet()
%% }
-type remove_facet_from_object_request() :: #{binary() => any()}.


%% Example:
%% batch_read_request() :: #{
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"Operations">> := list(batch_read_operation())
%% }
-type batch_read_request() :: #{binary() => any()}.

%% Example:
%% delete_typed_link_facet_response() :: #{}
-type delete_typed_link_facet_response() :: #{}.


%% Example:
%% object_already_detached_exception() :: #{
%%   <<"Message">> => string()
%% }
-type object_already_detached_exception() :: #{binary() => any()}.


%% Example:
%% get_schema_as_json_request() :: #{
%%   <<"SchemaArn">> := string()
%% }
-type get_schema_as_json_request() :: #{binary() => any()}.


%% Example:
%% typed_link_attribute_range() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Range">> => typed_attribute_value_range()
%% }
-type typed_link_attribute_range() :: #{binary() => any()}.


%% Example:
%% get_directory_request() :: #{
%%   <<"DirectoryArn">> := string()
%% }
-type get_directory_request() :: #{binary() => any()}.


%% Example:
%% get_facet_response() :: #{
%%   <<"Facet">> => facet()
%% }
-type get_facet_response() :: #{binary() => any()}.


%% Example:
%% list_managed_schema_arns_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaArn">> => string()
%% }
-type list_managed_schema_arns_request() :: #{binary() => any()}.


%% Example:
%% batch_write_exception() :: #{
%%   <<"Index">> => integer(),
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type batch_write_exception() :: #{binary() => any()}.


%% Example:
%% get_object_attributes_request() :: #{
%%   <<"AttributeNames">> := list(string()),
%%   <<"ConsistencyLevel">> => list(any()),
%%   <<"DirectoryArn">> := string(),
%%   <<"ObjectReference">> := object_reference(),
%%   <<"SchemaFacet">> := schema_facet()
%% }
-type get_object_attributes_request() :: #{binary() => any()}.


%% Example:
%% batch_get_link_attributes_response() :: #{
%%   <<"Attributes">> => list(attribute_key_and_value())
%% }
-type batch_get_link_attributes_response() :: #{binary() => any()}.


%% Example:
%% get_typed_link_facet_information_response() :: #{
%%   <<"IdentityAttributeOrder">> => list(string())
%% }
-type get_typed_link_facet_information_response() :: #{binary() => any()}.


%% Example:
%% update_schema_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SchemaArn">> := string()
%% }
-type update_schema_request() :: #{binary() => any()}.


%% Example:
%% invalid_tagging_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_tagging_request_exception() :: #{binary() => any()}.


%% Example:
%% batch_add_facet_to_object() :: #{
%%   <<"ObjectAttributeList">> => list(attribute_key_and_value()),
%%   <<"ObjectReference">> => object_reference(),
%%   <<"SchemaFacet">> => schema_facet()
%% }
-type batch_add_facet_to_object() :: #{binary() => any()}.

-type add_facet_to_object_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type apply_schema_errors() ::
    invalid_attachment_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    schema_already_exists_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type attach_object_errors() ::
    invalid_attachment_exception() | 
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    link_name_already_in_use_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type attach_policy_errors() ::
    directory_not_enabled_exception() | 
    not_policy_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type attach_to_index_errors() ::
    invalid_attachment_exception() | 
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    link_name_already_in_use_exception() | 
    indexed_attribute_missing_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception() | 
    not_index_exception().

-type attach_typed_link_errors() ::
    invalid_attachment_exception() | 
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type batch_read_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type batch_write_errors() ::
    batch_write_exception() | 
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_directory_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    directory_already_exists_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_facet_errors() ::
    limit_exceeded_exception() | 
    invalid_rule_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    facet_already_exists_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_index_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    link_name_already_in_use_exception() | 
    unsupported_index_type_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_object_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    link_name_already_in_use_exception() | 
    unsupported_index_type_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_schema_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_arn_exception() | 
    schema_already_exists_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type create_typed_link_facet_errors() ::
    limit_exceeded_exception() | 
    invalid_rule_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    facet_already_exists_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type delete_directory_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    directory_not_disabled_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    directory_deleted_exception() | 
    retryable_conflict_exception().

-type delete_facet_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    facet_in_use_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type delete_object_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    object_not_detached_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type delete_schema_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    still_contains_links_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type delete_typed_link_facet_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type detach_from_index_errors() ::
    object_already_detached_exception() | 
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception() | 
    not_index_exception().

-type detach_object_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    not_node_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type detach_policy_errors() ::
    directory_not_enabled_exception() | 
    not_policy_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type detach_typed_link_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type disable_directory_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    directory_deleted_exception() | 
    retryable_conflict_exception().

-type enable_directory_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    directory_deleted_exception() | 
    retryable_conflict_exception().

-type get_applied_schema_version_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_directory_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_facet_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type get_link_attributes_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_object_attributes_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_object_information_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_schema_as_json_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type get_typed_link_facet_information_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type list_applied_schema_arns_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_attached_indices_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_development_schema_arns_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_directories_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_facet_attributes_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type list_facet_names_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_incoming_typed_links_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_index_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception() | 
    not_index_exception().

-type list_managed_schema_arns_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception().

-type list_object_attributes_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_object_children_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    not_node_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_object_parent_paths_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_object_parents_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    cannot_list_parent_of_root_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_object_policies_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_outgoing_typed_links_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_policy_attachments_errors() ::
    directory_not_enabled_exception() | 
    not_policy_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_published_schema_arns_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_tags_for_resource_errors() ::
    invalid_tagging_request_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type list_typed_link_facet_attributes_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    retryable_conflict_exception().

-type list_typed_link_facet_names_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type lookup_policy_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type publish_schema_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    schema_already_published_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type put_schema_from_json_errors() ::
    limit_exceeded_exception() | 
    invalid_rule_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    invalid_schema_doc_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type remove_facet_from_object_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type tag_resource_errors() ::
    invalid_tagging_request_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type untag_resource_errors() ::
    invalid_tagging_request_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type update_facet_errors() ::
    limit_exceeded_exception() | 
    invalid_rule_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    invalid_facet_update_exception() | 
    retryable_conflict_exception().

-type update_link_attributes_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type update_object_attributes_errors() ::
    directory_not_enabled_exception() | 
    limit_exceeded_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    link_name_already_in_use_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type update_schema_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception().

-type update_typed_link_facet_errors() ::
    limit_exceeded_exception() | 
    invalid_rule_exception() | 
    facet_validation_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    facet_not_found_exception() | 
    invalid_facet_update_exception() | 
    retryable_conflict_exception().

-type upgrade_applied_schema_errors() ::
    invalid_attachment_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    schema_already_exists_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception() | 
    incompatible_schema_exception().

-type upgrade_published_schema_errors() ::
    invalid_attachment_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    invalid_arn_exception() | 
    internal_service_exception() | 
    retryable_conflict_exception() | 
    incompatible_schema_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a new `Facet' to an object.
%%
%% An object can have more than one facet applied on it.
-spec add_facet_to_object(aws_client:aws_client(), add_facet_to_object_request()) ->
    {ok, add_facet_to_object_response(), tuple()} |
    {error, any()} |
    {error, add_facet_to_object_errors(), tuple()}.
add_facet_to_object(Client, Input) ->
    add_facet_to_object(Client, Input, []).

-spec add_facet_to_object(aws_client:aws_client(), add_facet_to_object_request(), proplists:proplist()) ->
    {ok, add_facet_to_object_response(), tuple()} |
    {error, any()} |
    {error, add_facet_to_object_errors(), tuple()}.
add_facet_to_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/facets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Copies the input published schema, at the specified version, into the
%% `Directory' with the same
%% name and version as that of the published schema.
-spec apply_schema(aws_client:aws_client(), apply_schema_request()) ->
    {ok, apply_schema_response(), tuple()} |
    {error, any()} |
    {error, apply_schema_errors(), tuple()}.
apply_schema(Client, Input) ->
    apply_schema(Client, Input, []).

-spec apply_schema(aws_client:aws_client(), apply_schema_request(), proplists:proplist()) ->
    {ok, apply_schema_response(), tuple()} |
    {error, any()} |
    {error, apply_schema_errors(), tuple()}.
apply_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/apply"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches an existing object to another object.
%%
%% An object can be accessed in two
%% ways:
%%
%% Using the path
%%
%% Using `ObjectIdentifier'
-spec attach_object(aws_client:aws_client(), attach_object_request()) ->
    {ok, attach_object_response(), tuple()} |
    {error, any()} |
    {error, attach_object_errors(), tuple()}.
attach_object(Client, Input) ->
    attach_object(Client, Input, []).

-spec attach_object(aws_client:aws_client(), attach_object_request(), proplists:proplist()) ->
    {ok, attach_object_response(), tuple()} |
    {error, any()} |
    {error, attach_object_errors(), tuple()}.
attach_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/attach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches a policy object to a regular object.
%%
%% An object can have a limited number of attached
%% policies.
-spec attach_policy(aws_client:aws_client(), attach_policy_request()) ->
    {ok, attach_policy_response(), tuple()} |
    {error, any()} |
    {error, attach_policy_errors(), tuple()}.
attach_policy(Client, Input) ->
    attach_policy(Client, Input, []).

-spec attach_policy(aws_client:aws_client(), attach_policy_request(), proplists:proplist()) ->
    {ok, attach_policy_response(), tuple()} |
    {error, any()} |
    {error, attach_policy_errors(), tuple()}.
attach_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/policy/attach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches the specified object to the specified index.
-spec attach_to_index(aws_client:aws_client(), attach_to_index_request()) ->
    {ok, attach_to_index_response(), tuple()} |
    {error, any()} |
    {error, attach_to_index_errors(), tuple()}.
attach_to_index(Client, Input) ->
    attach_to_index(Client, Input, []).

-spec attach_to_index(aws_client:aws_client(), attach_to_index_request(), proplists:proplist()) ->
    {ok, attach_to_index_response(), tuple()} |
    {error, any()} |
    {error, attach_to_index_errors(), tuple()}.
attach_to_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index/attach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches a typed link to a specified source and target object.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec attach_typed_link(aws_client:aws_client(), attach_typed_link_request()) ->
    {ok, attach_typed_link_response(), tuple()} |
    {error, any()} |
    {error, attach_typed_link_errors(), tuple()}.
attach_typed_link(Client, Input) ->
    attach_typed_link(Client, Input, []).

-spec attach_typed_link(aws_client:aws_client(), attach_typed_link_request(), proplists:proplist()) ->
    {ok, attach_typed_link_response(), tuple()} |
    {error, any()} |
    {error, attach_typed_link_errors(), tuple()}.
attach_typed_link(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Performs all the read operations in a batch.
-spec batch_read(aws_client:aws_client(), batch_read_request()) ->
    {ok, batch_read_response(), tuple()} |
    {error, any()} |
    {error, batch_read_errors(), tuple()}.
batch_read(Client, Input) ->
    batch_read(Client, Input, []).

-spec batch_read(aws_client:aws_client(), batch_read_request(), proplists:proplist()) ->
    {ok, batch_read_response(), tuple()} |
    {error, any()} |
    {error, batch_read_errors(), tuple()}.
batch_read(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/batchread"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Performs all the write operations in a batch.
%%
%% Either all the operations succeed or
%% none.
-spec batch_write(aws_client:aws_client(), batch_write_request()) ->
    {ok, batch_write_response(), tuple()} |
    {error, any()} |
    {error, batch_write_errors(), tuple()}.
batch_write(Client, Input) ->
    batch_write(Client, Input, []).

-spec batch_write(aws_client:aws_client(), batch_write_request(), proplists:proplist()) ->
    {ok, batch_write_response(), tuple()} |
    {error, any()} |
    {error, batch_write_errors(), tuple()}.
batch_write(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/batchwrite"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `Directory' by copying the published schema into the
%% directory.
%%
%% A directory cannot be created without a schema.
%%
%% You can also quickly create a directory using a managed schema, called the
%% `QuickStartSchema'. For more information, see Managed Schema:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html
%% in the Amazon Cloud Directory Developer Guide.
-spec create_directory(aws_client:aws_client(), create_directory_request()) ->
    {ok, create_directory_response(), tuple()} |
    {error, any()} |
    {error, create_directory_errors(), tuple()}.
create_directory(Client, Input) ->
    create_directory(Client, Input, []).

-spec create_directory(aws_client:aws_client(), create_directory_request(), proplists:proplist()) ->
    {ok, create_directory_response(), tuple()} |
    {error, any()} |
    {error, create_directory_errors(), tuple()}.
create_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new `Facet' in a schema.
%%
%% Facet creation is allowed only
%% in development or applied schemas.
-spec create_facet(aws_client:aws_client(), create_facet_request()) ->
    {ok, create_facet_response(), tuple()} |
    {error, any()} |
    {error, create_facet_errors(), tuple()}.
create_facet(Client, Input) ->
    create_facet(Client, Input, []).

-spec create_facet(aws_client:aws_client(), create_facet_request(), proplists:proplist()) ->
    {ok, create_facet_response(), tuple()} |
    {error, any()} |
    {error, create_facet_errors(), tuple()}.
create_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet/create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an index object.
%%
%% See Indexing and search:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html
%% for more information.
-spec create_index(aws_client:aws_client(), create_index_request()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input) ->
    create_index(Client, Input, []).

-spec create_index(aws_client:aws_client(), create_index_request(), proplists:proplist()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an object in a `Directory'.
%%
%% Additionally attaches the object to
%% a parent, if a parent reference and `LinkName' is specified. An object
%% is simply a
%% collection of `Facet' attributes. You can also use this API call to
%% create a
%% policy object, if the facet from which you create the object is a policy
%% facet.
-spec create_object(aws_client:aws_client(), create_object_request()) ->
    {ok, create_object_response(), tuple()} |
    {error, any()} |
    {error, create_object_errors(), tuple()}.
create_object(Client, Input) ->
    create_object(Client, Input, []).

-spec create_object(aws_client:aws_client(), create_object_request(), proplists:proplist()) ->
    {ok, create_object_response(), tuple()} |
    {error, any()} |
    {error, create_object_errors(), tuple()}.
create_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new schema in a development state.
%%
%% A schema can exist in three
%% phases:
%%
%% Development: This is a mutable phase of the schema. All new
%% schemas are in the development phase. Once the schema is finalized, it can
%% be
%% published.
%%
%% Published: Published schemas are immutable and have a version
%% associated with them.
%%
%% Applied: Applied schemas are mutable in a way that allows you
%% to add new schema facets. You can also add new, nonrequired attributes to
%% existing schema
%% facets. You can apply only published schemas to directories.
-spec create_schema(aws_client:aws_client(), create_schema_request()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input) ->
    create_schema(Client, Input, []).

-spec create_schema(aws_client:aws_client(), create_schema_request(), proplists:proplist()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/create"],
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

%% @doc Creates a `TypedLinkFacet'.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec create_typed_link_facet(aws_client:aws_client(), create_typed_link_facet_request()) ->
    {ok, create_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, create_typed_link_facet_errors(), tuple()}.
create_typed_link_facet(Client, Input) ->
    create_typed_link_facet(Client, Input, []).

-spec create_typed_link_facet(aws_client:aws_client(), create_typed_link_facet_request(), proplists:proplist()) ->
    {ok, create_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, create_typed_link_facet_errors(), tuple()}.
create_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/create"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a directory.
%%
%% Only disabled directories can be deleted. A deleted directory cannot be
%% undone. Exercise extreme
%% caution
%% when deleting directories.
-spec delete_directory(aws_client:aws_client(), delete_directory_request()) ->
    {ok, delete_directory_response(), tuple()} |
    {error, any()} |
    {error, delete_directory_errors(), tuple()}.
delete_directory(Client, Input) ->
    delete_directory(Client, Input, []).

-spec delete_directory(aws_client:aws_client(), delete_directory_request(), proplists:proplist()) ->
    {ok, delete_directory_response(), tuple()} |
    {error, any()} |
    {error, delete_directory_errors(), tuple()}.
delete_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a given `Facet'.
%%
%% All attributes and `Rule's
%% that are associated with the facet will be deleted. Only development
%% schema facets are allowed
%% deletion.
-spec delete_facet(aws_client:aws_client(), delete_facet_request()) ->
    {ok, delete_facet_response(), tuple()} |
    {error, any()} |
    {error, delete_facet_errors(), tuple()}.
delete_facet(Client, Input) ->
    delete_facet(Client, Input, []).

-spec delete_facet(aws_client:aws_client(), delete_facet_request(), proplists:proplist()) ->
    {ok, delete_facet_response(), tuple()} |
    {error, any()} |
    {error, delete_facet_errors(), tuple()}.
delete_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet/delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an object and its associated attributes.
%%
%% Only objects with no children and no
%% parents can be deleted. The maximum number of attributes that can be
%% deleted during an object deletion is 30. For more information, see Amazon
%% Cloud Directory Limits:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html.
-spec delete_object(aws_client:aws_client(), delete_object_request()) ->
    {ok, delete_object_response(), tuple()} |
    {error, any()} |
    {error, delete_object_errors(), tuple()}.
delete_object(Client, Input) ->
    delete_object(Client, Input, []).

-spec delete_object(aws_client:aws_client(), delete_object_request(), proplists:proplist()) ->
    {ok, delete_object_response(), tuple()} |
    {error, any()} |
    {error, delete_object_errors(), tuple()}.
delete_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a given schema.
%%
%% Schemas in a development and published state can only be deleted.
-spec delete_schema(aws_client:aws_client(), delete_schema_request()) ->
    {ok, delete_schema_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, Input) ->
    delete_schema(Client, Input, []).

-spec delete_schema(aws_client:aws_client(), delete_schema_request(), proplists:proplist()) ->
    {ok, delete_schema_response(), tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a `TypedLinkFacet'.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec delete_typed_link_facet(aws_client:aws_client(), delete_typed_link_facet_request()) ->
    {ok, delete_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, delete_typed_link_facet_errors(), tuple()}.
delete_typed_link_facet(Client, Input) ->
    delete_typed_link_facet(Client, Input, []).

-spec delete_typed_link_facet(aws_client:aws_client(), delete_typed_link_facet_request(), proplists:proplist()) ->
    {ok, delete_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, delete_typed_link_facet_errors(), tuple()}.
delete_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches the specified object from the specified index.
-spec detach_from_index(aws_client:aws_client(), detach_from_index_request()) ->
    {ok, detach_from_index_response(), tuple()} |
    {error, any()} |
    {error, detach_from_index_errors(), tuple()}.
detach_from_index(Client, Input) ->
    detach_from_index(Client, Input, []).

-spec detach_from_index(aws_client:aws_client(), detach_from_index_request(), proplists:proplist()) ->
    {ok, detach_from_index_response(), tuple()} |
    {error, any()} |
    {error, detach_from_index_errors(), tuple()}.
detach_from_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index/detach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches a given object from the parent object.
%%
%% The object that is to be detached from the
%% parent is specified by the link name.
-spec detach_object(aws_client:aws_client(), detach_object_request()) ->
    {ok, detach_object_response(), tuple()} |
    {error, any()} |
    {error, detach_object_errors(), tuple()}.
detach_object(Client, Input) ->
    detach_object(Client, Input, []).

-spec detach_object(aws_client:aws_client(), detach_object_request(), proplists:proplist()) ->
    {ok, detach_object_response(), tuple()} |
    {error, any()} |
    {error, detach_object_errors(), tuple()}.
detach_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/detach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches a policy from an object.
-spec detach_policy(aws_client:aws_client(), detach_policy_request()) ->
    {ok, detach_policy_response(), tuple()} |
    {error, any()} |
    {error, detach_policy_errors(), tuple()}.
detach_policy(Client, Input) ->
    detach_policy(Client, Input, []).

-spec detach_policy(aws_client:aws_client(), detach_policy_request(), proplists:proplist()) ->
    {ok, detach_policy_response(), tuple()} |
    {error, any()} |
    {error, detach_policy_errors(), tuple()}.
detach_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/policy/detach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Detaches a typed link from a specified source and target object.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec detach_typed_link(aws_client:aws_client(), detach_typed_link_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_typed_link_errors(), tuple()}.
detach_typed_link(Client, Input) ->
    detach_typed_link(Client, Input, []).

-spec detach_typed_link(aws_client:aws_client(), detach_typed_link_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, detach_typed_link_errors(), tuple()}.
detach_typed_link(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/detach"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the specified directory.
%%
%% Disabled directories cannot be read or written to.
%% Only enabled directories can be disabled. Disabled directories may be
%% reenabled.
-spec disable_directory(aws_client:aws_client(), disable_directory_request()) ->
    {ok, disable_directory_response(), tuple()} |
    {error, any()} |
    {error, disable_directory_errors(), tuple()}.
disable_directory(Client, Input) ->
    disable_directory(Client, Input, []).

-spec disable_directory(aws_client:aws_client(), disable_directory_request(), proplists:proplist()) ->
    {ok, disable_directory_response(), tuple()} |
    {error, any()} |
    {error, disable_directory_errors(), tuple()}.
disable_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/disable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the specified directory.
%%
%% Only disabled directories can be enabled. Once
%% enabled, the directory can then be read and written to.
-spec enable_directory(aws_client:aws_client(), enable_directory_request()) ->
    {ok, enable_directory_response(), tuple()} |
    {error, any()} |
    {error, enable_directory_errors(), tuple()}.
enable_directory(Client, Input) ->
    enable_directory(Client, Input, []).

-spec enable_directory(aws_client:aws_client(), enable_directory_request(), proplists:proplist()) ->
    {ok, enable_directory_response(), tuple()} |
    {error, any()} |
    {error, enable_directory_errors(), tuple()}.
enable_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/enable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns current applied schema version ARN, including the minor
%% version in use.
-spec get_applied_schema_version(aws_client:aws_client(), get_applied_schema_version_request()) ->
    {ok, get_applied_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_applied_schema_version_errors(), tuple()}.
get_applied_schema_version(Client, Input) ->
    get_applied_schema_version(Client, Input, []).

-spec get_applied_schema_version(aws_client:aws_client(), get_applied_schema_version_request(), proplists:proplist()) ->
    {ok, get_applied_schema_version_response(), tuple()} |
    {error, any()} |
    {error, get_applied_schema_version_errors(), tuple()}.
get_applied_schema_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/getappliedschema"],
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

%% @doc Retrieves metadata about a directory.
-spec get_directory(aws_client:aws_client(), get_directory_request()) ->
    {ok, get_directory_response(), tuple()} |
    {error, any()} |
    {error, get_directory_errors(), tuple()}.
get_directory(Client, Input) ->
    get_directory(Client, Input, []).

-spec get_directory(aws_client:aws_client(), get_directory_request(), proplists:proplist()) ->
    {ok, get_directory_response(), tuple()} |
    {error, any()} |
    {error, get_directory_errors(), tuple()}.
get_directory(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/directory/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details of the `Facet', such as facet name, attributes,
%% `Rule's, or `ObjectType'.
%%
%% You can call this on all kinds of schema
%% facets -- published, development, or applied.
-spec get_facet(aws_client:aws_client(), get_facet_request()) ->
    {ok, get_facet_response(), tuple()} |
    {error, any()} |
    {error, get_facet_errors(), tuple()}.
get_facet(Client, Input) ->
    get_facet(Client, Input, []).

-spec get_facet(aws_client:aws_client(), get_facet_request(), proplists:proplist()) ->
    {ok, get_facet_response(), tuple()} |
    {error, any()} |
    {error, get_facet_errors(), tuple()}.
get_facet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves attributes that are associated with a typed link.
-spec get_link_attributes(aws_client:aws_client(), get_link_attributes_request()) ->
    {ok, get_link_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_link_attributes_errors(), tuple()}.
get_link_attributes(Client, Input) ->
    get_link_attributes(Client, Input, []).

-spec get_link_attributes(aws_client:aws_client(), get_link_attributes_request(), proplists:proplist()) ->
    {ok, get_link_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_link_attributes_errors(), tuple()}.
get_link_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attributes/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves attributes within a facet that are associated with an
%% object.
-spec get_object_attributes(aws_client:aws_client(), get_object_attributes_request()) ->
    {ok, get_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_object_attributes_errors(), tuple()}.
get_object_attributes(Client, Input) ->
    get_object_attributes(Client, Input, []).

-spec get_object_attributes(aws_client:aws_client(), get_object_attributes_request(), proplists:proplist()) ->
    {ok, get_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_object_attributes_errors(), tuple()}.
get_object_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/attributes/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves metadata about an object.
-spec get_object_information(aws_client:aws_client(), get_object_information_request()) ->
    {ok, get_object_information_response(), tuple()} |
    {error, any()} |
    {error, get_object_information_errors(), tuple()}.
get_object_information(Client, Input) ->
    get_object_information(Client, Input, []).

-spec get_object_information(aws_client:aws_client(), get_object_information_request(), proplists:proplist()) ->
    {ok, get_object_information_response(), tuple()} |
    {error, any()} |
    {error, get_object_information_errors(), tuple()}.
get_object_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/information"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a JSON representation of the schema.
%%
%% See JSON Schema Format:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json
%% for more information.
-spec get_schema_as_json(aws_client:aws_client(), get_schema_as_json_request()) ->
    {ok, get_schema_as_json_response(), tuple()} |
    {error, any()} |
    {error, get_schema_as_json_errors(), tuple()}.
get_schema_as_json(Client, Input) ->
    get_schema_as_json(Client, Input, []).

-spec get_schema_as_json(aws_client:aws_client(), get_schema_as_json_request(), proplists:proplist()) ->
    {ok, get_schema_as_json_response(), tuple()} |
    {error, any()} |
    {error, get_schema_as_json_errors(), tuple()}.
get_schema_as_json(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/json"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the identity attribute order for a specific
%% `TypedLinkFacet'.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec get_typed_link_facet_information(aws_client:aws_client(), get_typed_link_facet_information_request()) ->
    {ok, get_typed_link_facet_information_response(), tuple()} |
    {error, any()} |
    {error, get_typed_link_facet_information_errors(), tuple()}.
get_typed_link_facet_information(Client, Input) ->
    get_typed_link_facet_information(Client, Input, []).

-spec get_typed_link_facet_information(aws_client:aws_client(), get_typed_link_facet_information_request(), proplists:proplist()) ->
    {ok, get_typed_link_facet_information_response(), tuple()} |
    {error, any()} |
    {error, get_typed_link_facet_information_errors(), tuple()}.
get_typed_link_facet_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists schema major versions applied to a directory.
%%
%% If `SchemaArn' is provided, lists the minor version.
-spec list_applied_schema_arns(aws_client:aws_client(), list_applied_schema_arns_request()) ->
    {ok, list_applied_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_applied_schema_arns_errors(), tuple()}.
list_applied_schema_arns(Client, Input) ->
    list_applied_schema_arns(Client, Input, []).

-spec list_applied_schema_arns(aws_client:aws_client(), list_applied_schema_arns_request(), proplists:proplist()) ->
    {ok, list_applied_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_applied_schema_arns_errors(), tuple()}.
list_applied_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/applied"],
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

%% @doc Lists indices attached to the specified object.
-spec list_attached_indices(aws_client:aws_client(), list_attached_indices_request()) ->
    {ok, list_attached_indices_response(), tuple()} |
    {error, any()} |
    {error, list_attached_indices_errors(), tuple()}.
list_attached_indices(Client, Input) ->
    list_attached_indices(Client, Input, []).

-spec list_attached_indices(aws_client:aws_client(), list_attached_indices_request(), proplists:proplist()) ->
    {ok, list_attached_indices_response(), tuple()} |
    {error, any()} |
    {error, list_attached_indices_errors(), tuple()}.
list_attached_indices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/indices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves each Amazon Resource Name (ARN) of schemas in the
%% development
%% state.
-spec list_development_schema_arns(aws_client:aws_client(), list_development_schema_arns_request()) ->
    {ok, list_development_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_development_schema_arns_errors(), tuple()}.
list_development_schema_arns(Client, Input) ->
    list_development_schema_arns(Client, Input, []).

-spec list_development_schema_arns(aws_client:aws_client(), list_development_schema_arns_request(), proplists:proplist()) ->
    {ok, list_development_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_development_schema_arns_errors(), tuple()}.
list_development_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/development"],
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

%% @doc Lists directories created within an account.
-spec list_directories(aws_client:aws_client(), list_directories_request()) ->
    {ok, list_directories_response(), tuple()} |
    {error, any()} |
    {error, list_directories_errors(), tuple()}.
list_directories(Client, Input) ->
    list_directories(Client, Input, []).

-spec list_directories(aws_client:aws_client(), list_directories_request(), proplists:proplist()) ->
    {ok, list_directories_response(), tuple()} |
    {error, any()} |
    {error, list_directories_errors(), tuple()}.
list_directories(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/directory/list"],
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

%% @doc Retrieves attributes attached to the facet.
-spec list_facet_attributes(aws_client:aws_client(), list_facet_attributes_request()) ->
    {ok, list_facet_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_facet_attributes_errors(), tuple()}.
list_facet_attributes(Client, Input) ->
    list_facet_attributes(Client, Input, []).

-spec list_facet_attributes(aws_client:aws_client(), list_facet_attributes_request(), proplists:proplist()) ->
    {ok, list_facet_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_facet_attributes_errors(), tuple()}.
list_facet_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet/attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the names of facets that exist in a schema.
-spec list_facet_names(aws_client:aws_client(), list_facet_names_request()) ->
    {ok, list_facet_names_response(), tuple()} |
    {error, any()} |
    {error, list_facet_names_errors(), tuple()}.
list_facet_names(Client, Input) ->
    list_facet_names(Client, Input, []).

-spec list_facet_names(aws_client:aws_client(), list_facet_names_request(), proplists:proplist()) ->
    {ok, list_facet_names_response(), tuple()} |
    {error, any()} |
    {error, list_facet_names_errors(), tuple()}.
list_facet_names(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of all the incoming `TypedLinkSpecifier'
%% information for an object.
%%
%% It also supports filtering by typed link facet and identity
%% attributes. For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec list_incoming_typed_links(aws_client:aws_client(), list_incoming_typed_links_request()) ->
    {ok, list_incoming_typed_links_response(), tuple()} |
    {error, any()} |
    {error, list_incoming_typed_links_errors(), tuple()}.
list_incoming_typed_links(Client, Input) ->
    list_incoming_typed_links(Client, Input, []).

-spec list_incoming_typed_links(aws_client:aws_client(), list_incoming_typed_links_request(), proplists:proplist()) ->
    {ok, list_incoming_typed_links_response(), tuple()} |
    {error, any()} |
    {error, list_incoming_typed_links_errors(), tuple()}.
list_incoming_typed_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/incoming"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists objects attached to the specified index.
-spec list_index(aws_client:aws_client(), list_index_request()) ->
    {ok, list_index_response(), tuple()} |
    {error, any()} |
    {error, list_index_errors(), tuple()}.
list_index(Client, Input) ->
    list_index(Client, Input, []).

-spec list_index(aws_client:aws_client(), list_index_request(), proplists:proplist()) ->
    {ok, list_index_response(), tuple()} |
    {error, any()} |
    {error, list_index_errors(), tuple()}.
list_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/index/targets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the major version families of each managed schema.
%%
%% If a major version ARN is provided as SchemaArn, the minor version
%% revisions in that family are listed instead.
-spec list_managed_schema_arns(aws_client:aws_client(), list_managed_schema_arns_request()) ->
    {ok, list_managed_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_managed_schema_arns_errors(), tuple()}.
list_managed_schema_arns(Client, Input) ->
    list_managed_schema_arns(Client, Input, []).

-spec list_managed_schema_arns(aws_client:aws_client(), list_managed_schema_arns_request(), proplists:proplist()) ->
    {ok, list_managed_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_managed_schema_arns_errors(), tuple()}.
list_managed_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/managed"],
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

%% @doc Lists all attributes that are associated with an object.
-spec list_object_attributes(aws_client:aws_client(), list_object_attributes_request()) ->
    {ok, list_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_object_attributes_errors(), tuple()}.
list_object_attributes(Client, Input) ->
    list_object_attributes(Client, Input, []).

-spec list_object_attributes(aws_client:aws_client(), list_object_attributes_request(), proplists:proplist()) ->
    {ok, list_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_object_attributes_errors(), tuple()}.
list_object_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of child objects that are associated with a
%% given
%% object.
-spec list_object_children(aws_client:aws_client(), list_object_children_request()) ->
    {ok, list_object_children_response(), tuple()} |
    {error, any()} |
    {error, list_object_children_errors(), tuple()}.
list_object_children(Client, Input) ->
    list_object_children(Client, Input, []).

-spec list_object_children(aws_client:aws_client(), list_object_children_request(), proplists:proplist()) ->
    {ok, list_object_children_response(), tuple()} |
    {error, any()} |
    {error, list_object_children_errors(), tuple()}.
list_object_children(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/children"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all available parent paths for any object type such as
%% node, leaf node,
%% policy node, and index node objects.
%%
%% For more information about objects, see Directory Structure:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html.
%%
%% Use this API to evaluate all parents for an object. The call returns all
%% objects from
%% the root of the directory up to the requested object. The API returns the
%% number of paths
%% based on user-defined `MaxResults', in case there are multiple paths
%% to the parent.
%% The order of the paths and nodes returned is consistent among multiple API
%% calls unless the
%% objects are deleted or moved. Paths not leading to the directory root are
%% ignored from the
%% target object.
-spec list_object_parent_paths(aws_client:aws_client(), list_object_parent_paths_request()) ->
    {ok, list_object_parent_paths_response(), tuple()} |
    {error, any()} |
    {error, list_object_parent_paths_errors(), tuple()}.
list_object_parent_paths(Client, Input) ->
    list_object_parent_paths(Client, Input, []).

-spec list_object_parent_paths(aws_client:aws_client(), list_object_parent_paths_request(), proplists:proplist()) ->
    {ok, list_object_parent_paths_response(), tuple()} |
    {error, any()} |
    {error, list_object_parent_paths_errors(), tuple()}.
list_object_parent_paths(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/parentpaths"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists parent objects that are associated with a given object in
%% pagination
%% fashion.
-spec list_object_parents(aws_client:aws_client(), list_object_parents_request()) ->
    {ok, list_object_parents_response(), tuple()} |
    {error, any()} |
    {error, list_object_parents_errors(), tuple()}.
list_object_parents(Client, Input) ->
    list_object_parents(Client, Input, []).

-spec list_object_parents(aws_client:aws_client(), list_object_parents_request(), proplists:proplist()) ->
    {ok, list_object_parents_response(), tuple()} |
    {error, any()} |
    {error, list_object_parents_errors(), tuple()}.
list_object_parents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/parent"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns policies attached to an object in pagination fashion.
-spec list_object_policies(aws_client:aws_client(), list_object_policies_request()) ->
    {ok, list_object_policies_response(), tuple()} |
    {error, any()} |
    {error, list_object_policies_errors(), tuple()}.
list_object_policies(Client, Input) ->
    list_object_policies(Client, Input, []).

-spec list_object_policies(aws_client:aws_client(), list_object_policies_request(), proplists:proplist()) ->
    {ok, list_object_policies_response(), tuple()} |
    {error, any()} |
    {error, list_object_policies_errors(), tuple()}.
list_object_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of all the outgoing `TypedLinkSpecifier'
%% information for an object.
%%
%% It also supports filtering by typed link facet and identity
%% attributes. For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec list_outgoing_typed_links(aws_client:aws_client(), list_outgoing_typed_links_request()) ->
    {ok, list_outgoing_typed_links_response(), tuple()} |
    {error, any()} |
    {error, list_outgoing_typed_links_errors(), tuple()}.
list_outgoing_typed_links(Client, Input) ->
    list_outgoing_typed_links(Client, Input, []).

-spec list_outgoing_typed_links(aws_client:aws_client(), list_outgoing_typed_links_request(), proplists:proplist()) ->
    {ok, list_outgoing_typed_links_response(), tuple()} |
    {error, any()} |
    {error, list_outgoing_typed_links_errors(), tuple()}.
list_outgoing_typed_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/outgoing"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns all of the `ObjectIdentifiers' to which a given policy is
%% attached.
-spec list_policy_attachments(aws_client:aws_client(), list_policy_attachments_request()) ->
    {ok, list_policy_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_policy_attachments_errors(), tuple()}.
list_policy_attachments(Client, Input) ->
    list_policy_attachments(Client, Input, []).

-spec list_policy_attachments(aws_client:aws_client(), list_policy_attachments_request(), proplists:proplist()) ->
    {ok, list_policy_attachments_response(), tuple()} |
    {error, any()} |
    {error, list_policy_attachments_errors(), tuple()}.
list_policy_attachments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/policy/attachment"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-consistency-level">>, <<"ConsistencyLevel">>},
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the major version families of each published schema.
%%
%% If a major version ARN is provided as `SchemaArn', the minor version
%% revisions in that family are listed instead.
-spec list_published_schema_arns(aws_client:aws_client(), list_published_schema_arns_request()) ->
    {ok, list_published_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_published_schema_arns_errors(), tuple()}.
list_published_schema_arns(Client, Input) ->
    list_published_schema_arns(Client, Input, []).

-spec list_published_schema_arns(aws_client:aws_client(), list_published_schema_arns_request(), proplists:proplist()) ->
    {ok, list_published_schema_arns_response(), tuple()} |
    {error, any()} |
    {error, list_published_schema_arns_errors(), tuple()}.
list_published_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/published"],
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

%% @doc Returns tags for a resource.
%%
%% Tagging is currently supported only for directories with a
%% limit of 50 tags per directory. All 50 tags are returned for a given
%% directory with this API
%% call.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/tags"],
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

%% @doc Returns a paginated list of all attribute definitions for a
%% particular `TypedLinkFacet'.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec list_typed_link_facet_attributes(aws_client:aws_client(), list_typed_link_facet_attributes_request()) ->
    {ok, list_typed_link_facet_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_typed_link_facet_attributes_errors(), tuple()}.
list_typed_link_facet_attributes(Client, Input) ->
    list_typed_link_facet_attributes(Client, Input, []).

-spec list_typed_link_facet_attributes(aws_client:aws_client(), list_typed_link_facet_attributes_request(), proplists:proplist()) ->
    {ok, list_typed_link_facet_attributes_response(), tuple()} |
    {error, any()} |
    {error, list_typed_link_facet_attributes_errors(), tuple()}.
list_typed_link_facet_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of `TypedLink' facet names for a
%% particular schema.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec list_typed_link_facet_names(aws_client:aws_client(), list_typed_link_facet_names_request()) ->
    {ok, list_typed_link_facet_names_response(), tuple()} |
    {error, any()} |
    {error, list_typed_link_facet_names_errors(), tuple()}.
list_typed_link_facet_names(Client, Input) ->
    list_typed_link_facet_names(Client, Input, []).

-spec list_typed_link_facet_names(aws_client:aws_client(), list_typed_link_facet_names_request(), proplists:proplist()) ->
    {ok, list_typed_link_facet_names_response(), tuple()} |
    {error, any()} |
    {error, list_typed_link_facet_names_errors(), tuple()}.
list_typed_link_facet_names(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all policies from the root of the `Directory' to the object
%% specified.
%%
%% If there are no policies present, an empty list is returned. If policies
%% are
%% present, and if some objects don't have the policies attached, it
%% returns the `ObjectIdentifier'
%% for such objects. If policies are present, it returns
%% `ObjectIdentifier', `policyId', and
%% `policyType'. Paths that don't lead to the root from the target
%% object are ignored. For more
%% information, see Policies:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies.
-spec lookup_policy(aws_client:aws_client(), lookup_policy_request()) ->
    {ok, lookup_policy_response(), tuple()} |
    {error, any()} |
    {error, lookup_policy_errors(), tuple()}.
lookup_policy(Client, Input) ->
    lookup_policy(Client, Input, []).

-spec lookup_policy(aws_client:aws_client(), lookup_policy_request(), proplists:proplist()) ->
    {ok, lookup_policy_response(), tuple()} |
    {error, any()} |
    {error, lookup_policy_errors(), tuple()}.
lookup_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/policy/lookup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Publishes a development schema with a major version and a recommended
%% minor version.
-spec publish_schema(aws_client:aws_client(), publish_schema_request()) ->
    {ok, publish_schema_response(), tuple()} |
    {error, any()} |
    {error, publish_schema_errors(), tuple()}.
publish_schema(Client, Input) ->
    publish_schema(Client, Input, []).

-spec publish_schema(aws_client:aws_client(), publish_schema_request(), proplists:proplist()) ->
    {ok, publish_schema_response(), tuple()} |
    {error, any()} |
    {error, publish_schema_errors(), tuple()}.
publish_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/publish"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DevelopmentSchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows a schema to be updated using JSON upload.
%%
%% Only available for development schemas. See JSON Schema Format:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json
%% for more information.
-spec put_schema_from_json(aws_client:aws_client(), put_schema_from_json_request()) ->
    {ok, put_schema_from_json_response(), tuple()} |
    {error, any()} |
    {error, put_schema_from_json_errors(), tuple()}.
put_schema_from_json(Client, Input) ->
    put_schema_from_json(Client, Input, []).

-spec put_schema_from_json(aws_client:aws_client(), put_schema_from_json_request(), proplists:proplist()) ->
    {ok, put_schema_from_json_response(), tuple()} |
    {error, any()} |
    {error, put_schema_from_json_errors(), tuple()}.
put_schema_from_json(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/json"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified facet from the specified object.
-spec remove_facet_from_object(aws_client:aws_client(), remove_facet_from_object_request()) ->
    {ok, remove_facet_from_object_response(), tuple()} |
    {error, any()} |
    {error, remove_facet_from_object_errors(), tuple()}.
remove_facet_from_object(Client, Input) ->
    remove_facet_from_object(Client, Input, []).

-spec remove_facet_from_object(aws_client:aws_client(), remove_facet_from_object_request(), proplists:proplist()) ->
    {ok, remove_facet_from_object_response(), tuple()} |
    {error, any()} |
    {error, remove_facet_from_object_errors(), tuple()}.
remove_facet_from_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/facets/delete"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc An API operation for adding tags to a resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/tags/add"],
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

%% @doc An API operation for removing tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/tags/remove"],
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

%% @doc Does the following:
%%
%% Adds new `Attributes', `Rules', or `ObjectTypes'.
%%
%% Updates existing `Attributes', `Rules', or `ObjectTypes'.
%%
%% Deletes existing `Attributes', `Rules', or `ObjectTypes'.
-spec update_facet(aws_client:aws_client(), update_facet_request()) ->
    {ok, update_facet_response(), tuple()} |
    {error, any()} |
    {error, update_facet_errors(), tuple()}.
update_facet(Client, Input) ->
    update_facet(Client, Input, []).

-spec update_facet(aws_client:aws_client(), update_facet_request(), proplists:proplist()) ->
    {ok, update_facet_response(), tuple()} |
    {error, any()} |
    {error, update_facet_errors(), tuple()}.
update_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a given typed link’s attributes.
%%
%% Attributes to be updated must not contribute to the typed link’s identity,
%% as defined by its `IdentityAttributeOrder'.
-spec update_link_attributes(aws_client:aws_client(), update_link_attributes_request()) ->
    {ok, update_link_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_link_attributes_errors(), tuple()}.
update_link_attributes(Client, Input) ->
    update_link_attributes(Client, Input, []).

-spec update_link_attributes(aws_client:aws_client(), update_link_attributes_request(), proplists:proplist()) ->
    {ok, update_link_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_link_attributes_errors(), tuple()}.
update_link_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attributes/update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a given object's attributes.
-spec update_object_attributes(aws_client:aws_client(), update_object_attributes_request()) ->
    {ok, update_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_object_attributes_errors(), tuple()}.
update_object_attributes(Client, Input) ->
    update_object_attributes(Client, Input, []).

-spec update_object_attributes(aws_client:aws_client(), update_object_attributes_request(), proplists:proplist()) ->
    {ok, update_object_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_object_attributes_errors(), tuple()}.
update_object_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the schema name with a new name.
%%
%% Only development schema names can be
%% updated.
-spec update_schema(aws_client:aws_client(), update_schema_request()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, Input) ->
    update_schema(Client, Input, []).

-spec update_schema(aws_client:aws_client(), update_schema_request(), proplists:proplist()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/update"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a `TypedLinkFacet'.
%%
%% For more information, see Typed Links:
%% https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink.
-spec update_typed_link_facet(aws_client:aws_client(), update_typed_link_facet_request()) ->
    {ok, update_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, update_typed_link_facet_errors(), tuple()}.
update_typed_link_facet(Client, Input) ->
    update_typed_link_facet(Client, Input, []).

-spec update_typed_link_facet(aws_client:aws_client(), update_typed_link_facet_request(), proplists:proplist()) ->
    {ok, update_typed_link_facet_response(), tuple()} |
    {error, any()} |
    {error, update_typed_link_facet_errors(), tuple()}.
update_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Upgrades a single directory in-place using the
%% `PublishedSchemaArn' with schema updates found in `MinorVersion'.
%%
%% Backwards-compatible minor version upgrades are instantaneously available
%% for readers on all objects in the directory. Note: This is a synchronous
%% API call and upgrades only one schema on a given directory per call. To
%% upgrade multiple directories from one schema, you would need to call this
%% API on each directory.
-spec upgrade_applied_schema(aws_client:aws_client(), upgrade_applied_schema_request()) ->
    {ok, upgrade_applied_schema_response(), tuple()} |
    {error, any()} |
    {error, upgrade_applied_schema_errors(), tuple()}.
upgrade_applied_schema(Client, Input) ->
    upgrade_applied_schema(Client, Input, []).

-spec upgrade_applied_schema(aws_client:aws_client(), upgrade_applied_schema_request(), proplists:proplist()) ->
    {ok, upgrade_applied_schema_response(), tuple()} |
    {error, any()} |
    {error, upgrade_applied_schema_errors(), tuple()}.
upgrade_applied_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/upgradeapplied"],
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

%% @doc Upgrades a published schema under a new minor version revision using
%% the current contents of `DevelopmentSchemaArn'.
-spec upgrade_published_schema(aws_client:aws_client(), upgrade_published_schema_request()) ->
    {ok, upgrade_published_schema_response(), tuple()} |
    {error, any()} |
    {error, upgrade_published_schema_errors(), tuple()}.
upgrade_published_schema(Client, Input) ->
    upgrade_published_schema(Client, Input, []).

-spec upgrade_published_schema(aws_client:aws_client(), upgrade_published_schema_request(), proplists:proplist()) ->
    {ok, upgrade_published_schema_response(), tuple()} |
    {error, any()} |
    {error, upgrade_published_schema_errors(), tuple()}.
upgrade_published_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/upgradepublished"],
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
    Client1 = Client#{service => <<"clouddirectory">>},
    Host = build_host(<<"clouddirectory">>, Client1),
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
