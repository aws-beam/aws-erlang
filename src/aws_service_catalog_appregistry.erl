%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Service Catalog AppRegistry enables organizations
%% to understand the application context of their Amazon Web Services
%% resources.
%%
%% AppRegistry provides a repository of your applications, their resources,
%% and the application metadata that you use within your enterprise.
-module(aws_service_catalog_appregistry).

-export([associate_attribute_group/4,
         associate_attribute_group/5,
         associate_resource/5,
         associate_resource/6,
         create_application/2,
         create_application/3,
         create_attribute_group/2,
         create_attribute_group/3,
         delete_application/3,
         delete_application/4,
         delete_attribute_group/3,
         delete_attribute_group/4,
         disassociate_attribute_group/4,
         disassociate_attribute_group/5,
         disassociate_resource/5,
         disassociate_resource/6,
         get_application/2,
         get_application/4,
         get_application/5,
         get_associated_resource/4,
         get_associated_resource/6,
         get_associated_resource/7,
         get_attribute_group/2,
         get_attribute_group/4,
         get_attribute_group/5,
         get_configuration/1,
         get_configuration/3,
         get_configuration/4,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_associated_attribute_groups/2,
         list_associated_attribute_groups/4,
         list_associated_attribute_groups/5,
         list_associated_resources/2,
         list_associated_resources/4,
         list_associated_resources/5,
         list_attribute_groups/1,
         list_attribute_groups/3,
         list_attribute_groups/4,
         list_attribute_groups_for_application/2,
         list_attribute_groups_for_application/4,
         list_attribute_groups_for_application/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_configuration/2,
         put_configuration/3,
         sync_resource/4,
         sync_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_attribute_group/3,
         update_attribute_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_attribute_group_request() :: #{}
-type delete_attribute_group_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% resources_list_item() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"status">> => string()
%% }
-type resources_list_item() :: #{binary() => any()}.


%% Example:
%% create_attribute_group_response() :: #{
%%   <<"attributeGroup">> => attribute_group()
%% }
-type create_attribute_group_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_associated_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resource_info())
%% }
-type list_associated_resources_response() :: #{binary() => any()}.


%% Example:
%% application_tag_result() :: #{
%%   <<"applicationTagStatus">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resources_list_item())
%% }
-type application_tag_result() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_attribute_groups_for_application_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_attribute_groups_for_application_request() :: #{binary() => any()}.


%% Example:
%% list_associated_attribute_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_associated_attribute_groups_request() :: #{binary() => any()}.


%% Example:
%% tag_query_configuration() :: #{
%%   <<"tagKey">> => string()
%% }
-type tag_query_configuration() :: #{binary() => any()}.


%% Example:
%% list_associated_attribute_groups_response() :: #{
%%   <<"attributeGroups">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_associated_attribute_groups_response() :: #{binary() => any()}.


%% Example:
%% update_attribute_group_request() :: #{
%%   <<"attributes">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_attribute_group_request() :: #{binary() => any()}.


%% Example:
%% list_attribute_groups_response() :: #{
%%   <<"attributeGroups">> => list(attribute_group_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_attribute_groups_response() :: #{binary() => any()}.


%% Example:
%% associate_resource_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"options">> => list(list(any())()),
%%   <<"resourceArn">> => string()
%% }
-type associate_resource_response() :: #{binary() => any()}.


%% Example:
%% get_configuration_response() :: #{
%%   <<"configuration">> => app_registry_configuration()
%% }
-type get_configuration_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_associated_resources_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_associated_resources_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_attribute_group_response() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_attribute_group_response() :: #{binary() => any()}.


%% Example:
%% application() :: #{
%%   <<"applicationTag">> => map(),
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type application() :: #{binary() => any()}.

%% Example:
%% get_attribute_group_request() :: #{}
-type get_attribute_group_request() :: #{}.


%% Example:
%% resource_integrations() :: #{
%%   <<"resourceGroup">> => resource_group()
%% }
-type resource_integrations() :: #{binary() => any()}.


%% Example:
%% attribute_group_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type attribute_group_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type disassociate_resource_response() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"application">> => application()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% associate_resource_request() :: #{
%%   <<"options">> => list(list(any())())
%% }
-type associate_resource_request() :: #{binary() => any()}.

%% Example:
%% sync_resource_request() :: #{}
-type sync_resource_request() :: #{}.

%% Example:
%% associate_attribute_group_request() :: #{}
-type associate_attribute_group_request() :: #{}.

%% Example:
%% disassociate_resource_request() :: #{}
-type disassociate_resource_request() :: #{}.


%% Example:
%% resource_group() :: #{
%%   <<"arn">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"state">> => list(any())
%% }
-type resource_group() :: #{binary() => any()}.


%% Example:
%% delete_application_response() :: #{
%%   <<"application">> => application_summary()
%% }
-type delete_application_response() :: #{binary() => any()}.


%% Example:
%% sync_resource_response() :: #{
%%   <<"actionTaken">> => list(any()),
%%   <<"applicationArn">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type sync_resource_response() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"application">> => application()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"applicationTag">> => map(),
%%   <<"arn">> => string(),
%%   <<"associatedResourceCount">> => integer(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"integrations">> => integrations(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% attribute_group() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type attribute_group() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% app_registry_configuration() :: #{
%%   <<"tagQueryConfiguration">> => tag_query_configuration()
%% }
-type app_registry_configuration() :: #{binary() => any()}.


%% Example:
%% integrations() :: #{
%%   <<"applicationTagResourceGroup">> => resource_group(),
%%   <<"resourceGroup">> => resource_group()
%% }
-type integrations() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_attribute_groups_for_application_response() :: #{
%%   <<"attributeGroupsDetails">> => list(attribute_group_details()),
%%   <<"nextToken">> => string()
%% }
-type list_attribute_groups_for_application_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_attribute_groups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_attribute_groups_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_associated_resource_response() :: #{
%%   <<"applicationTagResult">> => application_tag_result(),
%%   <<"options">> => list(list(any())()),
%%   <<"resource">> => resource()
%% }
-type get_associated_resource_response() :: #{binary() => any()}.


%% Example:
%% disassociate_attribute_group_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"attributeGroupArn">> => string()
%% }
-type disassociate_attribute_group_response() :: #{binary() => any()}.


%% Example:
%% resource_info() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"options">> => list(list(any())()),
%%   <<"resourceDetails">> => resource_details(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_info() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% associate_attribute_group_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"attributeGroupArn">> => string()
%% }
-type associate_attribute_group_response() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applications">> => list(application_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% put_configuration_request() :: #{
%%   <<"configuration">> := app_registry_configuration()
%% }
-type put_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_attribute_group_response() :: #{
%%   <<"attributeGroup">> => attribute_group()
%% }
-type update_attribute_group_response() :: #{binary() => any()}.


%% Example:
%% resource_details() :: #{
%%   <<"tagValue">> => string()
%% }
-type resource_details() :: #{binary() => any()}.


%% Example:
%% delete_attribute_group_response() :: #{
%%   <<"attributeGroup">> => attribute_group_summary()
%% }
-type delete_attribute_group_response() :: #{binary() => any()}.


%% Example:
%% create_attribute_group_request() :: #{
%%   <<"attributes">> := string(),
%%   <<"clientToken">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_attribute_group_request() :: #{binary() => any()}.

%% Example:
%% get_application_request() :: #{}
-type get_application_request() :: #{}.


%% Example:
%% attribute_group_details() :: #{
%%   <<"arn">> => string(),
%%   <<"createdBy">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type attribute_group_details() :: #{binary() => any()}.


%% Example:
%% get_associated_resource_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceTagStatus">> => list(list(any())())
%% }
-type get_associated_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% resource() :: #{
%%   <<"arn">> => string(),
%%   <<"associationTime">> => non_neg_integer(),
%%   <<"integrations">> => resource_integrations(),
%%   <<"name">> => string()
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% disassociate_attribute_group_request() :: #{}
-type disassociate_attribute_group_request() :: #{}.

-type associate_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_associated_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_configuration_errors() ::
    internal_server_exception().

-type list_applications_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_associated_attribute_groups_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_associated_resources_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_attribute_groups_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_attribute_groups_for_application_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type sync_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_attribute_group_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an attribute group with an application to augment the
%% application's metadata
%% with the group's attributes.
%%
%% This feature enables applications to be described with
%% user-defined details that are machine-readable, such as third-party
%% integrations.
-spec associate_attribute_group(aws_client:aws_client(), binary() | list(), binary() | list(), associate_attribute_group_request()) ->
    {ok, associate_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, associate_attribute_group_errors(), tuple()}.
associate_attribute_group(Client, Application, AttributeGroup, Input) ->
    associate_attribute_group(Client, Application, AttributeGroup, Input, []).

-spec associate_attribute_group(aws_client:aws_client(), binary() | list(), binary() | list(), associate_attribute_group_request(), proplists:proplist()) ->
    {ok, associate_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, associate_attribute_group_errors(), tuple()}.
associate_attribute_group(Client, Application, AttributeGroup, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
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
%% Associates a resource with an application.
%%
%% The resource can be specified by its ARN or name.
%% The application can be specified by ARN, ID, or name.
%%
%% Minimum permissions
%%
%% You must have the following permissions to associate a resource using the
%% `OPTIONS' parameter set to `APPLY_APPLICATION_TAG'.
%%
%% `tag:GetResources'
%%
%% `tag:TagResources'
%%
%% You must also have these additional permissions if you don't use the
%% `AWSServiceCatalogAppRegistryFullAccess' policy.
%% For more information, see AWSServiceCatalogAppRegistryFullAccess:
%% https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html in the
%% AppRegistry Administrator Guide.
%%
%% `resource-groups:AssociateResource'
%%
%% `cloudformation:UpdateStack'
%%
%% `cloudformation:DescribeStacks'
%%
%% In addition, you must have the tagging permission defined by the Amazon
%% Web Services service that creates the resource.
%% For more information, see TagResources:
%% https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html
%% in the Resource Groups Tagging API Reference.
-spec associate_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_resource_request()) ->
    {ok, associate_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_errors(), tuple()}.
associate_resource(Client, Application, Resource, ResourceType, Input) ->
    associate_resource(Client, Application, Resource, ResourceType, Input, []).

-spec associate_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_resource_request(), proplists:proplist()) ->
    {ok, associate_resource_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_errors(), tuple()}.
associate_resource(Client, Application, Resource, ResourceType, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
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

%% @doc Creates a new application that is the top-level node in a hierarchy
%% of related cloud resource abstractions.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Creates a new attribute group as a container for user-defined
%% attributes.
%%
%% This feature
%% enables users to have full control over their cloud application's
%% metadata in a rich
%% machine-readable format to facilitate integration with automated workflows
%% and third-party
%% tools.
-spec create_attribute_group(aws_client:aws_client(), create_attribute_group_request()) ->
    {ok, create_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, create_attribute_group_errors(), tuple()}.
create_attribute_group(Client, Input) ->
    create_attribute_group(Client, Input, []).

-spec create_attribute_group(aws_client:aws_client(), create_attribute_group_request(), proplists:proplist()) ->
    {ok, create_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, create_attribute_group_errors(), tuple()}.
create_attribute_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/attribute-groups"],
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

%% @doc Deletes an application that is specified either by its application
%% ID, name, or ARN.
%%
%% All associated attribute groups and resources must be disassociated from
%% it before deleting an application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Application, Input) ->
    delete_application(Client, Application, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Application, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
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

%% @doc Deletes an attribute group, specified either by its attribute group
%% ID, name, or ARN.
-spec delete_attribute_group(aws_client:aws_client(), binary() | list(), delete_attribute_group_request()) ->
    {ok, delete_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, delete_attribute_group_errors(), tuple()}.
delete_attribute_group(Client, AttributeGroup, Input) ->
    delete_attribute_group(Client, AttributeGroup, Input, []).

-spec delete_attribute_group(aws_client:aws_client(), binary() | list(), delete_attribute_group_request(), proplists:proplist()) ->
    {ok, delete_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, delete_attribute_group_errors(), tuple()}.
delete_attribute_group(Client, AttributeGroup, Input0, Options0) ->
    Method = delete,
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
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

%% @doc Disassociates an attribute group from an application to remove the
%% extra attributes contained in the attribute group from the
%% application's metadata.
%%
%% This operation reverts `AssociateAttributeGroup'.
-spec disassociate_attribute_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_attribute_group_request()) ->
    {ok, disassociate_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_attribute_group_errors(), tuple()}.
disassociate_attribute_group(Client, Application, AttributeGroup, Input) ->
    disassociate_attribute_group(Client, Application, AttributeGroup, Input, []).

-spec disassociate_attribute_group(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_attribute_group_request(), proplists:proplist()) ->
    {ok, disassociate_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, disassociate_attribute_group_errors(), tuple()}.
disassociate_attribute_group(Client, Application, AttributeGroup, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
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
%% Disassociates a resource from application.
%%
%% Both the resource and the application can be specified either by ID or
%% name.
%%
%% Minimum permissions
%%
%% You must have the following permissions to remove a resource that's
%% been associated with an application using the `APPLY_APPLICATION_TAG'
%% option for AssociateResource:
%% https://docs.aws.amazon.com/servicecatalog/latest/dg/API_app-registry_AssociateResource.html.
%%
%% `tag:GetResources'
%%
%% `tag:UntagResources'
%%
%% You must also have the following permissions if you don't use the
%% `AWSServiceCatalogAppRegistryFullAccess' policy.
%% For more information, see AWSServiceCatalogAppRegistryFullAccess:
%% https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html in the
%% AppRegistry Administrator Guide.
%%
%% `resource-groups:DisassociateResource'
%%
%% `cloudformation:UpdateStack'
%%
%% `cloudformation:DescribeStacks'
%%
%% In addition, you must have the tagging permission defined by the Amazon
%% Web Services service that creates the resource.
%% For more information, see UntagResources:
%% https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_UntTagResources.html
%% in the Resource Groups Tagging API Reference.
-spec disassociate_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_resource_request()) ->
    {ok, disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_errors(), tuple()}.
disassociate_resource(Client, Application, Resource, ResourceType, Input) ->
    disassociate_resource(Client, Application, Resource, ResourceType, Input, []).

-spec disassociate_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_resource_request(), proplists:proplist()) ->
    {ok, disassociate_resource_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_errors(), tuple()}.
disassociate_resource(Client, Application, Resource, ResourceType, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
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
%% Retrieves metadata information
%% about one
%% of your applications.
%%
%% The application can be specified
%% by its ARN, ID, or name
%% (which is unique
%% within one account
%% in one region
%% at a given point
%% in time).
%% Specify
%% by ARN or ID
%% in automated workflows
%% if you want
%% to make sure
%% that the exact same application is returned or a
%% `ResourceNotFoundException' is thrown,
%% avoiding the ABA addressing problem.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Application)
  when is_map(Client) ->
    get_application(Client, Application, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, Application, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource associated with the application.
-spec get_associated_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_associated_resource_response(), tuple()} |
    {error, any()} |
    {error, get_associated_resource_errors(), tuple()}.
get_associated_resource(Client, Application, Resource, ResourceType)
  when is_map(Client) ->
    get_associated_resource(Client, Application, Resource, ResourceType, #{}, #{}).

-spec get_associated_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_associated_resource_response(), tuple()} |
    {error, any()} |
    {error, get_associated_resource_errors(), tuple()}.
get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap, []).

-spec get_associated_resource(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_associated_resource_response(), tuple()} |
    {error, any()} |
    {error, get_associated_resource_errors(), tuple()}.
get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceTagStatus">>, maps:get(<<"resourceTagStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves an attribute group
%% by its ARN, ID, or name.
%%
%% The attribute group can be specified
%% by its ARN, ID, or name.
-spec get_attribute_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, get_attribute_group_errors(), tuple()}.
get_attribute_group(Client, AttributeGroup)
  when is_map(Client) ->
    get_attribute_group(Client, AttributeGroup, #{}, #{}).

-spec get_attribute_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, get_attribute_group_errors(), tuple()}.
get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap, []).

-spec get_attribute_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, get_attribute_group_errors(), tuple()}.
get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves a `TagKey' configuration
%% from an account.
-spec get_configuration(aws_client:aws_client()) ->
    {ok, get_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client)
  when is_map(Client) ->
    get_configuration(Client, #{}, #{}).

-spec get_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration(Client, QueryMap, HeadersMap, []).

-spec get_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all of your applications.
%%
%% Results are paginated.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
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

%% @doc Lists all attribute groups that are associated with specified
%% application.
%%
%% Results are paginated.
-spec list_associated_attribute_groups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_associated_attribute_groups_errors(), tuple()}.
list_associated_attribute_groups(Client, Application)
  when is_map(Client) ->
    list_associated_attribute_groups(Client, Application, #{}, #{}).

-spec list_associated_attribute_groups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_associated_attribute_groups_errors(), tuple()}.
list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap, []).

-spec list_associated_attribute_groups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_associated_attribute_groups_errors(), tuple()}.
list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups"],
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

%% @doc
%% Lists all
%% of the resources
%% that are associated
%% with the specified application.
%%
%% Results are paginated.
%%
%% If you share an application,
%% and a consumer account associates a tag query
%% to the application,
%% all of the users
%% who can access the application
%% can also view the tag values
%% in all accounts
%% that are associated
%% with it
%% using this API.
-spec list_associated_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_resources_response(), tuple()} |
    {error, any()} |
    {error, list_associated_resources_errors(), tuple()}.
list_associated_resources(Client, Application)
  when is_map(Client) ->
    list_associated_resources(Client, Application, #{}, #{}).

-spec list_associated_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_resources_response(), tuple()} |
    {error, any()} |
    {error, list_associated_resources_errors(), tuple()}.
list_associated_resources(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_resources(Client, Application, QueryMap, HeadersMap, []).

-spec list_associated_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_resources_response(), tuple()} |
    {error, any()} |
    {error, list_associated_resources_errors(), tuple()}.
list_associated_resources(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources"],
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

%% @doc Lists all attribute groups which you have access to.
%%
%% Results are paginated.
-spec list_attribute_groups(aws_client:aws_client()) ->
    {ok, list_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_errors(), tuple()}.
list_attribute_groups(Client)
  when is_map(Client) ->
    list_attribute_groups(Client, #{}, #{}).

-spec list_attribute_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_errors(), tuple()}.
list_attribute_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attribute_groups(Client, QueryMap, HeadersMap, []).

-spec list_attribute_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_attribute_groups_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_errors(), tuple()}.
list_attribute_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attribute-groups"],
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

%% @doc Lists the details of all attribute groups associated with a specific
%% application.
%%
%% The results display in pages.
-spec list_attribute_groups_for_application(aws_client:aws_client(), binary() | list()) ->
    {ok, list_attribute_groups_for_application_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_for_application_errors(), tuple()}.
list_attribute_groups_for_application(Client, Application)
  when is_map(Client) ->
    list_attribute_groups_for_application(Client, Application, #{}, #{}).

-spec list_attribute_groups_for_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_attribute_groups_for_application_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_for_application_errors(), tuple()}.
list_attribute_groups_for_application(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attribute_groups_for_application(Client, Application, QueryMap, HeadersMap, []).

-spec list_attribute_groups_for_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_attribute_groups_for_application_response(), tuple()} |
    {error, any()} |
    {error, list_attribute_groups_for_application_errors(), tuple()}.
list_attribute_groups_for_application(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-group-details"],
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

%% @doc Lists all of the tags on the resource.
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

%% @doc
%% Associates a `TagKey' configuration
%% to an account.
-spec put_configuration(aws_client:aws_client(), put_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_configuration_errors(), tuple()}.
put_configuration(Client, Input) ->
    put_configuration(Client, Input, []).

-spec put_configuration(aws_client:aws_client(), put_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_configuration_errors(), tuple()}.
put_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/configuration"],
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

%% @doc Syncs the resource with current AppRegistry records.
%%
%% Specifically, the resource’s AppRegistry system tags sync with its
%% associated application. We remove the resource's AppRegistry system
%% tags if it does not associate with the application. The caller must have
%% permissions to read and update the resource.
-spec sync_resource(aws_client:aws_client(), binary() | list(), binary() | list(), sync_resource_request()) ->
    {ok, sync_resource_response(), tuple()} |
    {error, any()} |
    {error, sync_resource_errors(), tuple()}.
sync_resource(Client, Resource, ResourceType, Input) ->
    sync_resource(Client, Resource, ResourceType, Input, []).

-spec sync_resource(aws_client:aws_client(), binary() | list(), binary() | list(), sync_resource_request(), proplists:proplist()) ->
    {ok, sync_resource_response(), tuple()} |
    {error, any()} |
    {error, sync_resource_errors(), tuple()}.
sync_resource(Client, Resource, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/sync/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated with the resource, this action updates its
%% value.
%%
%% This operation returns an empty response if the call was successful.
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

%% @doc Removes tags from a resource.
%%
%% This operation returns an empty response if the call was successful.
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

%% @doc Updates an existing application with new attributes.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Application, Input) ->
    update_application(Client, Application, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Application, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
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

%% @doc Updates an existing attribute group with new details.
-spec update_attribute_group(aws_client:aws_client(), binary() | list(), update_attribute_group_request()) ->
    {ok, update_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, update_attribute_group_errors(), tuple()}.
update_attribute_group(Client, AttributeGroup, Input) ->
    update_attribute_group(Client, AttributeGroup, Input, []).

-spec update_attribute_group(aws_client:aws_client(), binary() | list(), update_attribute_group_request(), proplists:proplist()) ->
    {ok, update_attribute_group_response(), tuple()} |
    {error, any()} |
    {error, update_attribute_group_errors(), tuple()}.
update_attribute_group(Client, AttributeGroup, Input0, Options0) ->
    Method = patch,
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
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
    Client1 = Client#{service => <<"servicecatalog">>},
    Host = build_host(<<"servicecatalog-appregistry">>, Client1),
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
