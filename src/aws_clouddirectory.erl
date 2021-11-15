%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Cloud Directory
%%
%% Amazon Cloud Directory is a component of the AWS Directory Service that
%% simplifies the development and management of cloud-scale web, mobile, and
%% IoT applications.
%%
%% This guide describes the Cloud Directory operations that you can call
%% programmatically and includes detailed information on data types and
%% errors. For information about Cloud Directory features, see AWS Directory
%% Service and the Amazon Cloud Directory Developer Guide.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a new `Facet' to an object.
%%
%% An object can have more than one facet applied on it.
add_facet_to_object(Client, Input) ->
    add_facet_to_object(Client, Input, []).
add_facet_to_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/facets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% `Directory' with the same name and version as that of the published
%% schema.
apply_schema(Client, Input) ->
    apply_schema(Client, Input, []).
apply_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/apply"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% An object can be accessed in two ways:
%%
%% <ol> <li> Using the path
%%
%% </li> <li> Using `ObjectIdentifier'
%%
%% </li> </ol>
attach_object(Client, Input) ->
    attach_object(Client, Input, []).
attach_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/attach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% An object can have a limited number of attached policies.
attach_policy(Client, Input) ->
    attach_policy(Client, Input, []).
attach_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/policy/attach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
attach_to_index(Client, Input) ->
    attach_to_index(Client, Input, []).
attach_to_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index/attach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% For more information, see Typed Links.
attach_typed_link(Client, Input) ->
    attach_typed_link(Client, Input, []).
attach_typed_link(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
batch_read(Client, Input) ->
    batch_read(Client, Input, []).
batch_read(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/batchread"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Either all the operations succeed or none.
batch_write(Client, Input) ->
    batch_write(Client, Input, []).
batch_write(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/batchwrite"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% `QuickStartSchema'. For more information, see Managed Schema in the Amazon
%% Cloud Directory Developer Guide.
create_directory(Client, Input) ->
    create_directory(Client, Input, []).
create_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Facet creation is allowed only in development or applied schemas.
create_facet(Client, Input) ->
    create_facet(Client, Input, []).
create_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% See Indexing and search for more information.
create_index(Client, Input) ->
    create_index(Client, Input, []).
create_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Additionally attaches the object to a parent, if a parent reference and
%% `LinkName' is specified. An object is simply a collection of `Facet'
%% attributes. You can also use this API call to create a policy object, if
%% the facet from which you create the object is a policy facet.
create_object(Client, Input) ->
    create_object(Client, Input, []).
create_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% A schema can exist in three phases:
%%
%% <ul> <li> Development: This is a mutable phase of the schema. All new
%% schemas are in the development phase. Once the schema is finalized, it can
%% be published.
%%
%% </li> <li> Published: Published schemas are immutable and have a version
%% associated with them.
%%
%% </li> <li> Applied: Applied schemas are mutable in a way that allows you
%% to add new schema facets. You can also add new, nonrequired attributes to
%% existing schema facets. You can apply only published schemas to
%% directories.
%%
%% </li> </ul>
create_schema(Client, Input) ->
    create_schema(Client, Input, []).
create_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/create"],
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

%% @doc Creates a `TypedLinkFacet'.
%%
%% For more information, see Typed Links.
create_typed_link_facet(Client, Input) ->
    create_typed_link_facet(Client, Input, []).
create_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% undone. Exercise extreme caution when deleting directories.
delete_directory(Client, Input) ->
    delete_directory(Client, Input, []).
delete_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% All attributes and `Rule's that are associated with the facet will be
%% deleted. Only development schema facets are allowed deletion.
delete_facet(Client, Input) ->
    delete_facet(Client, Input, []).
delete_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Only objects with no children and no parents can be deleted. The maximum
%% number of attributes that can be deleted during an object deletion is 30.
%% For more information, see Amazon Cloud Directory Limits.
delete_object(Client, Input) ->
    delete_object(Client, Input, []).
delete_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_schema(Client, Input) ->
    delete_schema(Client, Input, []).
delete_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% For more information, see Typed Links.
delete_typed_link_facet(Client, Input) ->
    delete_typed_link_facet(Client, Input, []).
delete_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
detach_from_index(Client, Input) ->
    detach_from_index(Client, Input, []).
detach_from_index(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/index/detach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% The object that is to be detached from the parent is specified by the link
%% name.
detach_object(Client, Input) ->
    detach_object(Client, Input, []).
detach_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/detach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
detach_policy(Client, Input) ->
    detach_policy(Client, Input, []).
detach_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/policy/detach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% For more information, see Typed Links.
detach_typed_link(Client, Input) ->
    detach_typed_link(Client, Input, []).
detach_typed_link(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/detach"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Disabled directories cannot be read or written to. Only enabled
%% directories can be disabled. Disabled directories may be reenabled.
disable_directory(Client, Input) ->
    disable_directory(Client, Input, []).
disable_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/disable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Only disabled directories can be enabled. Once enabled, the directory can
%% then be read and written to.
enable_directory(Client, Input) ->
    enable_directory(Client, Input, []).
enable_directory(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/directory/enable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
get_applied_schema_version(Client, Input) ->
    get_applied_schema_version(Client, Input, []).
get_applied_schema_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/getappliedschema"],
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

%% @doc Retrieves metadata about a directory.
get_directory(Client, Input) ->
    get_directory(Client, Input, []).
get_directory(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/directory/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"DirectoryArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details of the `Facet', such as facet name, attributes, `Rule's,
%% or `ObjectType'.
%%
%% You can call this on all kinds of schema facets -- published, development,
%% or applied.
get_facet(Client, Input) ->
    get_facet(Client, Input, []).
get_facet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
get_link_attributes(Client, Input) ->
    get_link_attributes(Client, Input, []).
get_link_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attributes/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
get_object_attributes(Client, Input) ->
    get_object_attributes(Client, Input, []).
get_object_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/attributes/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
get_object_information(Client, Input) ->
    get_object_information(Client, Input, []).
get_object_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/information"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% See JSON Schema Format for more information.
get_schema_as_json(Client, Input) ->
    get_schema_as_json(Client, Input, []).
get_schema_as_json(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/json"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the identity attribute order for a specific `TypedLinkFacet'.
%%
%% For more information, see Typed Links.
get_typed_link_facet_information(Client, Input) ->
    get_typed_link_facet_information(Client, Input, []).
get_typed_link_facet_information(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_applied_schema_arns(Client, Input) ->
    list_applied_schema_arns(Client, Input, []).
list_applied_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/applied"],
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

%% @doc Lists indices attached to the specified object.
list_attached_indices(Client, Input) ->
    list_attached_indices(Client, Input, []).
list_attached_indices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/indices"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% development state.
list_development_schema_arns(Client, Input) ->
    list_development_schema_arns(Client, Input, []).
list_development_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/development"],
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

%% @doc Lists directories created within an account.
list_directories(Client, Input) ->
    list_directories(Client, Input, []).
list_directories(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/directory/list"],
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

%% @doc Retrieves attributes attached to the facet.
list_facet_attributes(Client, Input) ->
    list_facet_attributes(Client, Input, []).
list_facet_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet/attributes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_facet_names(Client, Input) ->
    list_facet_names(Client, Input, []).
list_facet_names(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/facet/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% It also supports filtering by typed link facet and identity attributes.
%% For more information, see Typed Links.
list_incoming_typed_links(Client, Input) ->
    list_incoming_typed_links(Client, Input, []).
list_incoming_typed_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/incoming"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_index(Client, Input) ->
    list_index(Client, Input, []).
list_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/index/targets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_managed_schema_arns(Client, Input) ->
    list_managed_schema_arns(Client, Input, []).
list_managed_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/managed"],
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

%% @doc Lists all attributes that are associated with an object.
list_object_attributes(Client, Input) ->
    list_object_attributes(Client, Input, []).
list_object_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/attributes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% given object.
list_object_children(Client, Input) ->
    list_object_children(Client, Input, []).
list_object_children(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/children"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% node, leaf node, policy node, and index node objects.
%%
%% For more information about objects, see Directory Structure.
%%
%% Use this API to evaluate all parents for an object. The call returns all
%% objects from the root of the directory up to the requested object. The API
%% returns the number of paths based on user-defined `MaxResults', in case
%% there are multiple paths to the parent. The order of the paths and nodes
%% returned is consistent among multiple API calls unless the objects are
%% deleted or moved. Paths not leading to the directory root are ignored from
%% the target object.
list_object_parent_paths(Client, Input) ->
    list_object_parent_paths(Client, Input, []).
list_object_parent_paths(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/parentpaths"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% pagination fashion.
list_object_parents(Client, Input) ->
    list_object_parents(Client, Input, []).
list_object_parents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/parent"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_object_policies(Client, Input) ->
    list_object_policies(Client, Input, []).
list_object_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/object/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% It also supports filtering by typed link facet and identity attributes.
%% For more information, see Typed Links.
list_outgoing_typed_links(Client, Input) ->
    list_outgoing_typed_links(Client, Input, []).
list_outgoing_typed_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/outgoing"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_policy_attachments(Client, Input) ->
    list_policy_attachments(Client, Input, []).
list_policy_attachments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/policy/attachment"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
list_published_schema_arns(Client, Input) ->
    list_published_schema_arns(Client, Input, []).
list_published_schema_arns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/schema/published"],
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

%% @doc Returns tags for a resource.
%%
%% Tagging is currently supported only for directories with a limit of 50
%% tags per directory. All 50 tags are returned for a given directory with
%% this API call.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/tags"],
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

%% @doc Returns a paginated list of all attribute definitions for a
%% particular `TypedLinkFacet'.
%%
%% For more information, see Typed Links.
list_typed_link_facet_attributes(Client, Input) ->
    list_typed_link_facet_attributes(Client, Input, []).
list_typed_link_facet_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a paginated list of `TypedLink' facet names for a particular
%% schema.
%%
%% For more information, see Typed Links.
list_typed_link_facet_names(Client, Input) ->
    list_typed_link_facet_names(Client, Input, []).
list_typed_link_facet_names(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% are present, and if some objects don't have the policies attached, it
%% returns the `ObjectIdentifier' for such objects. If policies are present,
%% it returns `ObjectIdentifier', `policyId', and `policyType'. Paths that
%% don't lead to the root from the target object are ignored. For more
%% information, see Policies.
lookup_policy(Client, Input) ->
    lookup_policy(Client, Input, []).
lookup_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/policy/lookup"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
publish_schema(Client, Input) ->
    publish_schema(Client, Input, []).
publish_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/publish"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Only available for development schemas. See JSON Schema Format for more
%% information.
put_schema_from_json(Client, Input) ->
    put_schema_from_json(Client, Input, []).
put_schema_from_json(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/json"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
remove_facet_from_object(Client, Input) ->
    remove_facet_from_object(Client, Input, []).
remove_facet_from_object(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/facets/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/tags/add"],
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

%% @doc An API operation for removing tags from a resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/tags/remove"],
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

%% @doc Does the following:
%%
%% <ol> <li> Adds new `Attributes', `Rules', or `ObjectTypes'.
%%
%% </li> <li> Updates existing `Attributes', `Rules', or `ObjectTypes'.
%%
%% </li> <li> Deletes existing `Attributes', `Rules', or `ObjectTypes'.
%%
%% </li> </ol>
update_facet(Client, Input) ->
    update_facet(Client, Input, []).
update_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/facet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_link_attributes(Client, Input) ->
    update_link_attributes(Client, Input, []).
update_link_attributes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/attributes/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_object_attributes(Client, Input) ->
    update_object_attributes(Client, Input, []).
update_object_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/object/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% Only development schema names can be updated.
update_schema(Client, Input) ->
    update_schema(Client, Input, []).
update_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% For more information, see Typed Links.
update_typed_link_facet(Client, Input) ->
    update_typed_link_facet(Client, Input, []).
update_typed_link_facet(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/typedlink/facet"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amz-data-partition">>, <<"SchemaArn">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Upgrades a single directory in-place using the `PublishedSchemaArn'
%% with schema updates found in `MinorVersion'.
%%
%% Backwards-compatible minor version upgrades are instantaneously available
%% for readers on all objects in the directory. Note: This is a synchronous
%% API call and upgrades only one schema on a given directory per call. To
%% upgrade multiple directories from one schema, you would need to call this
%% API on each directory.
upgrade_applied_schema(Client, Input) ->
    upgrade_applied_schema(Client, Input, []).
upgrade_applied_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/upgradeapplied"],
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

%% @doc Upgrades a published schema under a new minor version revision using
%% the current contents of `DevelopmentSchemaArn'.
upgrade_published_schema(Client, Input) ->
    upgrade_published_schema(Client, Input, []).
upgrade_published_schema(Client, Input0, Options0) ->
    Method = put,
    Path = ["/amazonclouddirectory/2017-01-11/schema/upgradepublished"],
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
    Client1 = Client#{service => <<"clouddirectory">>},
    Host = build_host(<<"clouddirectory">>, Client1),
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
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
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
