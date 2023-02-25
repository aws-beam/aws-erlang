%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Serverless API to create, configure, and
%% manage OpenSearch Serverless collections and security policies.
%%
%% OpenSearch Serverless is an on-demand, pre-provisioned serverless
%% configuration for Amazon OpenSearch Service. OpenSearch Serverless removes
%% the operational complexities of provisioning, configuring, and tuning your
%% OpenSearch clusters. It enables you to easily search and analyze petabytes
%% of data without having to worry about the underlying infrastructure and
%% data management.
%%
%% To learn more about OpenSearch Serverless, see What is Amazon OpenSearch
%% Serverless?
-module(aws_opensearchserverless).

-export([batch_get_collection/2,
         batch_get_collection/3,
         batch_get_vpc_endpoint/2,
         batch_get_vpc_endpoint/3,
         create_access_policy/2,
         create_access_policy/3,
         create_collection/2,
         create_collection/3,
         create_security_config/2,
         create_security_config/3,
         create_security_policy/2,
         create_security_policy/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         delete_access_policy/2,
         delete_access_policy/3,
         delete_collection/2,
         delete_collection/3,
         delete_security_config/2,
         delete_security_config/3,
         delete_security_policy/2,
         delete_security_policy/3,
         delete_vpc_endpoint/2,
         delete_vpc_endpoint/3,
         get_access_policy/2,
         get_access_policy/3,
         get_account_settings/2,
         get_account_settings/3,
         get_policies_stats/2,
         get_policies_stats/3,
         get_security_config/2,
         get_security_config/3,
         get_security_policy/2,
         get_security_policy/3,
         list_access_policies/2,
         list_access_policies/3,
         list_collections/2,
         list_collections/3,
         list_security_configs/2,
         list_security_configs/3,
         list_security_policies/2,
         list_security_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vpc_endpoints/2,
         list_vpc_endpoints/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_access_policy/2,
         update_access_policy/3,
         update_account_settings/2,
         update_account_settings/3,
         update_collection/2,
         update_collection/3,
         update_security_config/2,
         update_security_config/3,
         update_security_policy/2,
         update_security_policy/3,
         update_vpc_endpoint/2,
         update_vpc_endpoint/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns attributes for one or more collections, including the
%% collection endpoint and the OpenSearch Dashboards endpoint.
%%
%% For more information, see Creating and managing Amazon OpenSearch
%% Serverless collections.
batch_get_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_collection(Client, Input, []).
batch_get_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetCollection">>, Input, Options).

%% @doc Returns attributes for one or more VPC endpoints associated with the
%% current account.
%%
%% For more information, see Access Amazon OpenSearch Serverless using an
%% interface endpoint.
batch_get_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_vpc_endpoint(Client, Input, []).
batch_get_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetVpcEndpoint">>, Input, Options).

%% @doc Creates a data access policy for OpenSearch Serverless.
%%
%% Access policies limit access to collections and the resources within them,
%% and allow a user to access that data irrespective of the access mechanism
%% or network source. For more information, see Data access control for
%% Amazon OpenSearch Serverless.
create_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_policy(Client, Input, []).
create_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessPolicy">>, Input, Options).

%% @doc Creates a new OpenSearch Serverless collection.
%%
%% For more information, see Creating and managing Amazon OpenSearch
%% Serverless collections.
create_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_collection(Client, Input, []).
create_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCollection">>, Input, Options).

%% @doc Specifies a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML authentication for Amazon OpenSearch
%% Serverless.
create_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_config(Client, Input, []).
create_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfig">>, Input, Options).

%% @doc Creates a security policy to be used by one or more OpenSearch
%% Serverless collections.
%%
%% Security policies provide access to a collection and its OpenSearch
%% Dashboards endpoint from public networks or specific VPC endpoints. They
%% also allow you to secure a collection with a KMS encryption key. For more
%% information, see Network access for Amazon OpenSearch Serverless and
%% Encryption at rest for Amazon OpenSearch Serverless.
create_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_policy(Client, Input, []).
create_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityPolicy">>, Input, Options).

%% @doc Creates an OpenSearch Serverless-managed interface VPC endpoint.
%%
%% For more information, see Access Amazon OpenSearch Serverless using an
%% interface endpoint.
create_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint(Client, Input, []).
create_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpoint">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless access policy.
%%
%% For more information, see Data access control for Amazon OpenSearch
%% Serverless.
delete_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_policy(Client, Input, []).
delete_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessPolicy">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless collection.
%%
%% For more information, see Creating and managing Amazon OpenSearch
%% Serverless collections.
delete_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_collection(Client, Input, []).
delete_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCollection">>, Input, Options).

%% @doc Deletes a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML authentication for Amazon OpenSearch
%% Serverless.
delete_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_config(Client, Input, []).
delete_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfig">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless security policy.
delete_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_policy(Client, Input, []).
delete_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityPolicy">>, Input, Options).

%% @doc Deletes an OpenSearch Serverless-managed interface endpoint.
%%
%% For more information, see Access Amazon OpenSearch Serverless using an
%% interface endpoint.
delete_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoint(Client, Input, []).
delete_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpoint">>, Input, Options).

%% @doc Returns an OpenSearch Serverless access policy.
%%
%% For more information, see Data access control for Amazon OpenSearch
%% Serverless.
get_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_policy(Client, Input, []).
get_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessPolicy">>, Input, Options).

%% @doc Returns account-level settings related to OpenSearch Serverless.
get_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_settings(Client, Input, []).
get_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSettings">>, Input, Options).

%% @doc Returns statistical information about your OpenSearch Serverless
%% access policies, security configurations, and security policies.
get_policies_stats(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policies_stats(Client, Input, []).
get_policies_stats(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPoliciesStats">>, Input, Options).

%% @doc Returns information about an OpenSearch Serverless security
%% configuration.
%%
%% For more information, see SAML authentication for Amazon OpenSearch
%% Serverless.
get_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_config(Client, Input, []).
get_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityConfig">>, Input, Options).

%% @doc Returns information about a configured OpenSearch Serverless security
%% policy.
%%
%% For more information, see Network access for Amazon OpenSearch Serverless
%% and Encryption at rest for Amazon OpenSearch Serverless.
get_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_policy(Client, Input, []).
get_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityPolicy">>, Input, Options).

%% @doc Returns information about a list of OpenSearch Serverless access
%% policies.
list_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_policies(Client, Input, []).
list_access_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessPolicies">>, Input, Options).

%% @doc Lists all OpenSearch Serverless collections.
%%
%% For more information, see Creating and managing Amazon OpenSearch
%% Serverless collections.
%%
%% Make sure to include an empty request body {} if you don't include any
%% collection filters in the request.
list_collections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_collections(Client, Input, []).
list_collections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCollections">>, Input, Options).

%% @doc Returns information about configured OpenSearch Serverless security
%% configurations.
%%
%% For more information, see SAML authentication for Amazon OpenSearch
%% Serverless.
list_security_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_configs(Client, Input, []).
list_security_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityConfigs">>, Input, Options).

%% @doc Returns information about configured OpenSearch Serverless security
%% policies.
list_security_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_policies(Client, Input, []).
list_security_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityPolicies">>, Input, Options).

%% @doc Returns the tags for an OpenSearch Serverless resource.
%%
%% For more information, see Tagging Amazon OpenSearch Serverless
%% collections.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns the OpenSearch Serverless-managed interface VPC endpoints
%% associated with the current account.
%%
%% For more information, see Access Amazon OpenSearch Serverless using an
%% interface endpoint.
list_vpc_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_endpoints(Client, Input, []).
list_vpc_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcEndpoints">>, Input, Options).

%% @doc Associates tags with an OpenSearch Serverless resource.
%%
%% For more information, see Tagging Amazon OpenSearch Serverless
%% collections.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag or set of tags from an OpenSearch Serverless resource.
%%
%% For more information, see Tagging Amazon OpenSearch Serverless
%% collections.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an OpenSearch Serverless access policy.
%%
%% For more information, see Data access control for Amazon OpenSearch
%% Serverless.
update_access_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_policy(Client, Input, []).
update_access_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessPolicy">>, Input, Options).

%% @doc Update the OpenSearch Serverless settings for the current Amazon Web
%% Services account.
%%
%% For more information, see Autoscaling.
update_account_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_settings(Client, Input, []).
update_account_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSettings">>, Input, Options).

%% @doc Updates an OpenSearch Serverless collection.
update_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_collection(Client, Input, []).
update_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCollection">>, Input, Options).

%% @doc Updates a security configuration for OpenSearch Serverless.
%%
%% For more information, see SAML authentication for Amazon OpenSearch
%% Serverless.
update_security_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_config(Client, Input, []).
update_security_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityConfig">>, Input, Options).

%% @doc Updates an OpenSearch Serverless security policy.
%%
%% For more information, see Network access for Amazon OpenSearch Serverless
%% and Encryption at rest for Amazon OpenSearch Serverless.
update_security_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_policy(Client, Input, []).
update_security_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityPolicy">>, Input, Options).

%% @doc Updates an OpenSearch Serverless-managed interface endpoint.
%%
%% For more information, see Access Amazon OpenSearch Serverless using an
%% interface endpoint.
update_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vpc_endpoint(Client, Input, []).
update_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVpcEndpoint">>, Input, Options).

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
    Client1 = Client#{service => <<"aoss">>},
    Host = build_host(<<"aoss">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"OpenSearchServerless.", Action/binary>>}
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
