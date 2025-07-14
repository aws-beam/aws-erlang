%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Price List API is a centralized and
%% convenient way to programmatically
%% query Amazon Web Services for services, products, and pricing information.
%%
%% The Amazon Web Services Price List uses standardized product attributes
%% such as `Location',
%% `Storage Class', and `Operating System', and provides prices at
%% the SKU level. You can use the Amazon Web Services Price List to do the
%% following:
%%
%% Build cost control and scenario planning tools
%%
%% Reconcile billing data
%%
%% Forecast future spend for budgeting purposes
%%
%% Provide cost benefit analysis that compare your internal workloads with
%% Amazon Web Services
%%
%% Use `GetServices' without a service code to retrieve the service codes
%% for
%% all Amazon Web Services services, then `GetServices' with a service
%% code to
%% retrieve the attribute names for that service. After you have the service
%% code and
%% attribute names, you can use `GetAttributeValues' to see what values
%% are
%% available for an attribute. With the service code and an attribute name
%% and value, you can
%% use `GetProducts' to find specific products that you're interested
%% in, such as
%% an `AmazonEC2' instance, with a `Provisioned IOPS'
%% `volumeType'.
%%
%% For more information, see Using the
%% Amazon Web Services Price List API:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html
%% in the Billing User
%% Guide.
-module(aws_pricing).

-export([describe_services/2,
         describe_services/3,
         get_attribute_values/2,
         get_attribute_values/3,
         get_price_list_file_url/2,
         get_price_list_file_url/3,
         get_products/2,
         get_products/3,
         list_price_lists/2,
         list_price_lists/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% attribute_value() :: #{
%%   <<"Value">> => string()
%% }
-type attribute_value() :: #{binary() => any()}.

%% Example:
%% describe_services_request() :: #{
%%   <<"FormatVersion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type describe_services_request() :: #{binary() => any()}.

%% Example:
%% describe_services_response() :: #{
%%   <<"FormatVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Services">> => list(service())
%% }
-type describe_services_response() :: #{binary() => any()}.

%% Example:
%% expired_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type expired_next_token_exception() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Field">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% get_attribute_values_request() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceCode">> := string()
%% }
-type get_attribute_values_request() :: #{binary() => any()}.

%% Example:
%% get_attribute_values_response() :: #{
%%   <<"AttributeValues">> => list(attribute_value()),
%%   <<"NextToken">> => string()
%% }
-type get_attribute_values_response() :: #{binary() => any()}.

%% Example:
%% get_price_list_file_url_request() :: #{
%%   <<"FileFormat">> := string(),
%%   <<"PriceListArn">> := string()
%% }
-type get_price_list_file_url_request() :: #{binary() => any()}.

%% Example:
%% get_price_list_file_url_response() :: #{
%%   <<"Url">> => string()
%% }
-type get_price_list_file_url_response() :: #{binary() => any()}.

%% Example:
%% get_products_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"FormatVersion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceCode">> := string()
%% }
-type get_products_request() :: #{binary() => any()}.

%% Example:
%% get_products_response() :: #{
%%   <<"FormatVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"PriceList">> => list(string())
%% }
-type get_products_response() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% list_price_lists_request() :: #{
%%   <<"CurrencyCode">> := string(),
%%   <<"EffectiveDate">> := non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegionCode">> => string(),
%%   <<"ServiceCode">> := string()
%% }
-type list_price_lists_request() :: #{binary() => any()}.

%% Example:
%% list_price_lists_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PriceLists">> => list(price_list())
%% }
-type list_price_lists_response() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% price_list() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"FileFormats">> => list(string()),
%%   <<"PriceListArn">> => string(),
%%   <<"RegionCode">> => string()
%% }
-type price_list() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"AttributeNames">> => list(string()),
%%   <<"ServiceCode">> => string()
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

-type describe_services_errors() ::
    throttling_exception() | 
    not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    internal_error_exception() | 
    expired_next_token_exception().

-type get_attribute_values_errors() ::
    throttling_exception() | 
    not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    internal_error_exception() | 
    expired_next_token_exception().

-type get_price_list_file_url_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    not_found_exception() | 
    invalid_parameter_exception() | 
    internal_error_exception() | 
    access_denied_exception().

-type get_products_errors() ::
    throttling_exception() | 
    not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    internal_error_exception() | 
    expired_next_token_exception().

-type list_price_lists_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    not_found_exception() | 
    invalid_parameter_exception() | 
    invalid_next_token_exception() | 
    internal_error_exception() | 
    expired_next_token_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the metadata for one service or a list of the metadata for
%% all services.
%%
%% Use
%% this without a service code to get the service codes for all services.
%% Use it with a service code, such as `AmazonEC2', to get information
%% specific to
%% that service, such as the attribute
%% names available for that service. For example, some of the attribute names
%% available for EC2 are
%% `volumeType', `maxIopsVolume', `operation',
%% `locationType', and `instanceCapacity10xlarge'.
-spec describe_services(aws_client:aws_client(), describe_services_request()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).

-spec describe_services(aws_client:aws_client(), describe_services_request(), proplists:proplist()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns a list of attribute values.
%%
%% Attributes are similar to the details
%% in a Price List API offer file. For a list of available attributes, see
%% Offer File Definitions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs
%% in the Billing and Cost Management User Guide:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html.
-spec get_attribute_values(aws_client:aws_client(), get_attribute_values_request()) ->
    {ok, get_attribute_values_response(), tuple()} |
    {error, any()} |
    {error, get_attribute_values_errors(), tuple()}.
get_attribute_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_attribute_values(Client, Input, []).

-spec get_attribute_values(aws_client:aws_client(), get_attribute_values_request(), proplists:proplist()) ->
    {ok, get_attribute_values_response(), tuple()} |
    {error, any()} |
    {error, get_attribute_values_errors(), tuple()}.
get_attribute_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAttributeValues">>, Input, Options).

%% @doc
%%
%% This feature is in preview release and is subject to change.
%%
%% Your use of Amazon Web Services Price List API is subject to the Beta
%% Service Participation terms of the Amazon Web Services Service Terms:
%% https://aws.amazon.com/service-terms/ (Section 1.10).
%%
%% This returns the URL that you can retrieve your Price List file from. This
%% URL is based
%% on the `PriceListArn' and `FileFormat' that you retrieve from the
%% ListPriceLists:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html
%% response.
-spec get_price_list_file_url(aws_client:aws_client(), get_price_list_file_url_request()) ->
    {ok, get_price_list_file_url_response(), tuple()} |
    {error, any()} |
    {error, get_price_list_file_url_errors(), tuple()}.
get_price_list_file_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_price_list_file_url(Client, Input, []).

-spec get_price_list_file_url(aws_client:aws_client(), get_price_list_file_url_request(), proplists:proplist()) ->
    {ok, get_price_list_file_url_response(), tuple()} |
    {error, any()} |
    {error, get_price_list_file_url_errors(), tuple()}.
get_price_list_file_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPriceListFileUrl">>, Input, Options).

%% @doc Returns a list of all products that match the filter criteria.
-spec get_products(aws_client:aws_client(), get_products_request()) ->
    {ok, get_products_response(), tuple()} |
    {error, any()} |
    {error, get_products_errors(), tuple()}.
get_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_products(Client, Input, []).

-spec get_products(aws_client:aws_client(), get_products_request(), proplists:proplist()) ->
    {ok, get_products_response(), tuple()} |
    {error, any()} |
    {error, get_products_errors(), tuple()}.
get_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProducts">>, Input, Options).

%% @doc
%%
%% This feature is in preview release and is subject to change.
%%
%% Your use of Amazon Web Services Price List API is subject to the Beta
%% Service Participation terms of the Amazon Web Services Service Terms:
%% https://aws.amazon.com/service-terms/ (Section 1.10).
%%
%% This returns a list of Price List references that the requester if
%% authorized to view,
%% given a `ServiceCode', `CurrencyCode', and an
%% `EffectiveDate'. Use without a `RegionCode' filter to list Price
%% List references from all available Amazon Web Services Regions. Use with a
%% `RegionCode' filter to get the Price List reference that's
%% specific to a
%% specific Amazon Web Services Region. You can use the `PriceListArn'
%% from the
%% response to get your preferred Price List files through the
%% GetPriceListFileUrl:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html
%% API.
-spec list_price_lists(aws_client:aws_client(), list_price_lists_request()) ->
    {ok, list_price_lists_response(), tuple()} |
    {error, any()} |
    {error, list_price_lists_errors(), tuple()}.
list_price_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_price_lists(Client, Input, []).

-spec list_price_lists(aws_client:aws_client(), list_price_lists_request(), proplists:proplist()) ->
    {ok, list_price_lists_response(), tuple()} |
    {error, any()} |
    {error, list_price_lists_errors(), tuple()}.
list_price_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPriceLists">>, Input, Options).

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
    Client1 = Client#{service => <<"pricing">>},
    Host = build_host(<<"api.pricing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSPriceListService.", Action/binary>>}
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
