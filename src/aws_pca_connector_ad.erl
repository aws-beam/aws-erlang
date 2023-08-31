%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Private CA Connector for Active Directory creates
%% a connector between Amazon Web Services Private CA and Active Directory
%% (AD) that enables you to provision security certificates for AD signed by
%% a private CA that you own.
%%
%% For more information, see Amazon Web Services Private CA Connector for
%% Active Directory.
-module(aws_pca_connector_ad).

-export([create_connector/2,
         create_connector/3,
         create_directory_registration/2,
         create_directory_registration/3,
         create_service_principal_name/4,
         create_service_principal_name/5,
         create_template/2,
         create_template/3,
         create_template_group_access_control_entry/3,
         create_template_group_access_control_entry/4,
         delete_connector/3,
         delete_connector/4,
         delete_directory_registration/3,
         delete_directory_registration/4,
         delete_service_principal_name/4,
         delete_service_principal_name/5,
         delete_template/3,
         delete_template/4,
         delete_template_group_access_control_entry/4,
         delete_template_group_access_control_entry/5,
         get_connector/2,
         get_connector/4,
         get_connector/5,
         get_directory_registration/2,
         get_directory_registration/4,
         get_directory_registration/5,
         get_service_principal_name/3,
         get_service_principal_name/5,
         get_service_principal_name/6,
         get_template/2,
         get_template/4,
         get_template/5,
         get_template_group_access_control_entry/3,
         get_template_group_access_control_entry/5,
         get_template_group_access_control_entry/6,
         list_connectors/1,
         list_connectors/3,
         list_connectors/4,
         list_directory_registrations/1,
         list_directory_registrations/3,
         list_directory_registrations/4,
         list_service_principal_names/2,
         list_service_principal_names/4,
         list_service_principal_names/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_group_access_control_entries/2,
         list_template_group_access_control_entries/4,
         list_template_group_access_control_entries/5,
         list_templates/2,
         list_templates/4,
         list_templates/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_template/3,
         update_template/4,
         update_template_group_access_control_entry/4,
         update_template_group_access_control_entry/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a connector between Amazon Web Services Private CA and an
%% Active Directory.
%%
%% You must specify the private CA, directory ID, and security groups.
create_connector(Client, Input) ->
    create_connector(Client, Input, []).
create_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connectors"],
    SuccessStatusCode = 202,
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

%% @doc Creates a directory registration that authorizes communication
%% between Amazon Web Services Private CA and an Active Directory
create_directory_registration(Client, Input) ->
    create_directory_registration(Client, Input, []).
create_directory_registration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/directoryRegistrations"],
    SuccessStatusCode = 202,
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

%% @doc Creates a service principal name (SPN) for the service account in
%% Active Directory.
%%
%% Kerberos authentication uses SPNs to associate a service instance with a
%% service sign-in account.
create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input) ->
    create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input, []).
create_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input0, Options0) ->
    Method = post,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Creates an Active Directory compatible certificate template.
%%
%% The connectors issues certificates using these templates based on the
%% requester’s Active Directory group membership.
create_template(Client, Input) ->
    create_template(Client, Input, []).
create_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/templates"],
    SuccessStatusCode = 200,
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

%% @doc Create a group access control entry.
%%
%% Allow or deny Active Directory groups from enrolling and/or autoenrolling
%% with the template based on the group security identifiers (SIDs).
create_template_group_access_control_entry(Client, TemplateArn, Input) ->
    create_template_group_access_control_entry(Client, TemplateArn, Input, []).
create_template_group_access_control_entry(Client, TemplateArn, Input0, Options0) ->
    Method = post,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries"],
    SuccessStatusCode = 200,
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

%% @doc Deletes a connector for Active Directory.
%%
%% You must provide the Amazon Resource Name (ARN) of the connector that you
%% want to delete. You can find the ARN by calling the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors]
%% action. Deleting a connector does not deregister your directory with
%% Amazon Web Services Private CA. You can deregister your directory by
%% calling the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration]
%% action.
delete_connector(Client, ConnectorArn, Input) ->
    delete_connector(Client, ConnectorArn, Input, []).
delete_connector(Client, ConnectorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a directory registration.
%%
%% Deleting a directory registration deauthorizes Amazon Web Services Private
%% CA with the directory.
delete_directory_registration(Client, DirectoryRegistrationArn, Input) ->
    delete_directory_registration(Client, DirectoryRegistrationArn, Input, []).
delete_directory_registration(Client, DirectoryRegistrationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes the service principal name (SPN) used by a connector to
%% authenticate with your Active Directory.
delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input) ->
    delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input, []).
delete_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a template.
%%
%% Certificates issued using the template are still valid until they are
%% revoked or expired.
delete_template(Client, TemplateArn, Input) ->
    delete_template(Client, TemplateArn, Input, []).
delete_template(Client, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a group access control entry.
delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input) ->
    delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input, []).
delete_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
    SuccessStatusCode = 200,
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

%% @doc Lists information about your connector.
%%
%% You specify the connector on input by its ARN (Amazon Resource Name).
get_connector(Client, ConnectorArn)
  when is_map(Client) ->
    get_connector(Client, ConnectorArn, #{}, #{}).

get_connector(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connector(Client, ConnectorArn, QueryMap, HeadersMap, []).

get_connector(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A structure that contains information about your directory
%% registration.
get_directory_registration(Client, DirectoryRegistrationArn)
  when is_map(Client) ->
    get_directory_registration(Client, DirectoryRegistrationArn, #{}, #{}).

get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

get_directory_registration(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the service principal name that the connector uses to
%% authenticate with Active Directory.
get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn)
  when is_map(Client) ->
    get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, #{}, #{}).

get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

get_service_principal_name(Client, ConnectorArn, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a certificate template that the connector uses to issue
%% certificates from a private CA.
get_template(Client, TemplateArn)
  when is_map(Client) ->
    get_template(Client, TemplateArn, #{}, #{}).

get_template(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template(Client, TemplateArn, QueryMap, HeadersMap, []).

get_template(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the group access control entries for a template.
get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn)
  when is_map(Client) ->
    get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, #{}, #{}).

get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap, []).

get_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the connectors that you created by using the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector]
%% action.
list_connectors(Client)
  when is_map(Client) ->
    list_connectors(Client, #{}, #{}).

list_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connectors(Client, QueryMap, HeadersMap, []).

list_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors"],
    SuccessStatusCode = 200,
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

%% @doc Lists the directory registrations that you created by using the
%% [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration]
%% action.
list_directory_registrations(Client)
  when is_map(Client) ->
    list_directory_registrations(Client, #{}, #{}).

list_directory_registrations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_directory_registrations(Client, QueryMap, HeadersMap, []).

list_directory_registrations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations"],
    SuccessStatusCode = 200,
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

%% @doc Lists the service principal names that the connector uses to
%% authenticate with Active Directory.
list_service_principal_names(Client, DirectoryRegistrationArn)
  when is_map(Client) ->
    list_service_principal_names(Client, DirectoryRegistrationArn, #{}, #{}).

list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, []).

list_service_principal_names(Client, DirectoryRegistrationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/directoryRegistrations/", aws_util:encode_uri(DirectoryRegistrationArn), "/servicePrincipalNames"],
    SuccessStatusCode = 200,
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

%% @doc Lists the tags, if any, that are associated with your resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists group access control entries you created.
list_template_group_access_control_entries(Client, TemplateArn)
  when is_map(Client) ->
    list_template_group_access_control_entries(Client, TemplateArn, #{}, #{}).

list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap, []).

list_template_group_access_control_entries(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries"],
    SuccessStatusCode = 200,
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

%% @doc Lists the templates, if any, that are associated with a connector.
list_templates(Client, ConnectorArn)
  when is_map(Client) ->
    list_templates(Client, ConnectorArn, #{}, #{}).

list_templates(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, ConnectorArn, QueryMap, HeadersMap, []).

list_templates(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"ConnectorArn">>, ConnectorArn},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds one or more tags to your resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes one or more tags from your resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Update template configuration to define the information included in
%% certificates.
update_template(Client, TemplateArn, Input) ->
    update_template(Client, TemplateArn, Input, []).
update_template(Client, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Update a group access control entry you created using
%% CreateTemplateGroupAccessControlEntry.
update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input) ->
    update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input, []).
update_template_group_access_control_entry(Client, GroupSecurityIdentifier, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/templates/", aws_util:encode_uri(TemplateArn), "/accessControlEntries/", aws_util:encode_uri(GroupSecurityIdentifier), ""],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"pca-connector-ad">>},
    Host = build_host(<<"pca-connector-ad">>, Client1),
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
