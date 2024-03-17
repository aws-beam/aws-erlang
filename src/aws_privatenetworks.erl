%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Private 5G is a managed service that makes it
%% easy to deploy, operate, and scale
%% your own private mobile network at your on-premises location.
%%
%% Private 5G provides the
%% pre-configured hardware and software for mobile networks, helps automate
%% setup, and
%% scales capacity on demand to support additional devices as needed.
-module(aws_privatenetworks).

-export([acknowledge_order_receipt/2,
         acknowledge_order_receipt/3,
         activate_device_identifier/2,
         activate_device_identifier/3,
         activate_network_site/2,
         activate_network_site/3,
         configure_access_point/2,
         configure_access_point/3,
         create_network/2,
         create_network/3,
         create_network_site/2,
         create_network_site/3,
         deactivate_device_identifier/2,
         deactivate_device_identifier/3,
         delete_network/3,
         delete_network/4,
         delete_network_site/3,
         delete_network_site/4,
         get_device_identifier/2,
         get_device_identifier/4,
         get_device_identifier/5,
         get_network/2,
         get_network/4,
         get_network/5,
         get_network_resource/2,
         get_network_resource/4,
         get_network_resource/5,
         get_network_site/2,
         get_network_site/4,
         get_network_site/5,
         get_order/2,
         get_order/4,
         get_order/5,
         list_device_identifiers/2,
         list_device_identifiers/3,
         list_network_resources/2,
         list_network_resources/3,
         list_network_sites/2,
         list_network_sites/3,
         list_networks/2,
         list_networks/3,
         list_orders/2,
         list_orders/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         ping/1,
         ping/3,
         ping/4,
         start_network_resource_update/2,
         start_network_resource_update/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_network_site/2,
         update_network_site/3,
         update_network_site_plan/2,
         update_network_site_plan/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_orders_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"orders">> => list(order()())
%% }
-type list_orders_response() :: #{binary() => any()}.


%% Example:
%% update_network_site_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"networkSiteArn">> := string()
%% }
-type update_network_site_request() :: #{binary() => any()}.


%% Example:
%% create_network_response() :: #{
%%   <<"network">> := network(),
%%   <<"tags">> => map()
%% }
-type create_network_response() :: #{binary() => any()}.


%% Example:
%% list_networks_response() :: #{
%%   <<"networks">> => list(network()()),
%%   <<"nextToken">> => string()
%% }
-type list_networks_response() :: #{binary() => any()}.


%% Example:
%% ordered_resource_definition() :: #{
%%   <<"commitmentConfiguration">> => commitment_configuration(),
%%   <<"count">> => [integer()],
%%   <<"type">> => string()
%% }
-type ordered_resource_definition() :: #{binary() => any()}.


%% Example:
%% tracking_information() :: #{
%%   <<"trackingNumber">> => [string()]
%% }
-type tracking_information() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_network_request() :: #{}
-type get_network_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% site_plan() :: #{
%%   <<"options">> => list(name_value_pair()()),
%%   <<"resourceDefinitions">> => list(network_resource_definition()())
%% }
-type site_plan() :: #{binary() => any()}.

%% Example:
%% get_network_resource_request() :: #{}
-type get_network_resource_request() :: #{}.


%% Example:
%% list_device_identifiers_response() :: #{
%%   <<"deviceIdentifiers">> => list(device_identifier()()),
%%   <<"nextToken">> => string()
%% }
-type list_device_identifiers_response() :: #{binary() => any()}.


%% Example:
%% acknowledge_order_receipt_request() :: #{
%%   <<"orderArn">> := string()
%% }
-type acknowledge_order_receipt_request() :: #{binary() => any()}.


%% Example:
%% device_identifier() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deviceIdentifierArn">> => string(),
%%   <<"iccid">> => [string()],
%%   <<"imsi">> => string(),
%%   <<"networkArn">> => string(),
%%   <<"orderArn">> => [string()],
%%   <<"status">> => string(),
%%   <<"trafficGroupArn">> => string(),
%%   <<"vendor">> => [string()]
%% }
-type device_identifier() :: #{binary() => any()}.


%% Example:
%% start_network_resource_update_response() :: #{
%%   <<"networkResource">> => network_resource()
%% }
-type start_network_resource_update_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_network_site_response() :: #{
%%   <<"networkSite">> => network_site(),
%%   <<"tags">> => map()
%% }
-type get_network_site_response() :: #{binary() => any()}.


%% Example:
%% position() :: #{
%%   <<"elevation">> => [float()],
%%   <<"elevationReference">> => string(),
%%   <<"elevationUnit">> => string(),
%%   <<"latitude">> => [float()],
%%   <<"longitude">> => [float()]
%% }
-type position() :: #{binary() => any()}.


%% Example:
%% configure_access_point_response() :: #{
%%   <<"accessPoint">> := network_resource()
%% }
-type configure_access_point_response() :: #{binary() => any()}.


%% Example:
%% delete_network_response() :: #{
%%   <<"network">> := network()
%% }
-type delete_network_response() :: #{binary() => any()}.


%% Example:
%% get_device_identifier_response() :: #{
%%   <<"deviceIdentifier">> => device_identifier(),
%%   <<"tags">> => map()
%% }
-type get_device_identifier_response() :: #{binary() => any()}.


%% Example:
%% list_network_sites_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"networkArn">> := string(),
%%   <<"startToken">> => string()
%% }
-type list_network_sites_request() :: #{binary() => any()}.


%% Example:
%% name_value_pair() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type name_value_pair() :: #{binary() => any()}.


%% Example:
%% network_resource_definition() :: #{
%%   <<"count">> => [integer()],
%%   <<"options">> => list(name_value_pair()()),
%%   <<"type">> => string()
%% }
-type network_resource_definition() :: #{binary() => any()}.


%% Example:
%% network_site() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currentPlan">> => site_plan(),
%%   <<"description">> => string(),
%%   <<"networkArn">> => string(),
%%   <<"networkSiteArn">> => string(),
%%   <<"networkSiteName">> => string(),
%%   <<"pendingPlan">> => site_plan(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type network_site() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% configure_access_point_request() :: #{
%%   <<"accessPointArn">> := string(),
%%   <<"cpiSecretKey">> => string(),
%%   <<"cpiUserId">> => string(),
%%   <<"cpiUserPassword">> => string(),
%%   <<"cpiUsername">> => string(),
%%   <<"position">> => position()
%% }
-type configure_access_point_request() :: #{binary() => any()}.


%% Example:
%% update_network_site_response() :: #{
%%   <<"networkSite">> => network_site(),
%%   <<"tags">> => map()
%% }
-type update_network_site_response() :: #{binary() => any()}.


%% Example:
%% delete_network_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_network_request() :: #{binary() => any()}.


%% Example:
%% return_information() :: #{
%%   <<"replacementOrderArn">> => string(),
%%   <<"returnReason">> => [string()],
%%   <<"shippingAddress">> => address(),
%%   <<"shippingLabel">> => [string()]
%% }
-type return_information() :: #{binary() => any()}.


%% Example:
%% list_networks_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"startToken">> => string()
%% }
-type list_networks_request() :: #{binary() => any()}.


%% Example:
%% activate_network_site_response() :: #{
%%   <<"networkSite">> => network_site()
%% }
-type activate_network_site_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_order_request() :: #{}
-type get_order_request() :: #{}.


%% Example:
%% create_network_site_response() :: #{
%%   <<"networkSite">> => network_site(),
%%   <<"tags">> => map()
%% }
-type create_network_site_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% delete_network_site_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_network_site_request() :: #{binary() => any()}.


%% Example:
%% deactivate_device_identifier_response() :: #{
%%   <<"deviceIdentifier">> := device_identifier()
%% }
-type deactivate_device_identifier_response() :: #{binary() => any()}.


%% Example:
%% order() :: #{
%%   <<"acknowledgmentStatus">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"networkArn">> => string(),
%%   <<"networkSiteArn">> => string(),
%%   <<"orderArn">> => string(),
%%   <<"orderedResources">> => list(ordered_resource_definition()()),
%%   <<"shippingAddress">> => address(),
%%   <<"trackingInformation">> => list(tracking_information()())
%% }
-type order() :: #{binary() => any()}.


%% Example:
%% get_network_resource_response() :: #{
%%   <<"networkResource">> := network_resource(),
%%   <<"tags">> => map()
%% }
-type get_network_resource_response() :: #{binary() => any()}.


%% Example:
%% ping_response() :: #{
%%   <<"status">> => [string()]
%% }
-type ping_response() :: #{binary() => any()}.


%% Example:
%% activate_device_identifier_response() :: #{
%%   <<"deviceIdentifier">> := device_identifier(),
%%   <<"tags">> => map()
%% }
-type activate_device_identifier_response() :: #{binary() => any()}.


%% Example:
%% acknowledge_order_receipt_response() :: #{
%%   <<"order">> := order()
%% }
-type acknowledge_order_receipt_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_network_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"networkName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_network_request() :: #{binary() => any()}.


%% Example:
%% list_network_resources_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"networkArn">> := string(),
%%   <<"startToken">> => string()
%% }
-type list_network_resources_request() :: #{binary() => any()}.


%% Example:
%% list_network_resources_response() :: #{
%%   <<"networkResources">> => list(network_resource()()),
%%   <<"nextToken">> => string()
%% }
-type list_network_resources_response() :: #{binary() => any()}.


%% Example:
%% deactivate_device_identifier_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deviceIdentifierArn">> := string()
%% }
-type deactivate_device_identifier_request() :: #{binary() => any()}.


%% Example:
%% list_device_identifiers_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"networkArn">> := string(),
%%   <<"startToken">> => string()
%% }
-type list_device_identifiers_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% activate_device_identifier_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"deviceIdentifierArn">> := string()
%% }
-type activate_device_identifier_request() :: #{binary() => any()}.


%% Example:
%% commitment_information() :: #{
%%   <<"commitmentConfiguration">> => commitment_configuration(),
%%   <<"expiresOn">> => non_neg_integer(),
%%   <<"startAt">> => non_neg_integer()
%% }
-type commitment_information() :: #{binary() => any()}.


%% Example:
%% get_network_response() :: #{
%%   <<"network">> := network(),
%%   <<"tags">> => map()
%% }
-type get_network_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% network() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"networkArn">> => string(),
%%   <<"networkName">> => string(),
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()]
%% }
-type network() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% activate_network_site_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"commitmentConfiguration">> => commitment_configuration(),
%%   <<"networkSiteArn">> := string(),
%%   <<"shippingAddress">> := address()
%% }
-type activate_network_site_request() :: #{binary() => any()}.

%% Example:
%% get_device_identifier_request() :: #{}
-type get_device_identifier_request() :: #{}.


%% Example:
%% network_resource() :: #{
%%   <<"attributes">> => list(name_value_pair()()),
%%   <<"commitmentInformation">> => commitment_information(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"health">> => string(),
%%   <<"model">> => [string()],
%%   <<"networkArn">> => string(),
%%   <<"networkResourceArn">> => string(),
%%   <<"networkSiteArn">> => string(),
%%   <<"orderArn">> => string(),
%%   <<"position">> => position(),
%%   <<"returnInformation">> => return_information(),
%%   <<"serialNumber">> => [string()],
%%   <<"status">> => string(),
%%   <<"statusReason">> => [string()],
%%   <<"type">> => string(),
%%   <<"vendor">> => [string()]
%% }
-type network_resource() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_network_site_request() :: #{}
-type get_network_site_request() :: #{}.


%% Example:
%% start_network_resource_update_request() :: #{
%%   <<"commitmentConfiguration">> => commitment_configuration(),
%%   <<"networkResourceArn">> := string(),
%%   <<"returnReason">> => [string()],
%%   <<"shippingAddress">> => address(),
%%   <<"updateType">> := string()
%% }
-type start_network_resource_update_request() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"city">> => string(),
%%   <<"company">> => string(),
%%   <<"country">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"phoneNumber">> => string(),
%%   <<"postalCode">> => string(),
%%   <<"stateOrProvince">> => string(),
%%   <<"street1">> => string(),
%%   <<"street2">> => string(),
%%   <<"street3">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% get_order_response() :: #{
%%   <<"order">> := order(),
%%   <<"tags">> => map()
%% }
-type get_order_response() :: #{binary() => any()}.


%% Example:
%% commitment_configuration() :: #{
%%   <<"automaticRenewal">> => [boolean()],
%%   <<"commitmentLength">> => string()
%% }
-type commitment_configuration() :: #{binary() => any()}.


%% Example:
%% update_network_site_plan_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"networkSiteArn">> := string(),
%%   <<"pendingPlan">> := site_plan()
%% }
-type update_network_site_plan_request() :: #{binary() => any()}.


%% Example:
%% list_orders_request() :: #{
%%   <<"filters">> => map(),
%%   <<"maxResults">> => [integer()],
%%   <<"networkArn">> := string(),
%%   <<"startToken">> => string()
%% }
-type list_orders_request() :: #{binary() => any()}.


%% Example:
%% create_network_site_request() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"availabilityZoneId">> => [string()],
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"networkArn">> := string(),
%%   <<"networkSiteName">> := string(),
%%   <<"pendingPlan">> => site_plan(),
%%   <<"tags">> => map()
%% }
-type create_network_site_request() :: #{binary() => any()}.


%% Example:
%% delete_network_site_response() :: #{
%%   <<"networkSite">> => network_site()
%% }
-type delete_network_site_response() :: #{binary() => any()}.


%% Example:
%% list_network_sites_response() :: #{
%%   <<"networkSites">> => list(network_site()()),
%%   <<"nextToken">> => string()
%% }
-type list_network_sites_response() :: #{binary() => any()}.

-type acknowledge_order_receipt_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type activate_device_identifier_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type activate_network_site_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type configure_access_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_network_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    internal_server_exception().

-type create_network_site_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type deactivate_device_identifier_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_network_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_network_site_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_device_identifier_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_network_site_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_order_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_device_identifiers_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_network_resources_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_network_sites_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_networks_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_orders_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type ping_errors() ::
    internal_server_exception().

-type start_network_resource_update_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_network_site_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_network_site_plan_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Acknowledges that the specified network order was received.
-spec acknowledge_order_receipt(aws_client:aws_client(), acknowledge_order_receipt_request()) ->
    {ok, acknowledge_order_receipt_response(), tuple()} |
    {error, any()} |
    {error, acknowledge_order_receipt_errors(), tuple()}.
acknowledge_order_receipt(Client, Input) ->
    acknowledge_order_receipt(Client, Input, []).

-spec acknowledge_order_receipt(aws_client:aws_client(), acknowledge_order_receipt_request(), proplists:proplist()) ->
    {ok, acknowledge_order_receipt_response(), tuple()} |
    {error, any()} |
    {error, acknowledge_order_receipt_errors(), tuple()}.
acknowledge_order_receipt(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/orders/acknowledge"],
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

%% @doc Activates the specified device identifier.
-spec activate_device_identifier(aws_client:aws_client(), activate_device_identifier_request()) ->
    {ok, activate_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, activate_device_identifier_errors(), tuple()}.
activate_device_identifier(Client, Input) ->
    activate_device_identifier(Client, Input, []).

-spec activate_device_identifier(aws_client:aws_client(), activate_device_identifier_request(), proplists:proplist()) ->
    {ok, activate_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, activate_device_identifier_errors(), tuple()}.
activate_device_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/activate"],
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

%% @doc Activates the specified network site.
-spec activate_network_site(aws_client:aws_client(), activate_network_site_request()) ->
    {ok, activate_network_site_response(), tuple()} |
    {error, any()} |
    {error, activate_network_site_errors(), tuple()}.
activate_network_site(Client, Input) ->
    activate_network_site(Client, Input, []).

-spec activate_network_site(aws_client:aws_client(), activate_network_site_request(), proplists:proplist()) ->
    {ok, activate_network_site_response(), tuple()} |
    {error, any()} |
    {error, activate_network_site_errors(), tuple()}.
activate_network_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites/activate"],
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

%% @doc Configures the specified network resource.
%%
%% Use this action to specify the geographic position of the hardware. You
%% must provide
%% Certified Professional Installer (CPI) credentials in the request so that
%% we can obtain
%% spectrum grants. For more information, see Radio units:
%% https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html
%% in the
%% Amazon Web Services Private 5G User Guide.
-spec configure_access_point(aws_client:aws_client(), configure_access_point_request()) ->
    {ok, configure_access_point_response(), tuple()} |
    {error, any()} |
    {error, configure_access_point_errors(), tuple()}.
configure_access_point(Client, Input) ->
    configure_access_point(Client, Input, []).

-spec configure_access_point(aws_client:aws_client(), configure_access_point_request(), proplists:proplist()) ->
    {ok, configure_access_point_response(), tuple()} |
    {error, any()} |
    {error, configure_access_point_errors(), tuple()}.
configure_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-resources/configure"],
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

%% @doc Creates a network.
-spec create_network(aws_client:aws_client(), create_network_request()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input) ->
    create_network(Client, Input, []).

-spec create_network(aws_client:aws_client(), create_network_request(), proplists:proplist()) ->
    {ok, create_network_response(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/networks"],
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

%% @doc Creates a network site.
-spec create_network_site(aws_client:aws_client(), create_network_site_request()) ->
    {ok, create_network_site_response(), tuple()} |
    {error, any()} |
    {error, create_network_site_errors(), tuple()}.
create_network_site(Client, Input) ->
    create_network_site(Client, Input, []).

-spec create_network_site(aws_client:aws_client(), create_network_site_request(), proplists:proplist()) ->
    {ok, create_network_site_response(), tuple()} |
    {error, any()} |
    {error, create_network_site_errors(), tuple()}.
create_network_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites"],
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

%% @doc Deactivates the specified device identifier.
-spec deactivate_device_identifier(aws_client:aws_client(), deactivate_device_identifier_request()) ->
    {ok, deactivate_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, deactivate_device_identifier_errors(), tuple()}.
deactivate_device_identifier(Client, Input) ->
    deactivate_device_identifier(Client, Input, []).

-spec deactivate_device_identifier(aws_client:aws_client(), deactivate_device_identifier_request(), proplists:proplist()) ->
    {ok, deactivate_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, deactivate_device_identifier_errors(), tuple()}.
deactivate_device_identifier(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/deactivate"],
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

%% @doc Deletes the specified network.
%%
%% You must delete network sites before you delete the
%% network. For more information, see DeleteNetworkSite:
%% https://docs.aws.amazon.com/private-networks/latest/APIReference/API_DeleteNetworkSite.html
%% in the API Reference for Amazon Web Services Private
%% 5G.
-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkArn, Input) ->
    delete_network(Client, NetworkArn, Input, []).

-spec delete_network(aws_client:aws_client(), binary() | list(), delete_network_request(), proplists:proplist()) ->
    {ok, delete_network_response(), tuple()} |
    {error, any()} |
    {error, delete_network_errors(), tuple()}.
delete_network(Client, NetworkArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/networks/", aws_util:encode_uri(NetworkArn), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified network site.
%%
%% Return the hardware after you delete the network
%% site. You are responsible for minimum charges. For more information, see
%% Hardware
%% returns:
%% https://docs.aws.amazon.com/private-networks/latest/userguide/hardware-maintenance.html
%% in the Amazon Web Services Private 5G User
%% Guide.
-spec delete_network_site(aws_client:aws_client(), binary() | list(), delete_network_site_request()) ->
    {ok, delete_network_site_response(), tuple()} |
    {error, any()} |
    {error, delete_network_site_errors(), tuple()}.
delete_network_site(Client, NetworkSiteArn, Input) ->
    delete_network_site(Client, NetworkSiteArn, Input, []).

-spec delete_network_site(aws_client:aws_client(), binary() | list(), delete_network_site_request(), proplists:proplist()) ->
    {ok, delete_network_site_response(), tuple()} |
    {error, any()} |
    {error, delete_network_site_errors(), tuple()}.
delete_network_site(Client, NetworkSiteArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/network-sites/", aws_util:encode_uri(NetworkSiteArn), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified device identifier.
-spec get_device_identifier(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_device_identifier_errors(), tuple()}.
get_device_identifier(Client, DeviceIdentifierArn)
  when is_map(Client) ->
    get_device_identifier(Client, DeviceIdentifierArn, #{}, #{}).

-spec get_device_identifier(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_device_identifier_errors(), tuple()}.
get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap, []).

-spec get_device_identifier(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_identifier_response(), tuple()} |
    {error, any()} |
    {error, get_device_identifier_errors(), tuple()}.
get_device_identifier(Client, DeviceIdentifierArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/device-identifiers/", aws_util:encode_uri(DeviceIdentifierArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network.
-spec get_network(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkArn)
  when is_map(Client) ->
    get_network(Client, NetworkArn, #{}, #{}).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network(Client, NetworkArn, QueryMap, HeadersMap, []).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_response(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/networks/", aws_util:encode_uri(NetworkArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network resource.
-spec get_network_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_resource_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_errors(), tuple()}.
get_network_resource(Client, NetworkResourceArn)
  when is_map(Client) ->
    get_network_resource(Client, NetworkResourceArn, #{}, #{}).

-spec get_network_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_resource_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_errors(), tuple()}.
get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap, []).

-spec get_network_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_resource_response(), tuple()} |
    {error, any()} |
    {error, get_network_resource_errors(), tuple()}.
get_network_resource(Client, NetworkResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/network-resources/", aws_util:encode_uri(NetworkResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified network site.
-spec get_network_site(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_site_response(), tuple()} |
    {error, any()} |
    {error, get_network_site_errors(), tuple()}.
get_network_site(Client, NetworkSiteArn)
  when is_map(Client) ->
    get_network_site(Client, NetworkSiteArn, #{}, #{}).

-spec get_network_site(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_site_response(), tuple()} |
    {error, any()} |
    {error, get_network_site_errors(), tuple()}.
get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap, []).

-spec get_network_site(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_site_response(), tuple()} |
    {error, any()} |
    {error, get_network_site_errors(), tuple()}.
get_network_site(Client, NetworkSiteArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/network-sites/", aws_util:encode_uri(NetworkSiteArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified order.
-spec get_order(aws_client:aws_client(), binary() | list()) ->
    {ok, get_order_response(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderArn)
  when is_map(Client) ->
    get_order(Client, OrderArn, #{}, #{}).

-spec get_order(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_order_response(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_order(Client, OrderArn, QueryMap, HeadersMap, []).

-spec get_order(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_order_response(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/orders/", aws_util:encode_uri(OrderArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists device identifiers.
%%
%% Add filters to your request to return a more specific list
%% of results. Use filters to match the Amazon Resource Name (ARN) of an
%% order, the status
%% of device identifiers, or the ARN of the traffic group.
%%
%% If you specify multiple filters, filters are joined with an OR, and the
%% request
%% returns results that match all of the specified filters.
-spec list_device_identifiers(aws_client:aws_client(), list_device_identifiers_request()) ->
    {ok, list_device_identifiers_response(), tuple()} |
    {error, any()} |
    {error, list_device_identifiers_errors(), tuple()}.
list_device_identifiers(Client, Input) ->
    list_device_identifiers(Client, Input, []).

-spec list_device_identifiers(aws_client:aws_client(), list_device_identifiers_request(), proplists:proplist()) ->
    {ok, list_device_identifiers_response(), tuple()} |
    {error, any()} |
    {error, list_device_identifiers_errors(), tuple()}.
list_device_identifiers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/device-identifiers/list"],
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

%% @doc Lists network resources.
%%
%% Add filters to your request to return a more specific list of
%% results. Use filters to match the Amazon Resource Name (ARN) of an order
%% or the status
%% of network resources.
%%
%% If you specify multiple filters, filters are joined with an OR, and the
%% request
%% returns results that match all of the specified filters.
-spec list_network_resources(aws_client:aws_client(), list_network_resources_request()) ->
    {ok, list_network_resources_response(), tuple()} |
    {error, any()} |
    {error, list_network_resources_errors(), tuple()}.
list_network_resources(Client, Input) ->
    list_network_resources(Client, Input, []).

-spec list_network_resources(aws_client:aws_client(), list_network_resources_request(), proplists:proplist()) ->
    {ok, list_network_resources_response(), tuple()} |
    {error, any()} |
    {error, list_network_resources_errors(), tuple()}.
list_network_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-resources"],
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

%% @doc Lists network sites.
%%
%% Add filters to your request to return a more specific list of
%% results. Use filters to match the status of the network site.
-spec list_network_sites(aws_client:aws_client(), list_network_sites_request()) ->
    {ok, list_network_sites_response(), tuple()} |
    {error, any()} |
    {error, list_network_sites_errors(), tuple()}.
list_network_sites(Client, Input) ->
    list_network_sites(Client, Input, []).

-spec list_network_sites(aws_client:aws_client(), list_network_sites_request(), proplists:proplist()) ->
    {ok, list_network_sites_response(), tuple()} |
    {error, any()} |
    {error, list_network_sites_errors(), tuple()}.
list_network_sites(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-sites/list"],
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

%% @doc Lists networks.
%%
%% Add filters to your request to return a more specific list of results.
%% Use filters to match the status of the network.
-spec list_networks(aws_client:aws_client(), list_networks_request()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, Input) ->
    list_networks(Client, Input, []).

-spec list_networks(aws_client:aws_client(), list_networks_request(), proplists:proplist()) ->
    {ok, list_networks_response(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/networks/list"],
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

%% @doc Lists orders.
%%
%% Add filters to your request to return a more specific list of results.
%% Use filters to match the Amazon Resource Name (ARN) of the network site or
%% the status of
%% the order.
%%
%% If you specify multiple filters, filters are joined with an OR, and the
%% request
%% returns results that match all of the specified filters.
-spec list_orders(aws_client:aws_client(), list_orders_request()) ->
    {ok, list_orders_response(), tuple()} |
    {error, any()} |
    {error, list_orders_errors(), tuple()}.
list_orders(Client, Input) ->
    list_orders(Client, Input, []).

-spec list_orders(aws_client:aws_client(), list_orders_request(), proplists:proplist()) ->
    {ok, list_orders_response(), tuple()} |
    {error, any()} |
    {error, list_orders_errors(), tuple()}.
list_orders(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/orders/list"],
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

%% @doc Lists the tags for the specified resource.
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

%% @doc Checks the health of the service.
-spec ping(aws_client:aws_client()) ->
    {ok, ping_response(), tuple()} |
    {error, any()} |
    {error, ping_errors(), tuple()}.
ping(Client)
  when is_map(Client) ->
    ping(Client, #{}, #{}).

-spec ping(aws_client:aws_client(), map(), map()) ->
    {ok, ping_response(), tuple()} |
    {error, any()} |
    {error, ping_errors(), tuple()}.
ping(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    ping(Client, QueryMap, HeadersMap, []).

-spec ping(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, ping_response(), tuple()} |
    {error, any()} |
    {error, ping_errors(), tuple()}.
ping(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ping"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this action to do the following tasks:
%%
%% Update the duration and renewal status of the commitment period for a
%% radio
%% unit.
%%
%% The update goes into effect immediately.
%%
%% Request a replacement for a network resource.
%%
%% Request that you return a network resource.
%%
%% After you submit a request to replace or return a network resource, the
%% status of the
%% network resource changes to `CREATING_SHIPPING_LABEL'. The shipping
%% label is
%% available when the status of the network resource is `PENDING_RETURN'.
%% After
%% the network resource is successfully returned, its status changes to
%% `DELETED'. For more information, see Return a radio unit:
%% https://docs.aws.amazon.com/private-networks/latest/userguide/radio-units.html#return-radio-unit.
-spec start_network_resource_update(aws_client:aws_client(), start_network_resource_update_request()) ->
    {ok, start_network_resource_update_response(), tuple()} |
    {error, any()} |
    {error, start_network_resource_update_errors(), tuple()}.
start_network_resource_update(Client, Input) ->
    start_network_resource_update(Client, Input, []).

-spec start_network_resource_update(aws_client:aws_client(), start_network_resource_update_request(), proplists:proplist()) ->
    {ok, start_network_resource_update_response(), tuple()} |
    {error, any()} |
    {error, start_network_resource_update_errors(), tuple()}.
start_network_resource_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/network-resources/update"],
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

%% @doc Adds tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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

%% @doc Updates the specified network site.
-spec update_network_site(aws_client:aws_client(), update_network_site_request()) ->
    {ok, update_network_site_response(), tuple()} |
    {error, any()} |
    {error, update_network_site_errors(), tuple()}.
update_network_site(Client, Input) ->
    update_network_site(Client, Input, []).

-spec update_network_site(aws_client:aws_client(), update_network_site_request(), proplists:proplist()) ->
    {ok, update_network_site_response(), tuple()} |
    {error, any()} |
    {error, update_network_site_errors(), tuple()}.
update_network_site(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/network-sites/site"],
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

%% @doc Updates the specified network site plan.
-spec update_network_site_plan(aws_client:aws_client(), update_network_site_plan_request()) ->
    {ok, update_network_site_response(), tuple()} |
    {error, any()} |
    {error, update_network_site_plan_errors(), tuple()}.
update_network_site_plan(Client, Input) ->
    update_network_site_plan(Client, Input, []).

-spec update_network_site_plan(aws_client:aws_client(), update_network_site_plan_request(), proplists:proplist()) ->
    {ok, update_network_site_response(), tuple()} |
    {error, any()} |
    {error, update_network_site_plan_errors(), tuple()}.
update_network_site_plan(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/network-sites/plan"],
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
    Client1 = Client#{service => <<"private-networks">>},
    Host = build_host(<<"private-networks">>, Client1),
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
