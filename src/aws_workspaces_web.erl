%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc WorkSpaces Web is a low cost, fully managed WorkSpace built
%% specifically to facilitate secure, web-based workloads.
%%
%% WorkSpaces Web makes it easy for customers to safely provide their
%% employees with access to internal websites and SaaS web applications
%% without the administrative burden of appliances or specialized client
%% software. WorkSpaces Web provides simple policy tools tailored for user
%% interactions, while offloading common tasks like capacity management,
%% scaling, and maintaining browser images.
-module(aws_workspaces_web).

-export([associate_browser_settings/3,
         associate_browser_settings/4,
         associate_network_settings/3,
         associate_network_settings/4,
         associate_trust_store/3,
         associate_trust_store/4,
         associate_user_access_logging_settings/3,
         associate_user_access_logging_settings/4,
         associate_user_settings/3,
         associate_user_settings/4,
         create_browser_settings/2,
         create_browser_settings/3,
         create_identity_provider/2,
         create_identity_provider/3,
         create_network_settings/2,
         create_network_settings/3,
         create_portal/2,
         create_portal/3,
         create_trust_store/2,
         create_trust_store/3,
         create_user_access_logging_settings/2,
         create_user_access_logging_settings/3,
         create_user_settings/2,
         create_user_settings/3,
         delete_browser_settings/3,
         delete_browser_settings/4,
         delete_identity_provider/3,
         delete_identity_provider/4,
         delete_network_settings/3,
         delete_network_settings/4,
         delete_portal/3,
         delete_portal/4,
         delete_trust_store/3,
         delete_trust_store/4,
         delete_user_access_logging_settings/3,
         delete_user_access_logging_settings/4,
         delete_user_settings/3,
         delete_user_settings/4,
         disassociate_browser_settings/3,
         disassociate_browser_settings/4,
         disassociate_network_settings/3,
         disassociate_network_settings/4,
         disassociate_trust_store/3,
         disassociate_trust_store/4,
         disassociate_user_access_logging_settings/3,
         disassociate_user_access_logging_settings/4,
         disassociate_user_settings/3,
         disassociate_user_settings/4,
         get_browser_settings/2,
         get_browser_settings/4,
         get_browser_settings/5,
         get_identity_provider/2,
         get_identity_provider/4,
         get_identity_provider/5,
         get_network_settings/2,
         get_network_settings/4,
         get_network_settings/5,
         get_portal/2,
         get_portal/4,
         get_portal/5,
         get_portal_service_provider_metadata/2,
         get_portal_service_provider_metadata/4,
         get_portal_service_provider_metadata/5,
         get_trust_store/2,
         get_trust_store/4,
         get_trust_store/5,
         get_trust_store_certificate/3,
         get_trust_store_certificate/5,
         get_trust_store_certificate/6,
         get_user_access_logging_settings/2,
         get_user_access_logging_settings/4,
         get_user_access_logging_settings/5,
         get_user_settings/2,
         get_user_settings/4,
         get_user_settings/5,
         list_browser_settings/1,
         list_browser_settings/3,
         list_browser_settings/4,
         list_identity_providers/2,
         list_identity_providers/4,
         list_identity_providers/5,
         list_network_settings/1,
         list_network_settings/3,
         list_network_settings/4,
         list_portals/1,
         list_portals/3,
         list_portals/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_trust_store_certificates/2,
         list_trust_store_certificates/4,
         list_trust_store_certificates/5,
         list_trust_stores/1,
         list_trust_stores/3,
         list_trust_stores/4,
         list_user_access_logging_settings/1,
         list_user_access_logging_settings/3,
         list_user_access_logging_settings/4,
         list_user_settings/1,
         list_user_settings/3,
         list_user_settings/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_browser_settings/3,
         update_browser_settings/4,
         update_identity_provider/3,
         update_identity_provider/4,
         update_network_settings/3,
         update_network_settings/4,
         update_portal/3,
         update_portal/4,
         update_trust_store/3,
         update_trust_store/4,
         update_user_access_logging_settings/3,
         update_user_access_logging_settings/4,
         update_user_settings/3,
         update_user_settings/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a browser settings resource with a web portal.
associate_browser_settings(Client, PortalArn, Input) ->
    associate_browser_settings(Client, PortalArn, Input, []).
associate_browser_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/browserSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"browserSettingsArn">>, <<"browserSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a network settings resource with a web portal.
associate_network_settings(Client, PortalArn, Input) ->
    associate_network_settings(Client, PortalArn, Input, []).
associate_network_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/networkSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"networkSettingsArn">>, <<"networkSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a trust store with a web portal.
associate_trust_store(Client, PortalArn, Input) ->
    associate_trust_store(Client, PortalArn, Input, []).
associate_trust_store(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/trustStores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"trustStoreArn">>, <<"trustStoreArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a user access logging settings resource with a web portal.
associate_user_access_logging_settings(Client, PortalArn, Input) ->
    associate_user_access_logging_settings(Client, PortalArn, Input, []).
associate_user_access_logging_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userAccessLoggingSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"userAccessLoggingSettingsArn">>, <<"userAccessLoggingSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a user settings resource with a web portal.
associate_user_settings(Client, PortalArn, Input) ->
    associate_user_settings(Client, PortalArn, Input, []).
associate_user_settings(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"userSettingsArn">>, <<"userSettingsArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a browser settings resource that can be associated with a web
%% portal.
%%
%% Once associated with a web portal, browser settings control how the
%% browser will behave once a user starts a streaming session for the web
%% portal.
create_browser_settings(Client, Input) ->
    create_browser_settings(Client, Input, []).
create_browser_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/browserSettings"],
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

%% @doc Creates an identity provider resource that is then associated with a
%% web portal.
create_identity_provider(Client, Input) ->
    create_identity_provider(Client, Input, []).
create_identity_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identityProviders"],
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

%% @doc Creates a network settings resource that can be associated with a web
%% portal.
%%
%% Once associated with a web portal, network settings define how streaming
%% instances will connect with your specified VPC.
create_network_settings(Client, Input) ->
    create_network_settings(Client, Input, []).
create_network_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/networkSettings"],
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

%% @doc Creates a web portal.
create_portal(Client, Input) ->
    create_portal(Client, Input, []).
create_portal(Client, Input0, Options0) ->
    Method = post,
    Path = ["/portals"],
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

%% @doc Creates a trust store that can be associated with a web portal.
%%
%% A trust store contains certificate authority (CA) certificates. Once
%% associated with a web portal, the browser in a streaming session will
%% recognize certificates that have been issued using any of the CAs in the
%% trust store. If your organization has internal websites that use
%% certificates issued by private CAs, you should add the private CA
%% certificate to the trust store.
create_trust_store(Client, Input) ->
    create_trust_store(Client, Input, []).
create_trust_store(Client, Input0, Options0) ->
    Method = post,
    Path = ["/trustStores"],
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

%% @doc Creates a user access logging settings resource that can be
%% associated with a web portal.
create_user_access_logging_settings(Client, Input) ->
    create_user_access_logging_settings(Client, Input, []).
create_user_access_logging_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/userAccessLoggingSettings"],
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

%% @doc Creates a user settings resource that can be associated with a web
%% portal.
%%
%% Once associated with a web portal, user settings control how users can
%% transfer data between a streaming session and the their local devices.
create_user_settings(Client, Input) ->
    create_user_settings(Client, Input, []).
create_user_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/userSettings"],
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

%% @doc Deletes browser settings.
delete_browser_settings(Client, BrowserSettingsArn, Input) ->
    delete_browser_settings(Client, BrowserSettingsArn, Input, []).
delete_browser_settings(Client, BrowserSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
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

%% @doc Deletes the identity provider.
delete_identity_provider(Client, IdentityProviderArn, Input) ->
    delete_identity_provider(Client, IdentityProviderArn, Input, []).
delete_identity_provider(Client, IdentityProviderArn, Input0, Options0) ->
    Method = delete,
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
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

%% @doc Deletes network settings.
delete_network_settings(Client, NetworkSettingsArn, Input) ->
    delete_network_settings(Client, NetworkSettingsArn, Input, []).
delete_network_settings(Client, NetworkSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
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

%% @doc Deletes a web portal.
delete_portal(Client, PortalArn, Input) ->
    delete_portal(Client, PortalArn, Input, []).
delete_portal(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
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

%% @doc Deletes the trust store.
delete_trust_store(Client, TrustStoreArn, Input) ->
    delete_trust_store(Client, TrustStoreArn, Input, []).
delete_trust_store(Client, TrustStoreArn, Input0, Options0) ->
    Method = delete,
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
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

%% @doc Deletes user access logging settings.
delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input) ->
    delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input, []).
delete_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
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

%% @doc Deletes user settings.
delete_user_settings(Client, UserSettingsArn, Input) ->
    delete_user_settings(Client, UserSettingsArn, Input, []).
delete_user_settings(Client, UserSettingsArn, Input0, Options0) ->
    Method = delete,
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
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

%% @doc Disassociates browser settings from a web portal.
disassociate_browser_settings(Client, PortalArn, Input) ->
    disassociate_browser_settings(Client, PortalArn, Input, []).
disassociate_browser_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/browserSettings"],
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

%% @doc Disassociates network settings from a web portal.
disassociate_network_settings(Client, PortalArn, Input) ->
    disassociate_network_settings(Client, PortalArn, Input, []).
disassociate_network_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/networkSettings"],
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

%% @doc Disassociates a trust store from a web portal.
disassociate_trust_store(Client, PortalArn, Input) ->
    disassociate_trust_store(Client, PortalArn, Input, []).
disassociate_trust_store(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/trustStores"],
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

%% @doc Disassociates user access logging settings from a web portal.
disassociate_user_access_logging_settings(Client, PortalArn, Input) ->
    disassociate_user_access_logging_settings(Client, PortalArn, Input, []).
disassociate_user_access_logging_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userAccessLoggingSettings"],
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

%% @doc Disassociates user settings from a web portal.
disassociate_user_settings(Client, PortalArn, Input) ->
    disassociate_user_settings(Client, PortalArn, Input, []).
disassociate_user_settings(Client, PortalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/userSettings"],
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

%% @doc Gets browser settings.
get_browser_settings(Client, BrowserSettingsArn)
  when is_map(Client) ->
    get_browser_settings(Client, BrowserSettingsArn, #{}, #{}).

get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap, []).

get_browser_settings(Client, BrowserSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the identity provider.
get_identity_provider(Client, IdentityProviderArn)
  when is_map(Client) ->
    get_identity_provider(Client, IdentityProviderArn, #{}, #{}).

get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap, []).

get_identity_provider(Client, IdentityProviderArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the network settings.
get_network_settings(Client, NetworkSettingsArn)
  when is_map(Client) ->
    get_network_settings(Client, NetworkSettingsArn, #{}, #{}).

get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap, []).

get_network_settings(Client, NetworkSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the web portal.
get_portal(Client, PortalArn)
  when is_map(Client) ->
    get_portal(Client, PortalArn, #{}, #{}).

get_portal(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portal(Client, PortalArn, QueryMap, HeadersMap, []).

get_portal(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the service provider metadata.
get_portal_service_provider_metadata(Client, PortalArn)
  when is_map(Client) ->
    get_portal_service_provider_metadata(Client, PortalArn, #{}, #{}).

get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap, []).

get_portal_service_provider_metadata(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portalIdp/", aws_util:encode_multi_segment_uri(PortalArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the trust store.
get_trust_store(Client, TrustStoreArn)
  when is_map(Client) ->
    get_trust_store(Client, TrustStoreArn, #{}, #{}).

get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap, []).

get_trust_store(Client, TrustStoreArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the trust store certificate.
get_trust_store_certificate(Client, TrustStoreArn, Thumbprint)
  when is_map(Client) ->
    get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, #{}, #{}).

get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap, []).

get_trust_store_certificate(Client, TrustStoreArn, Thumbprint, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), "/certificate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"thumbprint">>, Thumbprint}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets user access logging settings.
get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn)
  when is_map(Client) ->
    get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, #{}, #{}).

get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap, []).

get_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets user settings.
get_user_settings(Client, UserSettingsArn)
  when is_map(Client) ->
    get_user_settings(Client, UserSettingsArn, #{}, #{}).

get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap, []).

get_user_settings(Client, UserSettingsArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of browser settings.
list_browser_settings(Client)
  when is_map(Client) ->
    list_browser_settings(Client, #{}, #{}).

list_browser_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_browser_settings(Client, QueryMap, HeadersMap, []).

list_browser_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/browserSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of identity providers for a specific web portal.
list_identity_providers(Client, PortalArn)
  when is_map(Client) ->
    list_identity_providers(Client, PortalArn, #{}, #{}).

list_identity_providers(Client, PortalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_providers(Client, PortalArn, QueryMap, HeadersMap, []).

list_identity_providers(Client, PortalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), "/identityProviders"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of network settings.
list_network_settings(Client)
  when is_map(Client) ->
    list_network_settings(Client, #{}, #{}).

list_network_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_network_settings(Client, QueryMap, HeadersMap, []).

list_network_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networkSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list or web portals.
list_portals(Client)
  when is_map(Client) ->
    list_portals(Client, #{}, #{}).

list_portals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_portals(Client, QueryMap, HeadersMap, []).

list_portals(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/portals"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of tags for a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of trust store certificates.
list_trust_store_certificates(Client, TrustStoreArn)
  when is_map(Client) ->
    list_trust_store_certificates(Client, TrustStoreArn, #{}, #{}).

list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap, []).

list_trust_store_certificates(Client, TrustStoreArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), "/certificates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of trust stores.
list_trust_stores(Client)
  when is_map(Client) ->
    list_trust_stores(Client, #{}, #{}).

list_trust_stores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_stores(Client, QueryMap, HeadersMap, []).

list_trust_stores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustStores"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of user access logging settings.
list_user_access_logging_settings(Client)
  when is_map(Client) ->
    list_user_access_logging_settings(Client, #{}, #{}).

list_user_access_logging_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_access_logging_settings(Client, QueryMap, HeadersMap, []).

list_user_access_logging_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userAccessLoggingSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of user settings.
list_user_settings(Client)
  when is_map(Client) ->
    list_user_settings(Client, #{}, #{}).

list_user_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_settings(Client, QueryMap, HeadersMap, []).

list_user_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/userSettings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds or overwrites one or more tags for the specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_multi_segment_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Updates browser settings.
update_browser_settings(Client, BrowserSettingsArn, Input) ->
    update_browser_settings(Client, BrowserSettingsArn, Input, []).
update_browser_settings(Client, BrowserSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/browserSettings/", aws_util:encode_multi_segment_uri(BrowserSettingsArn), ""],
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

%% @doc Updates the identity provider.
update_identity_provider(Client, IdentityProviderArn, Input) ->
    update_identity_provider(Client, IdentityProviderArn, Input, []).
update_identity_provider(Client, IdentityProviderArn, Input0, Options0) ->
    Method = patch,
    Path = ["/identityProviders/", aws_util:encode_multi_segment_uri(IdentityProviderArn), ""],
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

%% @doc Updates network settings.
update_network_settings(Client, NetworkSettingsArn, Input) ->
    update_network_settings(Client, NetworkSettingsArn, Input, []).
update_network_settings(Client, NetworkSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/networkSettings/", aws_util:encode_multi_segment_uri(NetworkSettingsArn), ""],
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

%% @doc Updates a web portal.
update_portal(Client, PortalArn, Input) ->
    update_portal(Client, PortalArn, Input, []).
update_portal(Client, PortalArn, Input0, Options0) ->
    Method = put,
    Path = ["/portals/", aws_util:encode_multi_segment_uri(PortalArn), ""],
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

%% @doc Updates the trust store.
update_trust_store(Client, TrustStoreArn, Input) ->
    update_trust_store(Client, TrustStoreArn, Input, []).
update_trust_store(Client, TrustStoreArn, Input0, Options0) ->
    Method = patch,
    Path = ["/trustStores/", aws_util:encode_multi_segment_uri(TrustStoreArn), ""],
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

%% @doc Updates the user access logging settings.
update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input) ->
    update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input, []).
update_user_access_logging_settings(Client, UserAccessLoggingSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/userAccessLoggingSettings/", aws_util:encode_multi_segment_uri(UserAccessLoggingSettingsArn), ""],
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

%% @doc Updates the user settings.
update_user_settings(Client, UserSettingsArn, Input) ->
    update_user_settings(Client, UserSettingsArn, Input, []).
update_user_settings(Client, UserSettingsArn, Input0, Options0) ->
    Method = patch,
    Path = ["/userSettings/", aws_util:encode_multi_segment_uri(UserSettingsArn), ""],
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
    Client1 = Client#{service => <<"workspaces-web">>},
    Host = build_host(<<"workspaces-web">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
