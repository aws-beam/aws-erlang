%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkLink is a cloud-based service that provides secure access
%% to internal websites and web apps from iOS and Android phones.
%%
%% In a single step, your users, such as employees, can access internal
%% websites as efficiently as they access any other public website. They
%% enter a URL in their web browser, or choose a link to an internal website
%% in an email. Amazon WorkLink authenticates the user's access and securely
%% renders authorized internal web content in a secure rendering service in
%% the AWS cloud. Amazon WorkLink doesn't download or store any internal web
%% content on mobile devices.
-module(aws_worklink).

-export([associate_domain/2,
         associate_domain/3,
         associate_website_authorization_provider/2,
         associate_website_authorization_provider/3,
         associate_website_certificate_authority/2,
         associate_website_certificate_authority/3,
         create_fleet/2,
         create_fleet/3,
         delete_fleet/2,
         delete_fleet/3,
         describe_audit_stream_configuration/2,
         describe_audit_stream_configuration/3,
         describe_company_network_configuration/2,
         describe_company_network_configuration/3,
         describe_device/2,
         describe_device/3,
         describe_device_policy_configuration/2,
         describe_device_policy_configuration/3,
         describe_domain/2,
         describe_domain/3,
         describe_fleet_metadata/2,
         describe_fleet_metadata/3,
         describe_identity_provider_configuration/2,
         describe_identity_provider_configuration/3,
         describe_website_certificate_authority/2,
         describe_website_certificate_authority/3,
         disassociate_domain/2,
         disassociate_domain/3,
         disassociate_website_authorization_provider/2,
         disassociate_website_authorization_provider/3,
         disassociate_website_certificate_authority/2,
         disassociate_website_certificate_authority/3,
         list_devices/2,
         list_devices/3,
         list_domains/2,
         list_domains/3,
         list_fleets/2,
         list_fleets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_website_authorization_providers/2,
         list_website_authorization_providers/3,
         list_website_certificate_authorities/2,
         list_website_certificate_authorities/3,
         restore_domain_access/2,
         restore_domain_access/3,
         revoke_domain_access/2,
         revoke_domain_access/3,
         sign_out_user/2,
         sign_out_user/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_audit_stream_configuration/2,
         update_audit_stream_configuration/3,
         update_company_network_configuration/2,
         update_company_network_configuration/3,
         update_device_policy_configuration/2,
         update_device_policy_configuration/3,
         update_domain_metadata/2,
         update_domain_metadata/3,
         update_fleet_metadata/2,
         update_fleet_metadata/3,
         update_identity_provider_configuration/2,
         update_identity_provider_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Specifies a domain to be associated to Amazon WorkLink.
associate_domain(Client, Input) ->
    associate_domain(Client, Input, []).
associate_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateDomain"],
    SuccessStatusCode = undefined,
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

%% @doc Associates a website authorization provider with a specified fleet.
%%
%% This is used to authorize users against associated websites in the company
%% network.
associate_website_authorization_provider(Client, Input) ->
    associate_website_authorization_provider(Client, Input, []).
associate_website_authorization_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateWebsiteAuthorizationProvider"],
    SuccessStatusCode = undefined,
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

%% @doc Imports the root certificate of a certificate authority (CA) used to
%% obtain TLS certificates used by associated websites within the company
%% network.
associate_website_certificate_authority(Client, Input) ->
    associate_website_certificate_authority(Client, Input, []).
associate_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateWebsiteCertificateAuthority"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a fleet.
%%
%% A fleet consists of resources and the configuration that delivers
%% associated websites to authorized users who download and set up the Amazon
%% WorkLink app.
create_fleet(Client, Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createFleet"],
    SuccessStatusCode = undefined,
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

%% @doc Deletes a fleet.
%%
%% Prevents users from accessing previously associated websites.
delete_fleet(Client, Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteFleet"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the configuration for delivering audit streams to the
%% customer account.
describe_audit_stream_configuration(Client, Input) ->
    describe_audit_stream_configuration(Client, Input, []).
describe_audit_stream_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeAuditStreamConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the networking configuration to access the internal
%% websites associated with the specified fleet.
describe_company_network_configuration(Client, Input) ->
    describe_company_network_configuration(Client, Input, []).
describe_company_network_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeCompanyNetworkConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Provides information about a user's device.
describe_device(Client, Input) ->
    describe_device(Client, Input, []).
describe_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDevice"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the device policy configuration for the specified fleet.
describe_device_policy_configuration(Client, Input) ->
    describe_device_policy_configuration(Client, Input, []).
describe_device_policy_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDevicePolicyConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Provides information about the domain.
describe_domain(Client, Input) ->
    describe_domain(Client, Input, []).
describe_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDomain"],
    SuccessStatusCode = undefined,
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

%% @doc Provides basic information for the specified fleet, excluding
%% identity provider, networking, and device configuration details.
describe_fleet_metadata(Client, Input) ->
    describe_fleet_metadata(Client, Input, []).
describe_fleet_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeFleetMetadata"],
    SuccessStatusCode = undefined,
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

%% @doc Describes the identity provider configuration of the specified fleet.
describe_identity_provider_configuration(Client, Input) ->
    describe_identity_provider_configuration(Client, Input, []).
describe_identity_provider_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeIdentityProviderConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Provides information about the certificate authority.
describe_website_certificate_authority(Client, Input) ->
    describe_website_certificate_authority(Client, Input, []).
describe_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWebsiteCertificateAuthority"],
    SuccessStatusCode = undefined,
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

%% @doc Disassociates a domain from Amazon WorkLink.
%%
%% End users lose the ability to access the domain with Amazon WorkLink.
disassociate_domain(Client, Input) ->
    disassociate_domain(Client, Input, []).
disassociate_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateDomain"],
    SuccessStatusCode = undefined,
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

%% @doc Disassociates a website authorization provider from a specified
%% fleet.
%%
%% After the disassociation, users can't load any associated websites that
%% require this authorization provider.
disassociate_website_authorization_provider(Client, Input) ->
    disassociate_website_authorization_provider(Client, Input, []).
disassociate_website_authorization_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateWebsiteAuthorizationProvider"],
    SuccessStatusCode = undefined,
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

%% @doc Removes a certificate authority (CA).
disassociate_website_certificate_authority(Client, Input) ->
    disassociate_website_certificate_authority(Client, Input, []).
disassociate_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateWebsiteCertificateAuthority"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a list of devices registered with the specified fleet.
list_devices(Client, Input) ->
    list_devices(Client, Input, []).
list_devices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDevices"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a list of domains associated to a specified fleet.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDomains"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a list of fleets for the current account and Region.
list_fleets(Client, Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listFleets"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a list of tags for the specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of website authorization providers associated with a
%% specified fleet.
list_website_authorization_providers(Client, Input) ->
    list_website_authorization_providers(Client, Input, []).
list_website_authorization_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWebsiteAuthorizationProviders"],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves a list of certificate authorities added for the current
%% account and Region.
list_website_certificate_authorities(Client, Input) ->
    list_website_certificate_authorities(Client, Input, []).
list_website_certificate_authorities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWebsiteCertificateAuthorities"],
    SuccessStatusCode = undefined,
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

%% @doc Moves a domain to ACTIVE status if it was in the INACTIVE status.
restore_domain_access(Client, Input) ->
    restore_domain_access(Client, Input, []).
restore_domain_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restoreDomainAccess"],
    SuccessStatusCode = undefined,
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

%% @doc Moves a domain to INACTIVE status if it was in the ACTIVE status.
revoke_domain_access(Client, Input) ->
    revoke_domain_access(Client, Input, []).
revoke_domain_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/revokeDomainAccess"],
    SuccessStatusCode = undefined,
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

%% @doc Signs the user out from all of their devices.
%%
%% The user can sign in again if they have valid credentials.
sign_out_user(Client, Input) ->
    sign_out_user(Client, Input, []).
sign_out_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/signOutUser"],
    SuccessStatusCode = undefined,
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

%% @doc Adds or overwrites one or more tags for the specified resource, such
%% as a fleet.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the same key, this operation updates its value.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Updates the audit stream configuration for the fleet.
update_audit_stream_configuration(Client, Input) ->
    update_audit_stream_configuration(Client, Input, []).
update_audit_stream_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateAuditStreamConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Updates the company network configuration for the fleet.
update_company_network_configuration(Client, Input) ->
    update_company_network_configuration(Client, Input, []).
update_company_network_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateCompanyNetworkConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Updates the device policy configuration for the fleet.
update_device_policy_configuration(Client, Input) ->
    update_device_policy_configuration(Client, Input, []).
update_device_policy_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDevicePolicyConfiguration"],
    SuccessStatusCode = undefined,
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

%% @doc Updates domain metadata, such as DisplayName.
update_domain_metadata(Client, Input) ->
    update_domain_metadata(Client, Input, []).
update_domain_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDomainMetadata"],
    SuccessStatusCode = undefined,
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

%% @doc Updates fleet metadata, such as DisplayName.
update_fleet_metadata(Client, Input) ->
    update_fleet_metadata(Client, Input, []).
update_fleet_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateFleetMetadata"],
    SuccessStatusCode = undefined,
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

%% @doc Updates the identity provider configuration for the fleet.
update_identity_provider_configuration(Client, Input) ->
    update_identity_provider_configuration(Client, Input, []).
update_identity_provider_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateIdentityProviderConfiguration"],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"worklink">>},
    Host = build_host(<<"worklink">>, Client1),
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
