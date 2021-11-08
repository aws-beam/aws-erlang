%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc License Manager makes it easier to manage licenses from software
%% vendors across multiple Amazon Web Services accounts and on-premises
%% servers.
-module(aws_license_manager).

-export([accept_grant/2,
         accept_grant/3,
         check_in_license/2,
         check_in_license/3,
         checkout_borrow_license/2,
         checkout_borrow_license/3,
         checkout_license/2,
         checkout_license/3,
         create_grant/2,
         create_grant/3,
         create_grant_version/2,
         create_grant_version/3,
         create_license/2,
         create_license/3,
         create_license_configuration/2,
         create_license_configuration/3,
         create_license_conversion_task_for_resource/2,
         create_license_conversion_task_for_resource/3,
         create_license_manager_report_generator/2,
         create_license_manager_report_generator/3,
         create_license_version/2,
         create_license_version/3,
         create_token/2,
         create_token/3,
         delete_grant/2,
         delete_grant/3,
         delete_license/2,
         delete_license/3,
         delete_license_configuration/2,
         delete_license_configuration/3,
         delete_license_manager_report_generator/2,
         delete_license_manager_report_generator/3,
         delete_token/2,
         delete_token/3,
         extend_license_consumption/2,
         extend_license_consumption/3,
         get_access_token/2,
         get_access_token/3,
         get_grant/2,
         get_grant/3,
         get_license/2,
         get_license/3,
         get_license_configuration/2,
         get_license_configuration/3,
         get_license_conversion_task/2,
         get_license_conversion_task/3,
         get_license_manager_report_generator/2,
         get_license_manager_report_generator/3,
         get_license_usage/2,
         get_license_usage/3,
         get_service_settings/2,
         get_service_settings/3,
         list_associations_for_license_configuration/2,
         list_associations_for_license_configuration/3,
         list_distributed_grants/2,
         list_distributed_grants/3,
         list_failures_for_license_configuration_operations/2,
         list_failures_for_license_configuration_operations/3,
         list_license_configurations/2,
         list_license_configurations/3,
         list_license_conversion_tasks/2,
         list_license_conversion_tasks/3,
         list_license_manager_report_generators/2,
         list_license_manager_report_generators/3,
         list_license_specifications_for_resource/2,
         list_license_specifications_for_resource/3,
         list_license_versions/2,
         list_license_versions/3,
         list_licenses/2,
         list_licenses/3,
         list_received_grants/2,
         list_received_grants/3,
         list_received_licenses/2,
         list_received_licenses/3,
         list_resource_inventory/2,
         list_resource_inventory/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tokens/2,
         list_tokens/3,
         list_usage_for_license_configuration/2,
         list_usage_for_license_configuration/3,
         reject_grant/2,
         reject_grant/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_license_configuration/2,
         update_license_configuration/3,
         update_license_manager_report_generator/2,
         update_license_manager_report_generator/3,
         update_license_specifications_for_resource/2,
         update_license_specifications_for_resource/3,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the specified grant.
accept_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_grant(Client, Input, []).
accept_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptGrant">>, Input, Options).

%% @doc Checks in the specified license.
%%
%% Check in a license when it is no longer in use.
check_in_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_in_license(Client, Input, []).
check_in_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckInLicense">>, Input, Options).

%% @doc Checks out the specified license for offline use.
checkout_borrow_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    checkout_borrow_license(Client, Input, []).
checkout_borrow_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckoutBorrowLicense">>, Input, Options).

%% @doc Checks out the specified license.
checkout_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    checkout_license(Client, Input, []).
checkout_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckoutLicense">>, Input, Options).

%% @doc Creates a grant for the specified license.
%%
%% A grant shares the use of license entitlements with specific Amazon Web
%% Services accounts.
create_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant(Client, Input, []).
create_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrant">>, Input, Options).

%% @doc Creates a new version of the specified grant.
create_grant_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant_version(Client, Input, []).
create_grant_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrantVersion">>, Input, Options).

%% @doc Creates a license.
create_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license(Client, Input, []).
create_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicense">>, Input, Options).

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

%% @doc Creates a new license conversion task.
create_license_conversion_task_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_conversion_task_for_resource(Client, Input, []).
create_license_conversion_task_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseConversionTaskForResource">>, Input, Options).

%% @doc Creates a report generator.
create_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_manager_report_generator(Client, Input, []).
create_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseManagerReportGenerator">>, Input, Options).

%% @doc Creates a new version of the specified license.
create_license_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_version(Client, Input, []).
create_license_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseVersion">>, Input, Options).

%% @doc Creates a long-lived token.
%%
%% A refresh token is a JWT token used to get an access token. With an access
%% token, you can call AssumeRoleWithWebIdentity to get role credentials that
%% you can use to call License Manager to manage the specified license.
create_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_token(Client, Input, []).
create_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateToken">>, Input, Options).

%% @doc Deletes the specified grant.
delete_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_grant(Client, Input, []).
delete_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGrant">>, Input, Options).

%% @doc Deletes the specified license.
delete_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license(Client, Input, []).
delete_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicense">>, Input, Options).

%% @doc Deletes the specified license configuration.
%%
%% You cannot delete a license configuration that is in use.
delete_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license_configuration(Client, Input, []).
delete_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicenseConfiguration">>, Input, Options).

%% @doc Deletes the specified report generator.
%%
%% This action deletes the report generator, which stops it from generating
%% future reports. The action cannot be reversed. It has no effect on the
%% previous reports from this generator.
delete_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license_manager_report_generator(Client, Input, []).
delete_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicenseManagerReportGenerator">>, Input, Options).

%% @doc Deletes the specified token.
%%
%% Must be called in the license home Region.
delete_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_token(Client, Input, []).
delete_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteToken">>, Input, Options).

%% @doc Extends the expiration date for license consumption.
extend_license_consumption(Client, Input)
  when is_map(Client), is_map(Input) ->
    extend_license_consumption(Client, Input, []).
extend_license_consumption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExtendLicenseConsumption">>, Input, Options).

%% @doc Gets a temporary access token to use with AssumeRoleWithWebIdentity.
%%
%% Access tokens are valid for one hour.
get_access_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_token(Client, Input, []).
get_access_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessToken">>, Input, Options).

%% @doc Gets detailed information about the specified grant.
get_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_grant(Client, Input, []).
get_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGrant">>, Input, Options).

%% @doc Gets detailed information about the specified license.
get_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license(Client, Input, []).
get_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicense">>, Input, Options).

%% @doc Gets detailed information about the specified license configuration.
get_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_configuration(Client, Input, []).
get_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseConfiguration">>, Input, Options).

%% @doc Gets information about the specified license type conversion task.
get_license_conversion_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_conversion_task(Client, Input, []).
get_license_conversion_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseConversionTask">>, Input, Options).

%% @doc Gets information about the specified report generator.
get_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_manager_report_generator(Client, Input, []).
get_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseManagerReportGenerator">>, Input, Options).

%% @doc Gets detailed information about the usage of the specified license.
get_license_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_usage(Client, Input, []).
get_license_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseUsage">>, Input, Options).

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

%% @doc Lists the grants distributed for the specified license.
list_distributed_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_distributed_grants(Client, Input, []).
list_distributed_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDistributedGrants">>, Input, Options).

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

%% @doc Lists the license type conversion tasks for your account.
list_license_conversion_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_conversion_tasks(Client, Input, []).
list_license_conversion_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseConversionTasks">>, Input, Options).

%% @doc Lists the report generators for your account.
list_license_manager_report_generators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_manager_report_generators(Client, Input, []).
list_license_manager_report_generators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseManagerReportGenerators">>, Input, Options).

%% @doc Describes the license configurations for the specified resource.
list_license_specifications_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_specifications_for_resource(Client, Input, []).
list_license_specifications_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseSpecificationsForResource">>, Input, Options).

%% @doc Lists all versions of the specified license.
list_license_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_versions(Client, Input, []).
list_license_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseVersions">>, Input, Options).

%% @doc Lists the licenses for your account.
list_licenses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_licenses(Client, Input, []).
list_licenses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenses">>, Input, Options).

%% @doc Lists grants that are received but not accepted.
list_received_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_grants(Client, Input, []).
list_received_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedGrants">>, Input, Options).

%% @doc Lists received licenses.
list_received_licenses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_licenses(Client, Input, []).
list_received_licenses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedLicenses">>, Input, Options).

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

%% @doc Lists your tokens.
list_tokens(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tokens(Client, Input, []).
list_tokens(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTokens">>, Input, Options).

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

%% @doc Rejects the specified grant.
reject_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_grant(Client, Input, []).
reject_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectGrant">>, Input, Options).

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

%% @doc Updates a report generator.
%%
%% After you make changes to a report generator, it starts generating new
%% reports within 60 minutes of being updated.
update_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_manager_report_generator(Client, Input, []).
update_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseManagerReportGenerator">>, Input, Options).

%% @doc Adds or removes the specified license configurations for the
%% specified Amazon Web Services resource.
%%
%% You can update the license specifications of AMIs, instances, and hosts.
%% You cannot update the license specifications for launch templates and
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
