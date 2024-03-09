%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudSearch Configuration Service
%%
%% You use the Amazon CloudSearch configuration service to create, configure,
%% and manage search domains.
%%
%% Configuration service requests are submitted using the AWS Query protocol.
%% AWS Query requests
%% are HTTP or HTTPS requests submitted via HTTP GET or POST with a query
%% parameter named Action.
%%
%% The endpoint for configuration service requests is region-specific:
%% cloudsearch.region.amazonaws.com.
%% For example, cloudsearch.us-east-1.amazonaws.com. For a current list of
%% supported regions and endpoints,
%% see Regions and Endpoints:
%% http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region.
-module(aws_cloudsearch).

-export([build_suggesters/2,
         build_suggesters/3,
         create_domain/2,
         create_domain/3,
         define_analysis_scheme/2,
         define_analysis_scheme/3,
         define_expression/2,
         define_expression/3,
         define_index_field/2,
         define_index_field/3,
         define_suggester/2,
         define_suggester/3,
         delete_analysis_scheme/2,
         delete_analysis_scheme/3,
         delete_domain/2,
         delete_domain/3,
         delete_expression/2,
         delete_expression/3,
         delete_index_field/2,
         delete_index_field/3,
         delete_suggester/2,
         delete_suggester/3,
         describe_analysis_schemes/2,
         describe_analysis_schemes/3,
         describe_availability_options/2,
         describe_availability_options/3,
         describe_domain_endpoint_options/2,
         describe_domain_endpoint_options/3,
         describe_domains/2,
         describe_domains/3,
         describe_expressions/2,
         describe_expressions/3,
         describe_index_fields/2,
         describe_index_fields/3,
         describe_scaling_parameters/2,
         describe_scaling_parameters/3,
         describe_service_access_policies/2,
         describe_service_access_policies/3,
         describe_suggesters/2,
         describe_suggesters/3,
         index_documents/2,
         index_documents/3,
         list_domain_names/2,
         list_domain_names/3,
         update_availability_options/2,
         update_availability_options/3,
         update_domain_endpoint_options/2,
         update_domain_endpoint_options/3,
         update_scaling_parameters/2,
         update_scaling_parameters/3,
         update_service_access_policies/2,
         update_service_access_policies/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Indexes the search suggestions.
%%
%% For more information, see Configuring Suggesters:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters
%% in the Amazon CloudSearch Developer Guide.
build_suggesters(Client, Input)
  when is_map(Client), is_map(Input) ->
    build_suggesters(Client, Input, []).
build_suggesters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BuildSuggesters">>, Input, Options).

%% @doc Creates a new search domain.
%%
%% For more information,
%% see Creating a Search Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html
%% in the Amazon CloudSearch Developer Guide.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Configures an analysis scheme that can be applied to a `text' or
%% `text-array' field to define language-specific text processing
%% options.
%%
%% For more information, see Configuring Analysis Schemes:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
%% in the Amazon CloudSearch Developer Guide.
define_analysis_scheme(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_analysis_scheme(Client, Input, []).
define_analysis_scheme(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DefineAnalysisScheme">>, Input, Options).

%% @doc Configures an ``Expression'' for the search domain.
%%
%% Used to create new expressions and modify existing ones. If the expression
%% exists, the new configuration replaces the old one. For more information,
%% see Configuring Expressions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
%% in the Amazon CloudSearch Developer Guide.
define_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_expression(Client, Input, []).
define_expression(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DefineExpression">>, Input, Options).

%% @doc Configures an ``IndexField'' for the search domain.
%%
%% Used to create new fields and modify existing ones. You must specify the
%% name of the domain you are configuring and an index field configuration.
%% The index field configuration specifies a unique name, the index field
%% type, and the options you want to configure for the field. The options you
%% can specify depend on the ``IndexFieldType''. If the field exists,
%% the new configuration replaces the old one. For more information, see
%% Configuring Index Fields:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
%% in the Amazon CloudSearch Developer Guide.
define_index_field(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_index_field(Client, Input, []).
define_index_field(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DefineIndexField">>, Input, Options).

%% @doc Configures a suggester for a domain.
%%
%% A suggester enables you to display possible matches before users finish
%% typing their queries. When you configure a suggester, you must specify the
%% name of the text field you want to search for possible matches and a
%% unique name for the suggester. For more information, see Getting Search
%% Suggestions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
%% in the Amazon CloudSearch Developer Guide.
define_suggester(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_suggester(Client, Input, []).
define_suggester(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DefineSuggester">>, Input, Options).

%% @doc Deletes an analysis scheme.
%%
%% For more information, see Configuring Analysis Schemes:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
%% in the Amazon CloudSearch Developer Guide.
delete_analysis_scheme(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_analysis_scheme(Client, Input, []).
delete_analysis_scheme(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnalysisScheme">>, Input, Options).

%% @doc Permanently deletes a search domain and all of its data.
%%
%% Once a domain has been deleted, it cannot be recovered. For more
%% information,
%% see Deleting a Search Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html
%% in the Amazon CloudSearch Developer Guide.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Removes an ``Expression'' from the search domain.
%%
%% For more information, see Configuring Expressions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
%% in the Amazon CloudSearch Developer Guide.
delete_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_expression(Client, Input, []).
delete_expression(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExpression">>, Input, Options).

%% @doc Removes an ``IndexField'' from the search domain.
%%
%% For more information, see Configuring Index Fields:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
%% in the Amazon CloudSearch Developer Guide.
delete_index_field(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_index_field(Client, Input, []).
delete_index_field(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIndexField">>, Input, Options).

%% @doc Deletes a suggester.
%%
%% For more information, see Getting Search Suggestions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
%% in the Amazon CloudSearch Developer Guide.
delete_suggester(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_suggester(Client, Input, []).
delete_suggester(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSuggester">>, Input, Options).

%% @doc Gets the analysis schemes configured for a domain.
%%
%% An analysis scheme defines language-specific text processing options for a
%% `text' field. Can be limited to specific analysis schemes by name. By
%% default, shows all analysis schemes and includes any pending changes to
%% the configuration. Set the `Deployed' option to `true' to show the
%% active configuration and exclude pending changes. For more information,
%% see Configuring Analysis Schemes:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
%% in the Amazon CloudSearch Developer Guide.
describe_analysis_schemes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_analysis_schemes(Client, Input, []).
describe_analysis_schemes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAnalysisSchemes">>, Input, Options).

%% @doc Gets the availability options configured for a domain.
%%
%% By default, shows the configuration with any pending changes. Set the
%% `Deployed' option to `true' to show the active configuration and
%% exclude pending changes. For more information, see Configuring
%% Availability Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html
%% in the Amazon CloudSearch Developer Guide.
describe_availability_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_availability_options(Client, Input, []).
describe_availability_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailabilityOptions">>, Input, Options).

%% @doc Returns the domain's endpoint options, specifically whether all
%% requests to the domain must arrive over HTTPS.
%%
%% For more information, see Configuring Domain Endpoint Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
%% in the Amazon CloudSearch Developer Guide.
describe_domain_endpoint_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain_endpoint_options(Client, Input, []).
describe_domain_endpoint_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomainEndpointOptions">>, Input, Options).

%% @doc Gets information about the search domains owned by this account.
%%
%% Can be limited to specific domains. Shows
%% all domains by default. To get the number of searchable documents in a
%% domain, use the console or submit a `matchall' request to your
%% domain's search endpoint:
%% `q=matchall&amp;q.parser=structured&amp;size=0'. For more information,
%% see Getting Information about a Search Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html
%% in the Amazon CloudSearch Developer Guide.
describe_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domains(Client, Input, []).
describe_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomains">>, Input, Options).

%% @doc Gets the expressions configured for the search domain.
%%
%% Can be limited to specific expressions by name. By default, shows all
%% expressions and includes any pending changes to the configuration. Set the
%% `Deployed' option to `true' to show the active configuration and
%% exclude pending changes. For more information, see Configuring
%% Expressions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
%% in the Amazon CloudSearch Developer Guide.
describe_expressions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_expressions(Client, Input, []).
describe_expressions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExpressions">>, Input, Options).

%% @doc Gets information about the index fields configured for the search
%% domain.
%%
%% Can be limited to specific fields by name. By default, shows all fields
%% and includes any pending changes to the configuration. Set the
%% `Deployed' option to `true' to show the active configuration and
%% exclude pending changes. For more information,
%% see Getting Domain Information:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html
%% in the Amazon CloudSearch Developer Guide.
describe_index_fields(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_index_fields(Client, Input, []).
describe_index_fields(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIndexFields">>, Input, Options).

%% @doc Gets the scaling parameters configured for a domain.
%%
%% A domain's scaling parameters specify the desired search instance type
%% and replication count. For more information, see Configuring Scaling
%% Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html
%% in the Amazon CloudSearch Developer Guide.
describe_scaling_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_parameters(Client, Input, []).
describe_scaling_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingParameters">>, Input, Options).

%% @doc Gets information about the access policies that control access to the
%% domain's document and search endpoints.
%%
%% By default, shows the configuration with any pending changes. Set the
%% `Deployed' option to `true' to show the active configuration and
%% exclude pending changes. For more information,
%% see Configuring Access for a Search Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html
%% in the Amazon CloudSearch Developer Guide.
describe_service_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_access_policies(Client, Input, []).
describe_service_access_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceAccessPolicies">>, Input, Options).

%% @doc Gets the suggesters configured for a domain.
%%
%% A suggester enables you to display possible matches before users finish
%% typing their queries. Can be limited to specific suggesters by name. By
%% default, shows all suggesters and includes any pending changes to the
%% configuration. Set the `Deployed' option to `true' to show the
%% active configuration and exclude pending changes. For more information,
%% see Getting Search Suggestions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
%% in the Amazon CloudSearch Developer Guide.
describe_suggesters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_suggesters(Client, Input, []).
describe_suggesters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSuggesters">>, Input, Options).

%% @doc Tells the search domain to start indexing its documents using the
%% latest indexing options.
%%
%% This operation must be invoked to activate options whose
%% `OptionStatus' is `RequiresIndexDocuments'.
index_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    index_documents(Client, Input, []).
index_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IndexDocuments">>, Input, Options).

%% @doc Lists all search domains owned by an account.
list_domain_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domain_names(Client, Input, []).
list_domain_names(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomainNames">>, Input, Options).

%% @doc Configures the availability options for a domain.
%%
%% Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an
%% additional Availability Zone in the same Region to increase fault
%% tolerance in the event of a service disruption. Changes to the Multi-AZ
%% option can take about half an hour to become active. For more information,
%% see Configuring Availability Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html
%% in the Amazon CloudSearch Developer Guide.
update_availability_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_availability_options(Client, Input, []).
update_availability_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAvailabilityOptions">>, Input, Options).

%% @doc Updates the domain's endpoint options, specifically whether all
%% requests to the domain must arrive over HTTPS.
%%
%% For more information, see Configuring Domain Endpoint Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
%% in the Amazon CloudSearch Developer Guide.
update_domain_endpoint_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_endpoint_options(Client, Input, []).
update_domain_endpoint_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainEndpointOptions">>, Input, Options).

%% @doc Configures scaling parameters for a domain.
%%
%% A domain's scaling parameters specify the desired search instance type
%% and replication count. Amazon CloudSearch will still automatically scale
%% your domain based on the volume of data and traffic, but not below the
%% desired instance type and replication count. If the Multi-AZ option is
%% enabled, these values control the resources used per Availability Zone.
%% For more information, see Configuring Scaling Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html
%% in the Amazon CloudSearch Developer Guide.
update_scaling_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scaling_parameters(Client, Input, []).
update_scaling_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScalingParameters">>, Input, Options).

%% @doc Configures the access rules that control access to the domain's
%% document and search endpoints.
%%
%% For more information, see
%% Configuring Access for an Amazon CloudSearch Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html.
update_service_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_access_policies(Client, Input, []).
update_service_access_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceAccessPolicies">>, Input, Options).

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
    Client1 = Client#{service => <<"cloudsearch">>},
    Host = build_host(<<"cloudsearch">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2013-01-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
