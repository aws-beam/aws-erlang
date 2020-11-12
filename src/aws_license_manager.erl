%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS License Manager
%%
%% AWS License Manager makes it easier to manage licenses from software
%% vendors across multiple AWS accounts and on-premises servers.
-module(aws_license_manager).

-export([create_license_configuration/2,
         create_license_configuration/3,
         delete_license_configuration/2,
         delete_license_configuration/3,
         get_license_configuration/2,
         get_license_configuration/3,
         get_service_settings/2,
         get_service_settings/3,
         list_associations_for_license_configuration/2,
         list_associations_for_license_configuration/3,
         list_failures_for_license_configuration_operations/2,
         list_failures_for_license_configuration_operations/3,
         list_license_configurations/2,
         list_license_configurations/3,
         list_license_specifications_for_resource/2,
         list_license_specifications_for_resource/3,
         list_resource_inventory/2,
         list_resource_inventory/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_usage_for_license_configuration/2,
         list_usage_for_license_configuration/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_license_configuration/2,
         update_license_configuration/3,
         update_license_specifications_for_resource/2,
         update_license_specifications_for_resource/3,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a license configuration.
%%
%% A license configuration is an abstraction of a customer license agreement
%% that can be consumed and enforced by License Manager. Components include
%% specifications for the license type (licensing by instance, socket, CPU,
%% or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated
%% Host, or all of these), license affinity to host (how long a license must
%% be associated with a host), and the number of licenses purchased and used.
create_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_configuration(Client, Input, []).
create_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseConfiguration">>, Input, Options).

%% @doc Deletes the specified license configuration.
%%
%% You cannot delete a license configuration that is in use.
delete_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license_configuration(Client, Input, []).
delete_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicenseConfiguration">>, Input, Options).

%% @doc Gets detailed information about the specified license configuration.
get_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_configuration(Client, Input, []).
get_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseConfiguration">>, Input, Options).

%% @doc Gets the License Manager settings for the current Region.
get_service_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_settings(Client, Input, []).
get_service_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSettings">>, Input, Options).

%% @doc Lists the resource associations for the specified license
%% configuration.
%%
%% Resource associations need not consume licenses from a license
%% configuration. For example, an AMI or a stopped instance might not consume
%% a license (depending on the license rules).
list_associations_for_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations_for_license_configuration(Client, Input, []).
list_associations_for_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociationsForLicenseConfiguration">>, Input, Options).

%% @doc Lists the license configuration operations that failed.
list_failures_for_license_configuration_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_failures_for_license_configuration_operations(Client, Input, []).
list_failures_for_license_configuration_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFailuresForLicenseConfigurationOperations">>, Input, Options).

%% @doc Lists the license configurations for your account.
list_license_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_configurations(Client, Input, []).
list_license_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseConfigurations">>, Input, Options).

%% @doc Describes the license configurations for the specified resource.
list_license_specifications_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_specifications_for_resource(Client, Input, []).
list_license_specifications_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseSpecificationsForResource">>, Input, Options).

%% @doc Lists resources managed using Systems Manager inventory.
list_resource_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_inventory(Client, Input, []).
list_resource_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceInventory">>, Input, Options).

%% @doc Lists the tags for the specified license configuration.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists all license usage records for a license configuration,
%% displaying license consumption details by resource at a selected point in
%% time.
%%
%% Use this action to audit the current license consumption for any license
%% inventory and configuration.
list_usage_for_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_usage_for_license_configuration(Client, Input, []).
list_usage_for_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsageForLicenseConfiguration">>, Input, Options).

%% @doc Adds the specified tags to the specified license configuration.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tags from the specified license configuration.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the attributes of an existing license configuration.
update_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_configuration(Client, Input, []).
update_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseConfiguration">>, Input, Options).

%% @doc Adds or removes the specified license configurations for the
%% specified AWS resource.
%%
%% You can update the license specifications of AMIs, instances, and hosts.
%% You cannot update the license specifications for launch templates and AWS
%% CloudFormation templates, as they send license configurations to the
%% operation that creates the resource.
update_license_specifications_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_specifications_for_resource(Client, Input, []).
update_license_specifications_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseSpecificationsForResource">>, Input, Options).

%% @doc Updates License Manager settings for the current Region.
update_service_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_settings(Client, Input, []).
update_service_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSettings">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"license-manager">>},
    Host = build_host(<<"license-manager">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSLicenseManager.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
