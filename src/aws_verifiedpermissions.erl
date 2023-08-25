%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Verified Permissions is a permissions management service from
%% Amazon Web Services.
%%
%% You can use Verified Permissions to manage permissions for your
%% application, and authorize user access based on those permissions. Using
%% Verified Permissions, application developers can grant access based on
%% information about the users, resources, and requested actions. You can
%% also evaluate additional information like group membership, attributes of
%% the resources, and session context, such as time of request and IP
%% addresses. Verified Permissions manages these permissions by letting you
%% create and store authorization policies for your applications, such as
%% consumer-facing web sites and enterprise business systems.
%%
%% Verified Permissions uses Cedar as the policy language to express your
%% permission requirements. Cedar supports both role-based access control
%% (RBAC) and attribute-based access control (ABAC) authorization models.
%%
%% For more information about configuring, administering, and using Amazon
%% Verified Permissions in your applications, see the Amazon Verified
%% Permissions User Guide.
%%
%% For more information about the Cedar policy language, see the Cedar Policy
%% Language Guide.
%%
%% When you write Cedar policies that reference principals, resources and
%% actions, you can define the unique identifiers used for each of those
%% elements. We strongly recommend that you follow these best practices:
%%
%% Use values like universally unique identifiers (UUIDs) for all principal
%% and resource identifiers.
%%
%% For example, if user `jane' leaves the company, and you later let
%% someone else use the name `jane', then that new user automatically
%% gets access to everything granted by policies that still reference
%% `User::&quot;jane&quot;'. Cedar can’t distinguish between the new user
%% and the old. This applies to both principal and resource identifiers.
%% Always use identifiers that are guaranteed unique and never reused to
%% ensure that you don’t unintentionally grant access because of the presence
%% of an old identifier in a policy.
%%
%% Where you use a UUID for an entity, we recommend that you follow it with
%% the // comment specifier and the ‘friendly’ name of your entity. This
%% helps to make your policies easier to understand. For example: principal
%% == User::&quot;a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111&quot;, // alice
%%
%% Do not include personally identifying, confidential, or sensitive
%% information as part of the unique identifier for your principals or
%% resources. These identifiers are included in log entries shared in
%% CloudTrail trails.
%%
%% Several operations return structures that appear similar, but have
%% different purposes. As new functionality is added to the product, the
%% structure used in a parameter of one operation might need to change in a
%% way that wouldn't make sense for the same parameter in a different
%% operation. To help you understand the purpose of each, the following
%% naming convention is used for the structures:
%%
%% <ul> <li> Parameter type structures that end in `Detail' are used in
%% `Get' operations.
%%
%% </li> <li> Parameter type structures that end in `Item' are used in
%% `List' operations.
%%
%% </li> <li> Parameter type structures that use neither suffix are used in
%% the mutating (create and update) operations.
%%
%% </li> </ul>
-module(aws_verifiedpermissions).

-export([create_identity_source/2,
         create_identity_source/3,
         create_policy/2,
         create_policy/3,
         create_policy_store/2,
         create_policy_store/3,
         create_policy_template/2,
         create_policy_template/3,
         delete_identity_source/2,
         delete_identity_source/3,
         delete_policy/2,
         delete_policy/3,
         delete_policy_store/2,
         delete_policy_store/3,
         delete_policy_template/2,
         delete_policy_template/3,
         get_identity_source/2,
         get_identity_source/3,
         get_policy/2,
         get_policy/3,
         get_policy_store/2,
         get_policy_store/3,
         get_policy_template/2,
         get_policy_template/3,
         get_schema/2,
         get_schema/3,
         is_authorized/2,
         is_authorized/3,
         is_authorized_with_token/2,
         is_authorized_with_token/3,
         list_identity_sources/2,
         list_identity_sources/3,
         list_policies/2,
         list_policies/3,
         list_policy_stores/2,
         list_policy_stores/3,
         list_policy_templates/2,
         list_policy_templates/3,
         put_schema/2,
         put_schema/3,
         update_identity_source/2,
         update_identity_source/3,
         update_policy/2,
         update_policy/3,
         update_policy_store/2,
         update_policy_store/3,
         update_policy_template/2,
         update_policy_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a reference to an Amazon Cognito user pool as an external
%% identity provider (IdP).
%%
%% After you create an identity source, you can use the identities provided
%% by the IdP as proxies for the principal in authorization queries that use
%% the IsAuthorizedWithToken operation. These identities take the form of
%% tokens that contain claims about the user, such as IDs, attributes and
%% group memberships. Amazon Cognito provides both identity tokens and access
%% tokens, and Verified Permissions can use either or both. Any combination
%% of identity and access tokens results in the same Cedar principal.
%% Verified Permissions automatically translates the information about the
%% identities into the standard Cedar attributes that can be evaluated by
%% your policies. Because the Amazon Cognito identity and access tokens can
%% contain different information, the tokens you choose to use determine
%% which principal attributes are available to access when evaluating Cedar
%% policies.
%%
%% If you delete a Amazon Cognito user pool or user, tokens from that deleted
%% pool or that deleted user continue to be usable until they expire.
%%
%% To reference a user from this identity source in your Cedar policies, use
%% the following syntax.
%%
%% IdentityType::&quot;&lt;CognitoUserPoolIdentifier&gt;|&lt;CognitoClientId&gt;
%%
%% Where `IdentityType' is the string that you provide to the
%% `PrincipalEntityType' parameter for this operation. The
%% `CognitoUserPoolId' and `CognitoClientId' are defined by the
%% Amazon Cognito user pool.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
create_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_source(Client, Input, []).
create_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentitySource">>, Input, Options).

%% @doc Creates a Cedar policy and saves it in the specified policy store.
%%
%% You can create either a static policy or a policy linked to a policy
%% template.
%%
%% <ul> <li> To create a static policy, provide the Cedar policy text in the
%% `StaticPolicy' section of the `PolicyDefinition'.
%%
%% </li> <li> To create a policy that is dynamically linked to a policy
%% template, specify the policy template ID and the principal and resource to
%% associate with this policy in the `templateLinked' section of the
%% `PolicyDefinition'. If the policy template is ever updated, any
%% policies linked to the policy template automatically use the updated
%% template.
%%
%% </li> </ul> Creating a policy causes it to be validated against the schema
%% in the policy store. If the policy doesn't pass validation, the
%% operation fails and the policy isn't stored.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Creates a policy store.
%%
%% A policy store is a container for policy resources.
%%
%% Although Cedar supports multiple namespaces, Verified Permissions
%% currently supports only one namespace per policy store.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
create_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_store(Client, Input, []).
create_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyStore">>, Input, Options).

%% @doc Creates a policy template.
%%
%% A template can use placeholders for the principal and resource. A template
%% must be instantiated into a policy by associating it with specific
%% principals and resources to use for the placeholders. That instantiated
%% policy can then be considered in authorization decisions. The instantiated
%% policy works identically to any other policy, except that it is
%% dynamically linked to the template. If the template changes, then any
%% policies that are linked to that template are immediately updated as well.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
create_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_template(Client, Input, []).
create_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyTemplate">>, Input, Options).

%% @doc Deletes an identity source that references an identity provider (IdP)
%% such as Amazon Cognito.
%%
%% After you delete the identity source, you can no longer use tokens for
%% identities from that identity source to represent principals in
%% authorization queries made using IsAuthorizedWithToken. operations.
delete_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_source(Client, Input, []).
delete_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentitySource">>, Input, Options).

%% @doc Deletes the specified policy from the policy store.
%%
%% This operation is idempotent; if you specify a policy that doesn't
%% exist, the request response returns a successful `HTTP 200' status
%% code.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified policy store.
%%
%% This operation is idempotent. If you specify a policy store that does not
%% exist, the request response will still return a successful HTTP 200 status
%% code.
delete_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_store(Client, Input, []).
delete_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyStore">>, Input, Options).

%% @doc Deletes the specified policy template from the policy store.
%%
%% This operation also deletes any policies that were created from the
%% specified policy template. Those policies are immediately removed from all
%% future API responses, and are asynchronously deleted from the policy
%% store.
delete_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_template(Client, Input, []).
delete_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyTemplate">>, Input, Options).

%% @doc Retrieves the details about the specified identity source.
get_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_source(Client, Input, []).
get_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentitySource">>, Input, Options).

%% @doc Retrieves information about the specified policy.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Retrieves details about a policy store.
get_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_store(Client, Input, []).
get_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyStore">>, Input, Options).

%% @doc Retrieve the details for the specified policy template in the
%% specified policy store.
get_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_template(Client, Input, []).
get_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyTemplate">>, Input, Options).

%% @doc Retrieve the details for the specified schema in the specified policy
%% store.
get_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema(Client, Input, []).
get_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchema">>, Input, Options).

%% @doc Makes an authorization decision about a service request described in
%% the parameters.
%%
%% The information in the parameters can also define additional context that
%% Verified Permissions can include in the evaluation. The request is
%% evaluated against all matching policies in the specified policy store. The
%% result of the decision is either `Allow' or `Deny', along with a
%% list of the policies that resulted in the decision.
is_authorized(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_authorized(Client, Input, []).
is_authorized(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsAuthorized">>, Input, Options).

%% @doc Makes an authorization decision about a service request described in
%% the parameters.
%%
%% The principal in this request comes from an external identity source in
%% the form of an identity token formatted as a JSON web token (JWT). The
%% information in the parameters can also define additional context that
%% Verified Permissions can include in the evaluation. The request is
%% evaluated against all matching policies in the specified policy store. The
%% result of the decision is either `Allow' or `Deny', along with a
%% list of the policies that resulted in the decision.
%%
%% If you specify the `identityToken' parameter, then this operation
%% derives the principal from that token. You must not also include that
%% principal in the `entities' parameter or the operation fails and
%% reports a conflict between the two entity sources.
%%
%% If you provide only an `accessToken', then you can include the entity
%% as part of the `entities' parameter to provide additional attributes.
%%
%% At this time, Verified Permissions accepts tokens from only Amazon
%% Cognito.
%%
%% Verified Permissions validates each token that is specified in a request
%% by checking its expiration date and its signature.
%%
%% If you delete a Amazon Cognito user pool or user, tokens from that deleted
%% pool or that deleted user continue to be usable until they expire.
is_authorized_with_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_authorized_with_token(Client, Input, []).
is_authorized_with_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsAuthorizedWithToken">>, Input, Options).

%% @doc Returns a paginated list of all of the identity sources defined in
%% the specified policy store.
list_identity_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_sources(Client, Input, []).
list_identity_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentitySources">>, Input, Options).

%% @doc Returns a paginated list of all policies stored in the specified
%% policy store.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Returns a paginated list of all policy stores in the calling Amazon
%% Web Services account.
list_policy_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_stores(Client, Input, []).
list_policy_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyStores">>, Input, Options).

%% @doc Returns a paginated list of all policy templates in the specified
%% policy store.
list_policy_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_templates(Client, Input, []).
list_policy_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyTemplates">>, Input, Options).

%% @doc Creates or updates the policy schema in the specified policy store.
%%
%% The schema is used to validate any Cedar policies and policy templates
%% submitted to the policy store. Any changes to the schema validate only
%% policies and templates submitted after the schema change. Existing
%% policies and templates are not re-evaluated against the changed schema. If
%% you later update a policy, then it is evaluated against the new schema at
%% that time.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
put_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_schema(Client, Input, []).
put_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSchema">>, Input, Options).

%% @doc Updates the specified identity source to use a new identity provider
%% (IdP) source, or to change the mapping of identities from the IdP to a
%% different principal entity type.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
update_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_source(Client, Input, []).
update_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIdentitySource">>, Input, Options).

%% @doc Modifies a Cedar static policy in the specified policy store.
%%
%% You can change only certain elements of the UpdatePolicyDefinition
%% parameter. You can directly update only static policies. To change a
%% template-linked policy, you must update the template instead, using
%% UpdatePolicyTemplate.
%%
%% If policy validation is enabled in the policy store, then updating a
%% static policy causes Verified Permissions to validate the policy against
%% the schema in the policy store. If the updated static policy doesn't
%% pass validation, the operation fails and the update isn't stored.
%%
%% When you edit a static policy, You can change only certain elements of a
%% static policy:
%%
%% The action referenced by the policy.
%%
%% A condition clause, such as when and unless.
%%
%% You can't change these elements of a static policy:
%%
%% Changing a policy from a static policy to a template-linked policy.
%%
%% Changing the effect of a static policy from permit or forbid.
%%
%% The principal referenced by a static policy.
%%
%% The resource referenced by a static policy.
%%
%% To update a template-linked policy, you must update the template instead.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
update_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy(Client, Input, []).
update_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicy">>, Input, Options).

%% @doc Modifies the validation setting for a policy store.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
update_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy_store(Client, Input, []).
update_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicyStore">>, Input, Options).

%% @doc Updates the specified policy template.
%%
%% You can update only the description and the some elements of the
%% policyBody.
%%
%% Changes you make to the policy template content are immediately reflected
%% in authorization decisions that involve all template-linked policies
%% instantiated from this template.
%%
%% Verified Permissions is eventually consistent . It can take a few seconds
%% for a new or changed element to be propagate through the service and be
%% visible in the results of other Verified Permissions operations.
update_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy_template(Client, Input, []).
update_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicyTemplate">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"verifiedpermissions">>},
    Host = build_host(<<"verifiedpermissions">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"VerifiedPermissions.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
