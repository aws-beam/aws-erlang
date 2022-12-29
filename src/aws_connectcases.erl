%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Connect Cases API Reference.
%%
%% This guide provides information about the Amazon Connect Cases API, which
%% you can use to create, update, get, and list Cases domains, fields, field
%% options, layouts, templates, cases, related items, and tags.
%%
%% <p>For more information about Amazon Connect Cases, see <a
%% href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Amazon
%% Connect Cases</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
-module(aws_connectcases).

-export([batch_get_field/3,
         batch_get_field/4,
         batch_put_field_options/4,
         batch_put_field_options/5,
         create_case/3,
         create_case/4,
         create_domain/2,
         create_domain/3,
         create_field/3,
         create_field/4,
         create_layout/3,
         create_layout/4,
         create_related_item/4,
         create_related_item/5,
         create_template/3,
         create_template/4,
         get_case/4,
         get_case/5,
         get_case_event_configuration/3,
         get_case_event_configuration/4,
         get_domain/3,
         get_domain/4,
         get_layout/4,
         get_layout/5,
         get_template/4,
         get_template/5,
         list_cases_for_contact/3,
         list_cases_for_contact/4,
         list_domains/2,
         list_domains/3,
         list_field_options/4,
         list_field_options/5,
         list_fields/3,
         list_fields/4,
         list_layouts/3,
         list_layouts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_templates/3,
         list_templates/4,
         put_case_event_configuration/3,
         put_case_event_configuration/4,
         search_cases/3,
         search_cases/4,
         search_related_items/4,
         search_related_items/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_case/4,
         update_case/5,
         update_field/4,
         update_field/5,
         update_layout/4,
         update_layout/5,
         update_template/4,
         update_template/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the description for the list of fields in the request
%% parameters.
batch_get_field(Client, DomainId, Input) ->
    batch_get_field(Client, DomainId, Input, []).
batch_get_field(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields-batch"],
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

%% @doc Creates and updates a set of field options for a single select field
%% in a Cases domain.
batch_put_field_options(Client, DomainId, FieldId, Input) ->
    batch_put_field_options(Client, DomainId, FieldId, Input, []).
batch_put_field_options(Client, DomainId, FieldId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), "/options"],
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

%% @doc Creates a case in the specified Cases domain.
%%
%% Case system and custom fields are taken as an array id/value pairs with a
%% declared data types.
%%
%% `customer_id' is a required field when creating a case.
create_case(Client, DomainId, Input) ->
    create_case(Client, DomainId, Input, []).
create_case(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases"],
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

%% @doc Creates a domain, which is a container for all case data, such as
%% cases, fields, templates and layouts.
%%
%% Each Amazon Connect instance can be associated with only one Cases domain.
%%
%% This will not associate your connect instance to Cases domain. Instead,
%% use the Amazon Connect CreateIntegrationAssociation API.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domains"],
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

%% @doc Creates a field in the Cases domain.
%%
%% This field is used to define the case object model (that is, defines what
%% data can be captured on cases) in a Cases domain.
create_field(Client, DomainId, Input) ->
    create_field(Client, DomainId, Input, []).
create_field(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields"],
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

%% @doc Creates a layout in the Cases domain.
%%
%% Layouts define the following configuration in the top section and More
%% Info tab of the Cases user interface:
%%
%% <ul> <li> Fields to display to the users
%%
%% </li> <li> Field ordering
%%
%% </li> </ul> Title and Status fields cannot be part of layouts since they
%% are not configurable.
create_layout(Client, DomainId, Input) ->
    create_layout(Client, DomainId, Input, []).
create_layout(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts"],
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

%% @doc Creates a related item (comments, tasks, and contacts) and associates
%% it with a case.
%%
%% A Related Item is a resource that is associated with a case. It may or may
%% not have an external identifier linking it to an external resource (for
%% example, a `contactArn'). All Related Items have their own internal
%% identifier, the `relatedItemArn'. Examples of related items include
%% `comments' and `contacts'.
create_related_item(Client, CaseId, DomainId, Input) ->
    create_related_item(Client, CaseId, DomainId, Input, []).
create_related_item(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/related-items/"],
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

%% @doc Creates a template in the Cases domain.
%%
%% This template is used to define the case object model (that is, to define
%% what data can be captured on cases) in a Cases domain. A template must
%% have a unique name within a domain, and it must reference existing field
%% IDs and layout IDs. Additionally, multiple fields with same IDs are not
%% allowed within the same Template. A template can be either Active or
%% Inactive, as indicated by its status. Inactive templates cannot be used to
%% create cases.
create_template(Client, DomainId, Input) ->
    create_template(Client, DomainId, Input, []).
create_template(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates"],
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

%% @doc Returns information about a specific case if it exists.
get_case(Client, CaseId, DomainId, Input) ->
    get_case(Client, CaseId, DomainId, Input, []).
get_case(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), ""],
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

%% @doc Returns the case event publishing configuration.
get_case_event_configuration(Client, DomainId, Input) ->
    get_case_event_configuration(Client, DomainId, Input, []).
get_case_event_configuration(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-event-configuration"],
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

%% @doc Returns information about a specific domain if it exists.
get_domain(Client, DomainId, Input) ->
    get_domain(Client, DomainId, Input, []).
get_domain(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), ""],
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

%% @doc Returns the details for the requested layout.
get_layout(Client, DomainId, LayoutId, Input) ->
    get_layout(Client, DomainId, LayoutId, Input, []).
get_layout(Client, DomainId, LayoutId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts/", aws_util:encode_uri(LayoutId), ""],
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

%% @doc Returns the details for the requested template.
get_template(Client, DomainId, TemplateId, Input) ->
    get_template(Client, DomainId, TemplateId, Input, []).
get_template(Client, DomainId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc Lists cases for a given contact.
list_cases_for_contact(Client, DomainId, Input) ->
    list_cases_for_contact(Client, DomainId, Input, []).
list_cases_for_contact(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/list-cases-for-contact"],
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

%% @doc Lists all cases domains in the Amazon Web Services account.
%%
%% Each list item is a condensed summary object of the domain.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domains-list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all of the field options for a field identifier in the domain.
list_field_options(Client, DomainId, FieldId, Input) ->
    list_field_options(Client, DomainId, FieldId, Input, []).
list_field_options(Client, DomainId, FieldId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), "/options-list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"values">>, <<"values">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all fields in a Cases domain.
list_fields(Client, DomainId, Input) ->
    list_fields(Client, DomainId, Input, []).
list_fields(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields-list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all layouts in the given cases domain.
%%
%% Each list item is a condensed summary object of the layout.
list_layouts(Client, DomainId, Input) ->
    list_layouts(Client, DomainId, Input, []).
list_layouts(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts-list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the templates in a Cases domain.
%%
%% Each list item is a condensed summary object of the template.
list_templates(Client, DomainId, Input) ->
    list_templates(Client, DomainId, Input, []).
list_templates(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates-list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>},
                     {<<"status">>, <<"status">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc API for adding case event publishing configuration
put_case_event_configuration(Client, DomainId, Input) ->
    put_case_event_configuration(Client, DomainId, Input, []).
put_case_event_configuration(Client, DomainId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/case-event-configuration"],
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

%% @doc Searches for cases within their associated Cases domain.
%%
%% Search results are returned as a paginated list of abridged case
%% documents.
search_cases(Client, DomainId, Input) ->
    search_cases(Client, DomainId, Input, []).
search_cases(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases-search"],
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

%% @doc Searches for related items that are associated with a case.
%%
%% If no filters are provided, this returns all related items associated with
%% a case.
search_related_items(Client, CaseId, DomainId, Input) ->
    search_related_items(Client, CaseId, DomainId, Input, []).
search_related_items(Client, CaseId, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), "/related-items-search"],
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

%% @doc Adds tags to a resource.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Untags a resource.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the values of fields on a case.
%%
%% Fields to be updated are received as an array of id/value pairs identical
%% to the `CreateCase' input .
%%
%% If the action is successful, the service sends back an HTTP 200 response
%% with an empty HTTP body.
update_case(Client, CaseId, DomainId, Input) ->
    update_case(Client, CaseId, DomainId, Input, []).
update_case(Client, CaseId, DomainId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/cases/", aws_util:encode_uri(CaseId), ""],
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

%% @doc Updates the properties of an existing field.
update_field(Client, DomainId, FieldId, Input) ->
    update_field(Client, DomainId, FieldId, Input, []).
update_field(Client, DomainId, FieldId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/fields/", aws_util:encode_uri(FieldId), ""],
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

%% @doc Updates the attributes of an existing layout.
%%
%% If the action is successful, the service sends back an HTTP 200 response
%% with an empty HTTP body.
%%
%% A `ValidationException' is returned when you add non-existent `fieldIds'
%% to a layout.
%%
%% Title and Status fields cannot be part of layouts because they are not
%% configurable.
update_layout(Client, DomainId, LayoutId, Input) ->
    update_layout(Client, DomainId, LayoutId, Input, []).
update_layout(Client, DomainId, LayoutId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/layouts/", aws_util:encode_uri(LayoutId), ""],
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

%% @doc Updates the attributes of an existing template.
%%
%% The template attributes that can be modified include `name',
%% `description', `layoutConfiguration', `requiredFields', and `status'. At
%% least one of these attributes must not be null. If a null value is
%% provided for a given attribute, that attribute is ignored and its current
%% value is preserved.
update_template(Client, DomainId, TemplateId, Input) ->
    update_template(Client, DomainId, TemplateId, Input, []).
update_template(Client, DomainId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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
    Client1 = Client#{service => <<"cases">>},
    Host = build_host(<<"cases">>, Client1),
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
