%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amplify UI Builder API provides a programmatic interface for
%% creating
%% and configuring user interface (UI) component libraries and themes for use
%% in your Amplify applications.
%%
%% You can then connect these UI components to an application's
%% backend Amazon Web Services resources.
%%
%% You can also use the Amplify Studio visual designer to create UI
%% components
%% and model data for an app. For more information, see Introduction:
%% https://docs.amplify.aws/console/adminui/intro in the
%% Amplify Docs.
%%
%% The Amplify Framework is a comprehensive set of SDKs, libraries, tools,
%% and
%% documentation for client app development. For more information, see the
%% Amplify Framework: https://docs.amplify.aws/. For more information about
%% deploying an Amplify application to Amazon Web Services, see the Amplify
%% User Guide:
%% https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html.
-module(aws_amplifyuibuilder).

-export([create_component/4,
         create_component/5,
         create_form/4,
         create_form/5,
         create_theme/4,
         create_theme/5,
         delete_component/5,
         delete_component/6,
         delete_form/5,
         delete_form/6,
         delete_theme/5,
         delete_theme/6,
         exchange_code_for_token/3,
         exchange_code_for_token/4,
         export_components/3,
         export_components/5,
         export_components/6,
         export_forms/3,
         export_forms/5,
         export_forms/6,
         export_themes/3,
         export_themes/5,
         export_themes/6,
         get_codegen_job/4,
         get_codegen_job/6,
         get_codegen_job/7,
         get_component/4,
         get_component/6,
         get_component/7,
         get_form/4,
         get_form/6,
         get_form/7,
         get_metadata/3,
         get_metadata/5,
         get_metadata/6,
         get_theme/4,
         get_theme/6,
         get_theme/7,
         list_codegen_jobs/3,
         list_codegen_jobs/5,
         list_codegen_jobs/6,
         list_components/3,
         list_components/5,
         list_components/6,
         list_forms/3,
         list_forms/5,
         list_forms/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_themes/3,
         list_themes/5,
         list_themes/6,
         put_metadata_flag/5,
         put_metadata_flag/6,
         refresh_token/3,
         refresh_token/4,
         start_codegen_job/4,
         start_codegen_job/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_component/5,
         update_component/6,
         update_form/5,
         update_form/6,
         update_theme/5,
         update_theme/6]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% no_api_render_config() :: #{}
-type no_api_render_config() :: #{}.


%% Example:
%% theme() :: #{
%%   <<"appId">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentName">> => [string()],
%%   <<"id">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"overrides">> => list(theme_values()),
%%   <<"tags">> => map(),
%%   <<"values">> => list(theme_values())
%% }
-type theme() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% codegen_generic_data_non_model() :: #{
%%   <<"fields">> => map()
%% }
-type codegen_generic_data_non_model() :: #{binary() => any()}.


%% Example:
%% codegen_generic_data_field() :: #{
%%   <<"dataType">> => list(any()),
%%   <<"dataTypeValue">> => [string()],
%%   <<"isArray">> => [boolean()],
%%   <<"readOnly">> => [boolean()],
%%   <<"relationship">> => codegen_generic_data_relationship_type(),
%%   <<"required">> => [boolean()]
%% }
-type codegen_generic_data_field() :: #{binary() => any()}.


%% Example:
%% exchange_code_for_token_response() :: #{
%%   <<"accessToken">> := string(),
%%   <<"expiresIn">> := [integer()],
%%   <<"refreshToken">> := string()
%% }
-type exchange_code_for_token_response() :: #{binary() => any()}.

%% Example:
%% get_theme_request() :: #{}
-type get_theme_request() :: #{}.


%% Example:
%% form() :: #{
%%   <<"appId">> => [string()],
%%   <<"cta">> => form_c_t_a(),
%%   <<"dataType">> => form_data_type_config(),
%%   <<"environmentName">> => [string()],
%%   <<"fields">> => map(),
%%   <<"formActionType">> => list(any()),
%%   <<"id">> => string(),
%%   <<"labelDecorator">> => string(),
%%   <<"name">> => string(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sectionalElements">> => map(),
%%   <<"style">> => form_style(),
%%   <<"tags">> => map()
%% }
-type form() :: #{binary() => any()}.

%% Example:
%% data_store_render_config() :: #{}
-type data_store_render_config() :: #{}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% form_data_type_config() :: #{
%%   <<"dataSourceType">> => string(),
%%   <<"dataTypeName">> => [string()]
%% }
-type form_data_type_config() :: #{binary() => any()}.


%% Example:
%% codegen_job() :: #{
%%   <<"appId">> => string(),
%%   <<"asset">> => codegen_job_asset(),
%%   <<"autoGenerateForms">> => [boolean()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"dependencies">> => list(codegen_dependency()),
%%   <<"environmentName">> => [string()],
%%   <<"features">> => codegen_feature_flags(),
%%   <<"genericDataSchema">> => codegen_job_generic_data_schema(),
%%   <<"id">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"renderConfig">> => list(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"tags">> => map()
%% }
-type codegen_job() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% form_c_t_a() :: #{
%%   <<"cancel">> => form_button(),
%%   <<"clear">> => form_button(),
%%   <<"position">> => list(any()),
%%   <<"submit">> => form_button()
%% }
-type form_c_t_a() :: #{binary() => any()}.


%% Example:
%% file_uploader_field_config() :: #{
%%   <<"acceptedFileTypes">> => list([string()]()),
%%   <<"accessLevel">> => list(any()),
%%   <<"isResumable">> => [boolean()],
%%   <<"maxFileCount">> => [integer()],
%%   <<"maxSize">> => [integer()],
%%   <<"showThumbnails">> => [boolean()]
%% }
-type file_uploader_field_config() :: #{binary() => any()}.


%% Example:
%% codegen_job_summary() :: #{
%%   <<"appId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentName">> => [string()],
%%   <<"id">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()]
%% }
-type codegen_job_summary() :: #{binary() => any()}.


%% Example:
%% update_form_data() :: #{
%%   <<"cta">> => form_c_t_a(),
%%   <<"dataType">> => form_data_type_config(),
%%   <<"fields">> => map(),
%%   <<"formActionType">> => list(any()),
%%   <<"labelDecorator">> => string(),
%%   <<"name">> => string(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sectionalElements">> => map(),
%%   <<"style">> => form_style()
%% }
-type update_form_data() :: #{binary() => any()}.


%% Example:
%% component_binding_properties_value_properties() :: #{
%%   <<"bucket">> => [string()],
%%   <<"defaultValue">> => [string()],
%%   <<"field">> => [string()],
%%   <<"key">> => [string()],
%%   <<"model">> => [string()],
%%   <<"predicates">> => list(predicate()),
%%   <<"slotName">> => [string()],
%%   <<"userAttribute">> => [string()]
%% }
-type component_binding_properties_value_properties() :: #{binary() => any()}.


%% Example:
%% component_variant() :: #{
%%   <<"overrides">> => map(),
%%   <<"variantValues">> => map()
%% }
-type component_variant() :: #{binary() => any()}.


%% Example:
%% update_form_response() :: #{
%%   <<"entity">> => form()
%% }
-type update_form_response() :: #{binary() => any()}.


%% Example:
%% create_theme_data() :: #{
%%   <<"name">> => string(),
%%   <<"overrides">> => list(theme_values()),
%%   <<"tags">> => map(),
%%   <<"values">> => list(theme_values())
%% }
-type create_theme_data() :: #{binary() => any()}.


%% Example:
%% sort_property() :: #{
%%   <<"direction">> => list(any()),
%%   <<"field">> => [string()]
%% }
-type sort_property() :: #{binary() => any()}.

%% Example:
%% delete_component_request() :: #{}
-type delete_component_request() :: #{}.

%% Example:
%% delete_form_request() :: #{}
-type delete_form_request() :: #{}.


%% Example:
%% start_codegen_job_data() :: #{
%%   <<"autoGenerateForms">> => [boolean()],
%%   <<"features">> => codegen_feature_flags(),
%%   <<"genericDataSchema">> => codegen_job_generic_data_schema(),
%%   <<"renderConfig">> => list(),
%%   <<"tags">> => map()
%% }
-type start_codegen_job_data() :: #{binary() => any()}.


%% Example:
%% get_component_response() :: #{
%%   <<"component">> => component()
%% }
-type get_component_response() :: #{binary() => any()}.


%% Example:
%% put_metadata_flag_body() :: #{
%%   <<"newValue">> => [string()]
%% }
-type put_metadata_flag_body() :: #{binary() => any()}.


%% Example:
%% codegen_generic_data_enum() :: #{
%%   <<"values">> => list([string()]())
%% }
-type codegen_generic_data_enum() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% form_binding_element() :: #{
%%   <<"element">> => [string()],
%%   <<"property">> => [string()]
%% }
-type form_binding_element() :: #{binary() => any()}.


%% Example:
%% refresh_token_response() :: #{
%%   <<"accessToken">> := string(),
%%   <<"expiresIn">> := [integer()]
%% }
-type refresh_token_response() :: #{binary() => any()}.


%% Example:
%% get_theme_response() :: #{
%%   <<"theme">> => theme()
%% }
-type get_theme_response() :: #{binary() => any()}.


%% Example:
%% start_codegen_job_response() :: #{
%%   <<"entity">> => codegen_job()
%% }
-type start_codegen_job_response() :: #{binary() => any()}.

%% Example:
%% delete_theme_request() :: #{}
-type delete_theme_request() :: #{}.


%% Example:
%% update_component_response() :: #{
%%   <<"entity">> => component()
%% }
-type update_component_response() :: #{binary() => any()}.


%% Example:
%% component_summary() :: #{
%%   <<"appId">> => [string()],
%%   <<"componentType">> => string(),
%%   <<"environmentName">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type component_summary() :: #{binary() => any()}.


%% Example:
%% form_input_binding_properties_value_properties() :: #{
%%   <<"model">> => [string()]
%% }
-type form_input_binding_properties_value_properties() :: #{binary() => any()}.


%% Example:
%% component_property_binding_properties() :: #{
%%   <<"field">> => [string()],
%%   <<"property">> => [string()]
%% }
-type component_property_binding_properties() :: #{binary() => any()}.


%% Example:
%% put_metadata_flag_request() :: #{
%%   <<"body">> := put_metadata_flag_body()
%% }
-type put_metadata_flag_request() :: #{binary() => any()}.


%% Example:
%% refresh_token_request_body() :: #{
%%   <<"clientId">> => string(),
%%   <<"token">> => string()
%% }
-type refresh_token_request_body() :: #{binary() => any()}.


%% Example:
%% get_metadata_response() :: #{
%%   <<"features">> := map()
%% }
-type get_metadata_response() :: #{binary() => any()}.


%% Example:
%% list_codegen_jobs_response() :: #{
%%   <<"entities">> => list(codegen_job_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_codegen_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_theme_response() :: #{
%%   <<"entity">> => theme()
%% }
-type create_theme_response() :: #{binary() => any()}.

%% Example:
%% get_form_request() :: #{}
-type get_form_request() :: #{}.


%% Example:
%% codegen_feature_flags() :: #{
%%   <<"isNonModelSupported">> => [boolean()],
%%   <<"isRelationshipSupported">> => [boolean()]
%% }
-type codegen_feature_flags() :: #{binary() => any()}.


%% Example:
%% create_component_response() :: #{
%%   <<"entity">> => component()
%% }
-type create_component_response() :: #{binary() => any()}.


%% Example:
%% create_component_data() :: #{
%%   <<"bindingProperties">> => map(),
%%   <<"children">> => list(component_child()),
%%   <<"collectionProperties">> => map(),
%%   <<"componentType">> => string(),
%%   <<"events">> => map(),
%%   <<"name">> => string(),
%%   <<"overrides">> => map(),
%%   <<"properties">> => map(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sourceId">> => [string()],
%%   <<"tags">> => map(),
%%   <<"variants">> => list(component_variant())
%% }
-type create_component_data() :: #{binary() => any()}.


%% Example:
%% list_codegen_jobs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_codegen_jobs_request() :: #{binary() => any()}.


%% Example:
%% update_component_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"updatedComponent">> := update_component_data()
%% }
-type update_component_request() :: #{binary() => any()}.


%% Example:
%% export_forms_response() :: #{
%%   <<"entities">> := list(form()),
%%   <<"nextToken">> => [string()]
%% }
-type export_forms_response() :: #{binary() => any()}.


%% Example:
%% list_themes_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_themes_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_components_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_components_request() :: #{binary() => any()}.

%% Example:
%% get_metadata_request() :: #{}
-type get_metadata_request() :: #{}.


%% Example:
%% field_config() :: #{
%%   <<"excluded">> => [boolean()],
%%   <<"inputType">> => field_input_config(),
%%   <<"label">> => [string()],
%%   <<"position">> => list(),
%%   <<"validations">> => list(field_validation_configuration())
%% }
-type field_config() :: #{binary() => any()}.


%% Example:
%% get_form_response() :: #{
%%   <<"form">> => form()
%% }
-type get_form_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% component_child() :: #{
%%   <<"children">> => list(component_child()),
%%   <<"componentType">> => [string()],
%%   <<"events">> => map(),
%%   <<"name">> => [string()],
%%   <<"properties">> => map(),
%%   <<"sourceId">> => [string()]
%% }
-type component_child() :: #{binary() => any()}.


%% Example:
%% component() :: #{
%%   <<"appId">> => [string()],
%%   <<"bindingProperties">> => map(),
%%   <<"children">> => list(component_child()),
%%   <<"collectionProperties">> => map(),
%%   <<"componentType">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"environmentName">> => [string()],
%%   <<"events">> => map(),
%%   <<"id">> => string(),
%%   <<"modifiedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"overrides">> => map(),
%%   <<"properties">> => map(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sourceId">> => [string()],
%%   <<"tags">> => map(),
%%   <<"variants">> => list(component_variant())
%% }
-type component() :: #{binary() => any()}.


%% Example:
%% refresh_token_request() :: #{
%%   <<"refreshTokenBody">> := refresh_token_request_body()
%% }
-type refresh_token_request() :: #{binary() => any()}.


%% Example:
%% list_forms_response() :: #{
%%   <<"entities">> := list(form_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_forms_response() :: #{binary() => any()}.


%% Example:
%% value_mapping() :: #{
%%   <<"displayValue">> => form_input_value_property(),
%%   <<"value">> => form_input_value_property()
%% }
-type value_mapping() :: #{binary() => any()}.


%% Example:
%% react_start_codegen_job_data() :: #{
%%   <<"apiConfiguration">> => list(),
%%   <<"dependencies">> => map(),
%%   <<"inlineSourceMap">> => [boolean()],
%%   <<"module">> => list(any()),
%%   <<"renderTypeDeclarations">> => [boolean()],
%%   <<"script">> => list(any()),
%%   <<"target">> => list(any())
%% }
-type react_start_codegen_job_data() :: #{binary() => any()}.


%% Example:
%% export_components_response() :: #{
%%   <<"entities">> := list(component()),
%%   <<"nextToken">> => [string()]
%% }
-type export_components_response() :: #{binary() => any()}.


%% Example:
%% update_theme_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"updatedTheme">> := update_theme_data()
%% }
-type update_theme_request() :: #{binary() => any()}.


%% Example:
%% create_theme_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"themeToCreate">> := create_theme_data()
%% }
-type create_theme_request() :: #{binary() => any()}.


%% Example:
%% export_themes_request() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type export_themes_request() :: #{binary() => any()}.


%% Example:
%% exchange_code_for_token_request() :: #{
%%   <<"request">> := exchange_code_for_token_request_body()
%% }
-type exchange_code_for_token_request() :: #{binary() => any()}.


%% Example:
%% start_codegen_job_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"codegenJobToCreate">> := start_codegen_job_data()
%% }
-type start_codegen_job_request() :: #{binary() => any()}.


%% Example:
%% create_form_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"formToCreate">> := create_form_data()
%% }
-type create_form_request() :: #{binary() => any()}.


%% Example:
%% get_codegen_job_response() :: #{
%%   <<"job">> => codegen_job()
%% }
-type get_codegen_job_response() :: #{binary() => any()}.


%% Example:
%% create_component_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"componentToCreate">> := create_component_data()
%% }
-type create_component_request() :: #{binary() => any()}.


%% Example:
%% sectional_element() :: #{
%%   <<"excluded">> => [boolean()],
%%   <<"level">> => [integer()],
%%   <<"orientation">> => [string()],
%%   <<"position">> => list(),
%%   <<"text">> => [string()],
%%   <<"type">> => [string()]
%% }
-type sectional_element() :: #{binary() => any()}.


%% Example:
%% exchange_code_for_token_request_body() :: #{
%%   <<"clientId">> => string(),
%%   <<"code">> => string(),
%%   <<"redirectUri">> => [string()]
%% }
-type exchange_code_for_token_request_body() :: #{binary() => any()}.


%% Example:
%% mutation_action_set_state_parameter() :: #{
%%   <<"componentName">> => [string()],
%%   <<"property">> => [string()],
%%   <<"set">> => component_property()
%% }
-type mutation_action_set_state_parameter() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% codegen_job_asset() :: #{
%%   <<"downloadUrl">> => [string()]
%% }
-type codegen_job_asset() :: #{binary() => any()}.


%% Example:
%% field_input_config() :: #{
%%   <<"defaultChecked">> => [boolean()],
%%   <<"defaultCountryCode">> => [string()],
%%   <<"defaultValue">> => [string()],
%%   <<"descriptiveText">> => [string()],
%%   <<"fileUploaderConfig">> => file_uploader_field_config(),
%%   <<"isArray">> => [boolean()],
%%   <<"maxValue">> => [float()],
%%   <<"minValue">> => [float()],
%%   <<"name">> => [string()],
%%   <<"placeholder">> => [string()],
%%   <<"readOnly">> => [boolean()],
%%   <<"required">> => [boolean()],
%%   <<"step">> => [float()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()],
%%   <<"valueMappings">> => value_mappings()
%% }
-type field_input_config() :: #{binary() => any()}.

%% Example:
%% get_codegen_job_request() :: #{}
-type get_codegen_job_request() :: #{}.


%% Example:
%% create_form_data() :: #{
%%   <<"cta">> => form_c_t_a(),
%%   <<"dataType">> => form_data_type_config(),
%%   <<"fields">> => map(),
%%   <<"formActionType">> => list(any()),
%%   <<"labelDecorator">> => string(),
%%   <<"name">> => string(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sectionalElements">> => map(),
%%   <<"style">> => form_style(),
%%   <<"tags">> => map()
%% }
-type create_form_data() :: #{binary() => any()}.


%% Example:
%% theme_value() :: #{
%%   <<"children">> => list(theme_values()),
%%   <<"value">> => [string()]
%% }
-type theme_value() :: #{binary() => any()}.


%% Example:
%% form_style() :: #{
%%   <<"horizontalGap">> => list(),
%%   <<"outerPadding">> => list(),
%%   <<"verticalGap">> => list()
%% }
-type form_style() :: #{binary() => any()}.


%% Example:
%% create_form_response() :: #{
%%   <<"entity">> => form()
%% }
-type create_form_response() :: #{binary() => any()}.


%% Example:
%% form_input_value_property() :: #{
%%   <<"bindingProperties">> => form_input_value_property_binding_properties(),
%%   <<"concat">> => list(form_input_value_property()),
%%   <<"value">> => [string()]
%% }
-type form_input_value_property() :: #{binary() => any()}.


%% Example:
%% component_event() :: #{
%%   <<"action">> => [string()],
%%   <<"bindingEvent">> => [string()],
%%   <<"parameters">> => action_parameters()
%% }
-type component_event() :: #{binary() => any()}.


%% Example:
%% form_input_value_property_binding_properties() :: #{
%%   <<"field">> => [string()],
%%   <<"property">> => [string()]
%% }
-type form_input_value_property_binding_properties() :: #{binary() => any()}.


%% Example:
%% form_button() :: #{
%%   <<"children">> => [string()],
%%   <<"excluded">> => [boolean()],
%%   <<"position">> => list()
%% }
-type form_button() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% graph_q_l_render_config() :: #{
%%   <<"fragmentsFilePath">> => [string()],
%%   <<"mutationsFilePath">> => [string()],
%%   <<"queriesFilePath">> => [string()],
%%   <<"subscriptionsFilePath">> => [string()],
%%   <<"typesFilePath">> => [string()]
%% }
-type graph_q_l_render_config() :: #{binary() => any()}.


%% Example:
%% list_forms_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_forms_request() :: #{binary() => any()}.


%% Example:
%% update_theme_response() :: #{
%%   <<"entity">> => theme()
%% }
-type update_theme_response() :: #{binary() => any()}.


%% Example:
%% theme_values() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => theme_value()
%% }
-type theme_values() :: #{binary() => any()}.


%% Example:
%% component_property() :: #{
%%   <<"bindingProperties">> => component_property_binding_properties(),
%%   <<"bindings">> => map(),
%%   <<"collectionBindingProperties">> => component_property_binding_properties(),
%%   <<"componentName">> => [string()],
%%   <<"concat">> => list(component_property()),
%%   <<"condition">> => component_condition_property(),
%%   <<"configured">> => [boolean()],
%%   <<"defaultValue">> => [string()],
%%   <<"event">> => [string()],
%%   <<"importedValue">> => [string()],
%%   <<"model">> => [string()],
%%   <<"property">> => [string()],
%%   <<"type">> => [string()],
%%   <<"userAttribute">> => [string()],
%%   <<"value">> => [string()]
%% }
-type component_property() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% codegen_job_generic_data_schema() :: #{
%%   <<"dataSourceType">> => list(any()),
%%   <<"enums">> => map(),
%%   <<"models">> => map(),
%%   <<"nonModels">> => map()
%% }
-type codegen_job_generic_data_schema() :: #{binary() => any()}.


%% Example:
%% action_parameters() :: #{
%%   <<"anchor">> => component_property(),
%%   <<"fields">> => map(),
%%   <<"global">> => component_property(),
%%   <<"id">> => component_property(),
%%   <<"model">> => [string()],
%%   <<"state">> => mutation_action_set_state_parameter(),
%%   <<"target">> => component_property(),
%%   <<"type">> => component_property(),
%%   <<"url">> => component_property()
%% }
-type action_parameters() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% form_summary() :: #{
%%   <<"appId">> => [string()],
%%   <<"dataType">> => form_data_type_config(),
%%   <<"environmentName">> => [string()],
%%   <<"formActionType">> => list(any()),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type form_summary() :: #{binary() => any()}.


%% Example:
%% theme_summary() :: #{
%%   <<"appId">> => [string()],
%%   <<"environmentName">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type theme_summary() :: #{binary() => any()}.


%% Example:
%% update_theme_data() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"overrides">> => list(theme_values()),
%%   <<"values">> => list(theme_values())
%% }
-type update_theme_data() :: #{binary() => any()}.


%% Example:
%% update_form_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"updatedForm">> := update_form_data()
%% }
-type update_form_request() :: #{binary() => any()}.


%% Example:
%% export_components_request() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type export_components_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% component_data_configuration() :: #{
%%   <<"identifiers">> => list([string()]()),
%%   <<"model">> => [string()],
%%   <<"predicate">> => predicate(),
%%   <<"sort">> => list(sort_property())
%% }
-type component_data_configuration() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% predicate() :: #{
%%   <<"and">> => list(predicate()),
%%   <<"field">> => [string()],
%%   <<"operand">> => [string()],
%%   <<"operandType">> => string(),
%%   <<"operator">> => [string()],
%%   <<"or">> => list(predicate())
%% }
-type predicate() :: #{binary() => any()}.


%% Example:
%% export_forms_request() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type export_forms_request() :: #{binary() => any()}.


%% Example:
%% codegen_dependency() :: #{
%%   <<"isSemVer">> => [boolean()],
%%   <<"name">> => [string()],
%%   <<"reason">> => [string()],
%%   <<"supportedVersion">> => [string()]
%% }
-type codegen_dependency() :: #{binary() => any()}.


%% Example:
%% list_components_response() :: #{
%%   <<"entities">> := list(component_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_components_response() :: #{binary() => any()}.


%% Example:
%% codegen_generic_data_relationship_type() :: #{
%%   <<"associatedFields">> => list([string()]()),
%%   <<"belongsToFieldOnRelatedModel">> => [string()],
%%   <<"canUnlinkAssociatedModel">> => [boolean()],
%%   <<"isHasManyIndex">> => [boolean()],
%%   <<"relatedJoinFieldName">> => [string()],
%%   <<"relatedJoinTableName">> => [string()],
%%   <<"relatedModelFields">> => list([string()]()),
%%   <<"relatedModelName">> => [string()],
%%   <<"type">> => list(any())
%% }
-type codegen_generic_data_relationship_type() :: #{binary() => any()}.


%% Example:
%% codegen_generic_data_model() :: #{
%%   <<"fields">> => map(),
%%   <<"isJoinTable">> => [boolean()],
%%   <<"primaryKeys">> => list([string()]())
%% }
-type codegen_generic_data_model() :: #{binary() => any()}.


%% Example:
%% field_validation_configuration() :: #{
%%   <<"numValues">> => list([integer()]()),
%%   <<"strValues">> => list([string()]()),
%%   <<"type">> => [string()],
%%   <<"validationMessage">> => [string()]
%% }
-type field_validation_configuration() :: #{binary() => any()}.


%% Example:
%% value_mappings() :: #{
%%   <<"bindingProperties">> => map(),
%%   <<"values">> => list(value_mapping())
%% }
-type value_mappings() :: #{binary() => any()}.


%% Example:
%% list_themes_response() :: #{
%%   <<"entities">> := list(theme_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_themes_response() :: #{binary() => any()}.


%% Example:
%% form_input_binding_properties_value() :: #{
%%   <<"bindingProperties">> => form_input_binding_properties_value_properties(),
%%   <<"type">> => [string()]
%% }
-type form_input_binding_properties_value() :: #{binary() => any()}.


%% Example:
%% export_themes_response() :: #{
%%   <<"entities">> := list(theme()),
%%   <<"nextToken">> => [string()]
%% }
-type export_themes_response() :: #{binary() => any()}.


%% Example:
%% component_binding_properties_value() :: #{
%%   <<"bindingProperties">> => component_binding_properties_value_properties(),
%%   <<"defaultValue">> => [string()],
%%   <<"type">> => [string()]
%% }
-type component_binding_properties_value() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_component_request() :: #{}
-type get_component_request() :: #{}.


%% Example:
%% update_component_data() :: #{
%%   <<"bindingProperties">> => map(),
%%   <<"children">> => list(component_child()),
%%   <<"collectionProperties">> => map(),
%%   <<"componentType">> => string(),
%%   <<"events">> => map(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"overrides">> => map(),
%%   <<"properties">> => map(),
%%   <<"schemaVersion">> => [string()],
%%   <<"sourceId">> => [string()],
%%   <<"variants">> => list(component_variant())
%% }
-type update_component_data() :: #{binary() => any()}.


%% Example:
%% component_condition_property() :: #{
%%   <<"else">> => component_property(),
%%   <<"field">> => [string()],
%%   <<"operand">> => [string()],
%%   <<"operandType">> => [string()],
%%   <<"operator">> => [string()],
%%   <<"property">> => [string()],
%%   <<"then">> => component_property()
%% }
-type component_condition_property() :: #{binary() => any()}.

-type create_component_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_form_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_theme_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_component_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_form_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_theme_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type exchange_code_for_token_errors() ::
    invalid_parameter_exception().

-type export_components_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type export_forms_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type export_themes_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type get_codegen_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_component_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_form_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_metadata_errors() ::
    invalid_parameter_exception() | 
    unauthorized_exception().

-type get_theme_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_codegen_jobs_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_components_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_forms_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_themes_errors() ::
    invalid_parameter_exception() | 
    internal_server_exception().

-type put_metadata_flag_errors() ::
    invalid_parameter_exception() | 
    unauthorized_exception().

-type refresh_token_errors() ::
    invalid_parameter_exception().

-type start_codegen_job_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_component_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type update_form_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

-type update_theme_errors() ::
    resource_conflict_exception() | 
    invalid_parameter_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new component for an Amplify app.
-spec create_component(aws_client:aws_client(), binary() | list(), binary() | list(), create_component_request()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, AppId, EnvironmentName, Input) ->
    create_component(Client, AppId, EnvironmentName, Input, []).

-spec create_component(aws_client:aws_client(), binary() | list(), binary() | list(), create_component_request(), proplists:proplist()) ->
    {ok, create_component_response(), tuple()} |
    {error, any()} |
    {error, create_component_errors(), tuple()}.
create_component(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new form for an Amplify app.
-spec create_form(aws_client:aws_client(), binary() | list(), binary() | list(), create_form_request()) ->
    {ok, create_form_response(), tuple()} |
    {error, any()} |
    {error, create_form_errors(), tuple()}.
create_form(Client, AppId, EnvironmentName, Input) ->
    create_form(Client, AppId, EnvironmentName, Input, []).

-spec create_form(aws_client:aws_client(), binary() | list(), binary() | list(), create_form_request(), proplists:proplist()) ->
    {ok, create_form_response(), tuple()} |
    {error, any()} |
    {error, create_form_errors(), tuple()}.
create_form(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme to apply to the components in an Amplify app.
-spec create_theme(aws_client:aws_client(), binary() | list(), binary() | list(), create_theme_request()) ->
    {ok, create_theme_response(), tuple()} |
    {error, any()} |
    {error, create_theme_errors(), tuple()}.
create_theme(Client, AppId, EnvironmentName, Input) ->
    create_theme(Client, AppId, EnvironmentName, Input, []).

-spec create_theme(aws_client:aws_client(), binary() | list(), binary() | list(), create_theme_request(), proplists:proplist()) ->
    {ok, create_theme_response(), tuple()} |
    {error, any()} |
    {error, create_theme_errors(), tuple()}.
create_theme(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a component from an Amplify app.
-spec delete_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_component_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, AppId, EnvironmentName, Id, Input) ->
    delete_component(Client, AppId, EnvironmentName, Id, Input, []).

-spec delete_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_component_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_component_errors(), tuple()}.
delete_component(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a form from an Amplify app.
-spec delete_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_form_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_form_errors(), tuple()}.
delete_form(Client, AppId, EnvironmentName, Id, Input) ->
    delete_form(Client, AppId, EnvironmentName, Id, Input, []).

-spec delete_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_form_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_form_errors(), tuple()}.
delete_form(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a theme from an Amplify app.
-spec delete_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_theme_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_theme_errors(), tuple()}.
delete_theme(Client, AppId, EnvironmentName, Id, Input) ->
    delete_theme(Client, AppId, EnvironmentName, Id, Input, []).

-spec delete_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_theme_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_theme_errors(), tuple()}.
delete_theme(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
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

%% @doc
%% This is for internal use.
%%
%% Amplify uses this action to exchange an access code for a token.
-spec exchange_code_for_token(aws_client:aws_client(), binary() | list(), exchange_code_for_token_request()) ->
    {ok, exchange_code_for_token_response(), tuple()} |
    {error, any()} |
    {error, exchange_code_for_token_errors(), tuple()}.
exchange_code_for_token(Client, Provider, Input) ->
    exchange_code_for_token(Client, Provider, Input, []).

-spec exchange_code_for_token(aws_client:aws_client(), binary() | list(), exchange_code_for_token_request(), proplists:proplist()) ->
    {ok, exchange_code_for_token_response(), tuple()} |
    {error, any()} |
    {error, exchange_code_for_token_errors(), tuple()}.
exchange_code_for_token(Client, Provider, Input0, Options0) ->
    Method = post,
    Path = ["/tokens/", aws_util:encode_uri(Provider), ""],
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

%% @doc Exports component configurations to code that is ready to integrate
%% into an Amplify app.
-spec export_components(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, export_components_response(), tuple()} |
    {error, any()} |
    {error, export_components_errors(), tuple()}.
export_components(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    export_components(Client, AppId, EnvironmentName, #{}, #{}).

-spec export_components(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_components_response(), tuple()} |
    {error, any()} |
    {error, export_components_errors(), tuple()}.
export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec export_components(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_components_response(), tuple()} |
    {error, any()} |
    {error, export_components_errors(), tuple()}.
export_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports form configurations to code that is ready to integrate into
%% an Amplify app.
-spec export_forms(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, export_forms_response(), tuple()} |
    {error, any()} |
    {error, export_forms_errors(), tuple()}.
export_forms(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    export_forms(Client, AppId, EnvironmentName, #{}, #{}).

-spec export_forms(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_forms_response(), tuple()} |
    {error, any()} |
    {error, export_forms_errors(), tuple()}.
export_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec export_forms(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_forms_response(), tuple()} |
    {error, any()} |
    {error, export_forms_errors(), tuple()}.
export_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports theme configurations to code that is ready to integrate into
%% an Amplify app.
-spec export_themes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, export_themes_response(), tuple()} |
    {error, any()} |
    {error, export_themes_errors(), tuple()}.
export_themes(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    export_themes(Client, AppId, EnvironmentName, #{}, #{}).

-spec export_themes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_themes_response(), tuple()} |
    {error, any()} |
    {error, export_themes_errors(), tuple()}.
export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec export_themes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_themes_response(), tuple()} |
    {error, any()} |
    {error, export_themes_errors(), tuple()}.
export_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing code generation job.
-spec get_codegen_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_codegen_job_response(), tuple()} |
    {error, any()} |
    {error, get_codegen_job_errors(), tuple()}.
get_codegen_job(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_codegen_job(Client, AppId, EnvironmentName, Id, #{}, #{}).

-spec get_codegen_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_codegen_job_response(), tuple()} |
    {error, any()} |
    {error, get_codegen_job_errors(), tuple()}.
get_codegen_job(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_codegen_job(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

-spec get_codegen_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_codegen_job_response(), tuple()} |
    {error, any()} |
    {error, get_codegen_job_errors(), tuple()}.
get_codegen_job(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/codegen-jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing component for an Amplify app.
-spec get_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_component(Client, AppId, EnvironmentName, Id, #{}, #{}).

-spec get_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

-spec get_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_component_response(), tuple()} |
    {error, any()} |
    {error, get_component_errors(), tuple()}.
get_component(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing form for an Amplify app.
-spec get_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_form_response(), tuple()} |
    {error, any()} |
    {error, get_form_errors(), tuple()}.
get_form(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_form(Client, AppId, EnvironmentName, Id, #{}, #{}).

-spec get_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_form_response(), tuple()} |
    {error, any()} |
    {error, get_form_errors(), tuple()}.
get_form(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_form(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

-spec get_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_form_response(), tuple()} |
    {error, any()} |
    {error, get_form_errors(), tuple()}.
get_form(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns existing metadata for an Amplify app.
-spec get_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_errors(), tuple()}.
get_metadata(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    get_metadata(Client, AppId, EnvironmentName, #{}, #{}).

-spec get_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_errors(), tuple()}.
get_metadata(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_metadata(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec get_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_metadata_errors(), tuple()}.
get_metadata(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an existing theme for an Amplify app.
-spec get_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_theme_response(), tuple()} |
    {error, any()} |
    {error, get_theme_errors(), tuple()}.
get_theme(Client, AppId, EnvironmentName, Id)
  when is_map(Client) ->
    get_theme(Client, AppId, EnvironmentName, Id, #{}, #{}).

-spec get_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_theme_response(), tuple()} |
    {error, any()} |
    {error, get_theme_errors(), tuple()}.
get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, []).

-spec get_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_theme_response(), tuple()} |
    {error, any()} |
    {error, get_theme_errors(), tuple()}.
get_theme(Client, AppId, EnvironmentName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of code generation jobs for a specified Amplify app
%% and backend environment.
-spec list_codegen_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_codegen_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_codegen_jobs_errors(), tuple()}.
list_codegen_jobs(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_codegen_jobs(Client, AppId, EnvironmentName, #{}, #{}).

-spec list_codegen_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_codegen_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_codegen_jobs_errors(), tuple()}.
list_codegen_jobs(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_codegen_jobs(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec list_codegen_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_codegen_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_codegen_jobs_errors(), tuple()}.
list_codegen_jobs(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/codegen-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of components for a specified Amplify app and
%% backend
%% environment.
-spec list_components(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_components(Client, AppId, EnvironmentName, #{}, #{}).

-spec list_components(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec list_components(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_components_response(), tuple()} |
    {error, any()} |
    {error, list_components_errors(), tuple()}.
list_components(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of forms for a specified Amplify app and backend
%% environment.
-spec list_forms(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_forms_response(), tuple()} |
    {error, any()} |
    {error, list_forms_errors(), tuple()}.
list_forms(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_forms(Client, AppId, EnvironmentName, #{}, #{}).

-spec list_forms(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_forms_response(), tuple()} |
    {error, any()} |
    {error, list_forms_errors(), tuple()}.
list_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec list_forms(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_forms_response(), tuple()} |
    {error, any()} |
    {error, list_forms_errors(), tuple()}.
list_forms(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a specified Amazon Resource Name (ARN).
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

%% @doc Retrieves a list of themes for a specified Amplify app and backend
%% environment.
-spec list_themes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    list_themes(Client, AppId, EnvironmentName, #{}, #{}).

-spec list_themes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

-spec list_themes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Stores the metadata information about a feature on a form.
-spec put_metadata_flag(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_metadata_flag_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metadata_flag_errors(), tuple()}.
put_metadata_flag(Client, AppId, EnvironmentName, FeatureName, Input) ->
    put_metadata_flag(Client, AppId, EnvironmentName, FeatureName, Input, []).

-spec put_metadata_flag(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_metadata_flag_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metadata_flag_errors(), tuple()}.
put_metadata_flag(Client, AppId, EnvironmentName, FeatureName, Input0, Options0) ->
    Method = put,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/metadata/features/", aws_util:encode_uri(FeatureName), ""],
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

%% @doc
%% This is for internal use.
%%
%% Amplify uses this action to refresh a previously issued access token that
%% might have expired.
-spec refresh_token(aws_client:aws_client(), binary() | list(), refresh_token_request()) ->
    {ok, refresh_token_response(), tuple()} |
    {error, any()} |
    {error, refresh_token_errors(), tuple()}.
refresh_token(Client, Provider, Input) ->
    refresh_token(Client, Provider, Input, []).

-spec refresh_token(aws_client:aws_client(), binary() | list(), refresh_token_request(), proplists:proplist()) ->
    {ok, refresh_token_response(), tuple()} |
    {error, any()} |
    {error, refresh_token_errors(), tuple()}.
refresh_token(Client, Provider, Input0, Options0) ->
    Method = post,
    Path = ["/tokens/", aws_util:encode_uri(Provider), "/refresh"],
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

%% @doc Starts a code generation job for a specified Amplify app and backend
%% environment.
-spec start_codegen_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_codegen_job_request()) ->
    {ok, start_codegen_job_response(), tuple()} |
    {error, any()} |
    {error, start_codegen_job_errors(), tuple()}.
start_codegen_job(Client, AppId, EnvironmentName, Input) ->
    start_codegen_job(Client, AppId, EnvironmentName, Input, []).

-spec start_codegen_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_codegen_job_request(), proplists:proplist()) ->
    {ok, start_codegen_job_response(), tuple()} |
    {error, any()} |
    {error, start_codegen_job_errors(), tuple()}.
start_codegen_job(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = post,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/codegen-jobs"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tags the resource with a tag key and value.
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

%% @doc Untags a resource with a specified Amazon Resource Name (ARN).
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
    Method = delete,
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing component.
-spec update_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_component_request()) ->
    {ok, update_component_response(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, AppId, EnvironmentName, Id, Input) ->
    update_component(Client, AppId, EnvironmentName, Id, Input, []).

-spec update_component(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_component_request(), proplists:proplist()) ->
    {ok, update_component_response(), tuple()} |
    {error, any()} |
    {error, update_component_errors(), tuple()}.
update_component(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/components/", aws_util:encode_uri(Id), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing form.
-spec update_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_form_request()) ->
    {ok, update_form_response(), tuple()} |
    {error, any()} |
    {error, update_form_errors(), tuple()}.
update_form(Client, AppId, EnvironmentName, Id, Input) ->
    update_form(Client, AppId, EnvironmentName, Id, Input, []).

-spec update_form(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_form_request(), proplists:proplist()) ->
    {ok, update_form_response(), tuple()} |
    {error, any()} |
    {error, update_form_errors(), tuple()}.
update_form(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/forms/", aws_util:encode_uri(Id), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing theme.
-spec update_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_theme_request()) ->
    {ok, update_theme_response(), tuple()} |
    {error, any()} |
    {error, update_theme_errors(), tuple()}.
update_theme(Client, AppId, EnvironmentName, Id, Input) ->
    update_theme(Client, AppId, EnvironmentName, Id, Input, []).

-spec update_theme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_theme_request(), proplists:proplist()) ->
    {ok, update_theme_response(), tuple()} |
    {error, any()} |
    {error, update_theme_errors(), tuple()}.
update_theme(Client, AppId, EnvironmentName, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/app/", aws_util:encode_uri(AppId), "/environment/", aws_util:encode_uri(EnvironmentName), "/themes/", aws_util:encode_uri(Id), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"amplifyuibuilder">>},
    Host = build_host(<<"amplifyuibuilder">>, Client1),
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
