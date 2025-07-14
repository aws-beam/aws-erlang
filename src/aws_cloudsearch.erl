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


%% Example:
%% update_service_access_policies_request() :: #{
%%   <<"AccessPolicies">> := string(),
%%   <<"DomainName">> := string()
%% }
-type update_service_access_policies_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_response() :: #{
%%   <<"DomainStatus">> => domain_status()
%% }
-type delete_domain_response() :: #{binary() => any()}.

%% Example:
%% describe_domain_endpoint_options_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string()
%% }
-type describe_domain_endpoint_options_request() :: #{binary() => any()}.

%% Example:
%% describe_analysis_schemes_response() :: #{
%%   <<"AnalysisSchemes">> => list(analysis_scheme_status())
%% }
-type describe_analysis_schemes_response() :: #{binary() => any()}.

%% Example:
%% define_analysis_scheme_response() :: #{
%%   <<"AnalysisScheme">> => analysis_scheme_status()
%% }
-type define_analysis_scheme_response() :: #{binary() => any()}.

%% Example:
%% text_array_options() :: #{
%%   <<"AnalysisScheme">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"HighlightEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SourceFields">> => string()
%% }
-type text_array_options() :: #{binary() => any()}.

%% Example:
%% delete_expression_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"ExpressionName">> := string()
%% }
-type delete_expression_request() :: #{binary() => any()}.

%% Example:
%% expression_status() :: #{
%%   <<"Options">> => expression(),
%%   <<"Status">> => option_status()
%% }
-type expression_status() :: #{binary() => any()}.

%% Example:
%% date_array_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SourceFields">> => string()
%% }
-type date_array_options() :: #{binary() => any()}.

%% Example:
%% document_suggester_options() :: #{
%%   <<"FuzzyMatching">> => list(any()),
%%   <<"SortExpression">> => string(),
%%   <<"SourceField">> => string()
%% }
-type document_suggester_options() :: #{binary() => any()}.

%% Example:
%% literal_array_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SourceFields">> => string()
%% }
-type literal_array_options() :: #{binary() => any()}.

%% Example:
%% analysis_options() :: #{
%%   <<"AlgorithmicStemming">> => list(any()),
%%   <<"JapaneseTokenizationDictionary">> => string(),
%%   <<"StemmingDictionary">> => string(),
%%   <<"Stopwords">> => string(),
%%   <<"Synonyms">> => string()
%% }
-type analysis_options() :: #{binary() => any()}.

%% Example:
%% delete_index_field_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"IndexFieldName">> := string()
%% }
-type delete_index_field_request() :: #{binary() => any()}.

%% Example:
%% service_endpoint() :: #{
%%   <<"Endpoint">> => string()
%% }
-type service_endpoint() :: #{binary() => any()}.

%% Example:
%% describe_domain_endpoint_options_response() :: #{
%%   <<"DomainEndpointOptions">> => domain_endpoint_options_status()
%% }
-type describe_domain_endpoint_options_response() :: #{binary() => any()}.

%% Example:
%% update_availability_options_response() :: #{
%%   <<"AvailabilityOptions">> => availability_options_status()
%% }
-type update_availability_options_response() :: #{binary() => any()}.

%% Example:
%% describe_domains_request() :: #{
%%   <<"DomainNames">> => list(string())
%% }
-type describe_domains_request() :: #{binary() => any()}.

%% Example:
%% int_options() :: #{
%%   <<"DefaultValue">> => float(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type int_options() :: #{binary() => any()}.

%% Example:
%% delete_index_field_response() :: #{
%%   <<"IndexField">> => index_field_status()
%% }
-type delete_index_field_response() :: #{binary() => any()}.

%% Example:
%% define_suggester_response() :: #{
%%   <<"Suggester">> => suggester_status()
%% }
-type define_suggester_response() :: #{binary() => any()}.

%% Example:
%% disabled_operation_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type disabled_operation_exception() :: #{binary() => any()}.

%% Example:
%% scaling_parameters() :: #{
%%   <<"DesiredInstanceType">> => list(any()),
%%   <<"DesiredPartitionCount">> => integer(),
%%   <<"DesiredReplicationCount">> => integer()
%% }
-type scaling_parameters() :: #{binary() => any()}.

%% Example:
%% define_index_field_response() :: #{
%%   <<"IndexField">> => index_field_status()
%% }
-type define_index_field_response() :: #{binary() => any()}.

%% Example:
%% scaling_parameters_status() :: #{
%%   <<"Options">> => scaling_parameters(),
%%   <<"Status">> => option_status()
%% }
-type scaling_parameters_status() :: #{binary() => any()}.

%% Example:
%% text_options() :: #{
%%   <<"AnalysisScheme">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"HighlightEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type text_options() :: #{binary() => any()}.

%% Example:
%% describe_suggesters_response() :: #{
%%   <<"Suggesters">> => list(suggester_status())
%% }
-type describe_suggesters_response() :: #{binary() => any()}.

%% Example:
%% analysis_scheme() :: #{
%%   <<"AnalysisOptions">> => analysis_options(),
%%   <<"AnalysisSchemeLanguage">> => list(any()),
%%   <<"AnalysisSchemeName">> => string()
%% }
-type analysis_scheme() :: #{binary() => any()}.

%% Example:
%% update_domain_endpoint_options_request() :: #{
%%   <<"DomainEndpointOptions">> := domain_endpoint_options(),
%%   <<"DomainName">> := string()
%% }
-type update_domain_endpoint_options_request() :: #{binary() => any()}.

%% Example:
%% describe_service_access_policies_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string()
%% }
-type describe_service_access_policies_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type delete_domain_request() :: #{binary() => any()}.

%% Example:
%% define_analysis_scheme_request() :: #{
%%   <<"AnalysisScheme">> := analysis_scheme(),
%%   <<"DomainName">> := string()
%% }
-type define_analysis_scheme_request() :: #{binary() => any()}.

%% Example:
%% suggester_status() :: #{
%%   <<"Options">> => suggester(),
%%   <<"Status">> => option_status()
%% }
-type suggester_status() :: #{binary() => any()}.

%% Example:
%% suggester() :: #{
%%   <<"DocumentSuggesterOptions">> => document_suggester_options(),
%%   <<"SuggesterName">> => string()
%% }
-type suggester() :: #{binary() => any()}.

%% Example:
%% availability_options_status() :: #{
%%   <<"Options">> => boolean(),
%%   <<"Status">> => option_status()
%% }
-type availability_options_status() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_domain_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type create_domain_request() :: #{binary() => any()}.

%% Example:
%% option_status() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"PendingDeletion">> => boolean(),
%%   <<"State">> => list(any()),
%%   <<"UpdateDate">> => non_neg_integer(),
%%   <<"UpdateVersion">> => integer()
%% }
-type option_status() :: #{binary() => any()}.

%% Example:
%% double_options() :: #{
%%   <<"DefaultValue">> => float(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type double_options() :: #{binary() => any()}.

%% Example:
%% update_domain_endpoint_options_response() :: #{
%%   <<"DomainEndpointOptions">> => domain_endpoint_options_status()
%% }
-type update_domain_endpoint_options_response() :: #{binary() => any()}.

%% Example:
%% define_index_field_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"IndexField">> := index_field()
%% }
-type define_index_field_request() :: #{binary() => any()}.

%% Example:
%% index_documents_response() :: #{
%%   <<"FieldNames">> => list(string())
%% }
-type index_documents_response() :: #{binary() => any()}.

%% Example:
%% update_scaling_parameters_response() :: #{
%%   <<"ScalingParameters">> => scaling_parameters_status()
%% }
-type update_scaling_parameters_response() :: #{binary() => any()}.

%% Example:
%% describe_index_fields_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string(),
%%   <<"FieldNames">> => list(string())
%% }
-type describe_index_fields_request() :: #{binary() => any()}.

%% Example:
%% define_suggester_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"Suggester">> := suggester()
%% }
-type define_suggester_request() :: #{binary() => any()}.

%% Example:
%% lat_lon_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type lat_lon_options() :: #{binary() => any()}.

%% Example:
%% int_array_options() :: #{
%%   <<"DefaultValue">> => float(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SourceFields">> => string()
%% }
-type int_array_options() :: #{binary() => any()}.

%% Example:
%% describe_suggesters_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string(),
%%   <<"SuggesterNames">> => list(string())
%% }
-type describe_suggesters_request() :: #{binary() => any()}.

%% Example:
%% index_documents_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type index_documents_request() :: #{binary() => any()}.

%% Example:
%% list_domain_names_response() :: #{
%%   <<"DomainNames">> => map()
%% }
-type list_domain_names_response() :: #{binary() => any()}.

%% Example:
%% index_field() :: #{
%%   <<"DateArrayOptions">> => date_array_options(),
%%   <<"DateOptions">> => date_options(),
%%   <<"DoubleArrayOptions">> => double_array_options(),
%%   <<"DoubleOptions">> => double_options(),
%%   <<"IndexFieldName">> => string(),
%%   <<"IndexFieldType">> => list(any()),
%%   <<"IntArrayOptions">> => int_array_options(),
%%   <<"IntOptions">> => int_options(),
%%   <<"LatLonOptions">> => lat_lon_options(),
%%   <<"LiteralArrayOptions">> => literal_array_options(),
%%   <<"LiteralOptions">> => literal_options(),
%%   <<"TextArrayOptions">> => text_array_options(),
%%   <<"TextOptions">> => text_options()
%% }
-type index_field() :: #{binary() => any()}.

%% Example:
%% delete_analysis_scheme_response() :: #{
%%   <<"AnalysisScheme">> => analysis_scheme_status()
%% }
-type delete_analysis_scheme_response() :: #{binary() => any()}.

%% Example:
%% delete_expression_response() :: #{
%%   <<"Expression">> => expression_status()
%% }
-type delete_expression_response() :: #{binary() => any()}.

%% Example:
%% describe_analysis_schemes_request() :: #{
%%   <<"AnalysisSchemeNames">> => list(string()),
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string()
%% }
-type describe_analysis_schemes_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_parameters_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type describe_scaling_parameters_request() :: #{binary() => any()}.

%% Example:
%% domain_status() :: #{
%%   <<"ARN">> => string(),
%%   <<"Created">> => boolean(),
%%   <<"Deleted">> => boolean(),
%%   <<"DocService">> => service_endpoint(),
%%   <<"DomainId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"Limits">> => limits(),
%%   <<"Processing">> => boolean(),
%%   <<"RequiresIndexDocuments">> => boolean(),
%%   <<"SearchInstanceCount">> => integer(),
%%   <<"SearchInstanceType">> => string(),
%%   <<"SearchPartitionCount">> => integer(),
%%   <<"SearchService">> => service_endpoint()
%% }
-type domain_status() :: #{binary() => any()}.

%% Example:
%% double_array_options() :: #{
%%   <<"DefaultValue">> => float(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SourceFields">> => string()
%% }
-type double_array_options() :: #{binary() => any()}.

%% Example:
%% describe_expressions_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string(),
%%   <<"ExpressionNames">> => list(string())
%% }
-type describe_expressions_request() :: #{binary() => any()}.

%% Example:
%% invalid_type_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_type_exception() :: #{binary() => any()}.

%% Example:
%% date_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type date_options() :: #{binary() => any()}.

%% Example:
%% describe_service_access_policies_response() :: #{
%%   <<"AccessPolicies">> => access_policies_status()
%% }
-type describe_service_access_policies_response() :: #{binary() => any()}.

%% Example:
%% internal_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.

%% Example:
%% define_expression_response() :: #{
%%   <<"Expression">> => expression_status()
%% }
-type define_expression_response() :: #{binary() => any()}.

%% Example:
%% build_suggesters_response() :: #{
%%   <<"FieldNames">> => list(string())
%% }
-type build_suggesters_response() :: #{binary() => any()}.

%% Example:
%% index_field_status() :: #{
%%   <<"Options">> => index_field(),
%%   <<"Status">> => option_status()
%% }
-type index_field_status() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% update_scaling_parameters_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"ScalingParameters">> := scaling_parameters()
%% }
-type update_scaling_parameters_request() :: #{binary() => any()}.

%% Example:
%% create_domain_response() :: #{
%%   <<"DomainStatus">> => domain_status()
%% }
-type create_domain_response() :: #{binary() => any()}.

%% Example:
%% base_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type base_exception() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"ExpressionName">> => string(),
%%   <<"ExpressionValue">> => string()
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% limits() :: #{
%%   <<"MaximumPartitionCount">> := integer(),
%%   <<"MaximumReplicationCount">> := integer()
%% }
-type limits() :: #{binary() => any()}.

%% Example:
%% build_suggesters_request() :: #{
%%   <<"DomainName">> := string()
%% }
-type build_suggesters_request() :: #{binary() => any()}.

%% Example:
%% literal_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"FacetEnabled">> => boolean(),
%%   <<"ReturnEnabled">> => boolean(),
%%   <<"SearchEnabled">> => boolean(),
%%   <<"SortEnabled">> => boolean(),
%%   <<"SourceField">> => string()
%% }
-type literal_options() :: #{binary() => any()}.

%% Example:
%% describe_index_fields_response() :: #{
%%   <<"IndexFields">> => list(index_field_status())
%% }
-type describe_index_fields_response() :: #{binary() => any()}.

%% Example:
%% describe_domains_response() :: #{
%%   <<"DomainStatusList">> => list(domain_status())
%% }
-type describe_domains_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_availability_options_request() :: #{
%%   <<"Deployed">> => boolean(),
%%   <<"DomainName">> := string()
%% }
-type describe_availability_options_request() :: #{binary() => any()}.

%% Example:
%% describe_expressions_response() :: #{
%%   <<"Expressions">> => list(expression_status())
%% }
-type describe_expressions_response() :: #{binary() => any()}.

%% Example:
%% update_availability_options_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"MultiAZ">> := boolean()
%% }
-type update_availability_options_request() :: #{binary() => any()}.

%% Example:
%% domain_endpoint_options_status() :: #{
%%   <<"Options">> => domain_endpoint_options(),
%%   <<"Status">> => option_status()
%% }
-type domain_endpoint_options_status() :: #{binary() => any()}.

%% Example:
%% delete_suggester_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"SuggesterName">> := string()
%% }
-type delete_suggester_request() :: #{binary() => any()}.

%% Example:
%% access_policies_status() :: #{
%%   <<"Options">> => string(),
%%   <<"Status">> => option_status()
%% }
-type access_policies_status() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% describe_availability_options_response() :: #{
%%   <<"AvailabilityOptions">> => availability_options_status()
%% }
-type describe_availability_options_response() :: #{binary() => any()}.

%% Example:
%% update_service_access_policies_response() :: #{
%%   <<"AccessPolicies">> => access_policies_status()
%% }
-type update_service_access_policies_response() :: #{binary() => any()}.

%% Example:
%% delete_analysis_scheme_request() :: #{
%%   <<"AnalysisSchemeName">> := string(),
%%   <<"DomainName">> := string()
%% }
-type delete_analysis_scheme_request() :: #{binary() => any()}.

%% Example:
%% delete_suggester_response() :: #{
%%   <<"Suggester">> => suggester_status()
%% }
-type delete_suggester_response() :: #{binary() => any()}.

%% Example:
%% define_expression_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"Expression">> := expression()
%% }
-type define_expression_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_parameters_response() :: #{
%%   <<"ScalingParameters">> => scaling_parameters_status()
%% }
-type describe_scaling_parameters_response() :: #{binary() => any()}.

%% Example:
%% domain_endpoint_options() :: #{
%%   <<"EnforceHTTPS">> => boolean(),
%%   <<"TLSSecurityPolicy">> => list(any())
%% }
-type domain_endpoint_options() :: #{binary() => any()}.

%% Example:
%% analysis_scheme_status() :: #{
%%   <<"Options">> => analysis_scheme(),
%%   <<"Status">> => option_status()
%% }
-type analysis_scheme_status() :: #{binary() => any()}.

-type build_suggesters_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type create_domain_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception().

-type define_analysis_scheme_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type define_expression_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type define_index_field_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type define_suggester_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type delete_analysis_scheme_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type delete_domain_errors() ::
    base_exception() | 
    internal_exception().

-type delete_expression_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type delete_index_field_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type delete_suggester_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type describe_analysis_schemes_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_availability_options_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_domain_endpoint_options_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type describe_domains_errors() ::
    base_exception() | 
    internal_exception().

-type describe_expressions_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_index_fields_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_scaling_parameters_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_service_access_policies_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type describe_suggesters_errors() ::
    base_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type index_documents_errors() ::
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    resource_not_found_exception().

-type list_domain_names_errors() ::
    base_exception().

-type update_availability_options_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_domain_endpoint_options_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_scaling_parameters_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

-type update_service_access_policies_errors() ::
    limit_exceeded_exception() | 
    base_exception() | 
    validation_exception() | 
    internal_exception() | 
    invalid_type_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Indexes the search suggestions.
%%
%% For more information, see Configuring Suggesters:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters
%% in the Amazon CloudSearch Developer Guide.
-spec build_suggesters(aws_client:aws_client(), build_suggesters_request()) ->
    {ok, build_suggesters_response(), tuple()} |
    {error, any()} |
    {error, build_suggesters_errors(), tuple()}.
build_suggesters(Client, Input)
  when is_map(Client), is_map(Input) ->
    build_suggesters(Client, Input, []).

-spec build_suggesters(aws_client:aws_client(), build_suggesters_request(), proplists:proplist()) ->
    {ok, build_suggesters_response(), tuple()} |
    {error, any()} |
    {error, build_suggesters_errors(), tuple()}.
build_suggesters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BuildSuggesters">>, Input, Options).

%% @doc Creates a new search domain.
%%
%% For more information,
%% see Creating a Search Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html
%% in the Amazon CloudSearch Developer Guide.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
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
-spec define_analysis_scheme(aws_client:aws_client(), define_analysis_scheme_request()) ->
    {ok, define_analysis_scheme_response(), tuple()} |
    {error, any()} |
    {error, define_analysis_scheme_errors(), tuple()}.
define_analysis_scheme(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_analysis_scheme(Client, Input, []).

-spec define_analysis_scheme(aws_client:aws_client(), define_analysis_scheme_request(), proplists:proplist()) ->
    {ok, define_analysis_scheme_response(), tuple()} |
    {error, any()} |
    {error, define_analysis_scheme_errors(), tuple()}.
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
-spec define_expression(aws_client:aws_client(), define_expression_request()) ->
    {ok, define_expression_response(), tuple()} |
    {error, any()} |
    {error, define_expression_errors(), tuple()}.
define_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_expression(Client, Input, []).

-spec define_expression(aws_client:aws_client(), define_expression_request(), proplists:proplist()) ->
    {ok, define_expression_response(), tuple()} |
    {error, any()} |
    {error, define_expression_errors(), tuple()}.
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
-spec define_index_field(aws_client:aws_client(), define_index_field_request()) ->
    {ok, define_index_field_response(), tuple()} |
    {error, any()} |
    {error, define_index_field_errors(), tuple()}.
define_index_field(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_index_field(Client, Input, []).

-spec define_index_field(aws_client:aws_client(), define_index_field_request(), proplists:proplist()) ->
    {ok, define_index_field_response(), tuple()} |
    {error, any()} |
    {error, define_index_field_errors(), tuple()}.
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
-spec define_suggester(aws_client:aws_client(), define_suggester_request()) ->
    {ok, define_suggester_response(), tuple()} |
    {error, any()} |
    {error, define_suggester_errors(), tuple()}.
define_suggester(Client, Input)
  when is_map(Client), is_map(Input) ->
    define_suggester(Client, Input, []).

-spec define_suggester(aws_client:aws_client(), define_suggester_request(), proplists:proplist()) ->
    {ok, define_suggester_response(), tuple()} |
    {error, any()} |
    {error, define_suggester_errors(), tuple()}.
define_suggester(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DefineSuggester">>, Input, Options).

%% @doc Deletes an analysis scheme.
%%
%% For more information, see Configuring Analysis Schemes:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
%% in the Amazon CloudSearch Developer Guide.
-spec delete_analysis_scheme(aws_client:aws_client(), delete_analysis_scheme_request()) ->
    {ok, delete_analysis_scheme_response(), tuple()} |
    {error, any()} |
    {error, delete_analysis_scheme_errors(), tuple()}.
delete_analysis_scheme(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_analysis_scheme(Client, Input, []).

-spec delete_analysis_scheme(aws_client:aws_client(), delete_analysis_scheme_request(), proplists:proplist()) ->
    {ok, delete_analysis_scheme_response(), tuple()} |
    {error, any()} |
    {error, delete_analysis_scheme_errors(), tuple()}.
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
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_response(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Removes an ``Expression'' from the search domain.
%%
%% For more information, see Configuring Expressions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
%% in the Amazon CloudSearch Developer Guide.
-spec delete_expression(aws_client:aws_client(), delete_expression_request()) ->
    {ok, delete_expression_response(), tuple()} |
    {error, any()} |
    {error, delete_expression_errors(), tuple()}.
delete_expression(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_expression(Client, Input, []).

-spec delete_expression(aws_client:aws_client(), delete_expression_request(), proplists:proplist()) ->
    {ok, delete_expression_response(), tuple()} |
    {error, any()} |
    {error, delete_expression_errors(), tuple()}.
delete_expression(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExpression">>, Input, Options).

%% @doc Removes an ``IndexField'' from the search domain.
%%
%% For more information, see Configuring Index Fields:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
%% in the Amazon CloudSearch Developer Guide.
-spec delete_index_field(aws_client:aws_client(), delete_index_field_request()) ->
    {ok, delete_index_field_response(), tuple()} |
    {error, any()} |
    {error, delete_index_field_errors(), tuple()}.
delete_index_field(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_index_field(Client, Input, []).

-spec delete_index_field(aws_client:aws_client(), delete_index_field_request(), proplists:proplist()) ->
    {ok, delete_index_field_response(), tuple()} |
    {error, any()} |
    {error, delete_index_field_errors(), tuple()}.
delete_index_field(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIndexField">>, Input, Options).

%% @doc Deletes a suggester.
%%
%% For more information, see Getting Search Suggestions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
%% in the Amazon CloudSearch Developer Guide.
-spec delete_suggester(aws_client:aws_client(), delete_suggester_request()) ->
    {ok, delete_suggester_response(), tuple()} |
    {error, any()} |
    {error, delete_suggester_errors(), tuple()}.
delete_suggester(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_suggester(Client, Input, []).

-spec delete_suggester(aws_client:aws_client(), delete_suggester_request(), proplists:proplist()) ->
    {ok, delete_suggester_response(), tuple()} |
    {error, any()} |
    {error, delete_suggester_errors(), tuple()}.
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
-spec describe_analysis_schemes(aws_client:aws_client(), describe_analysis_schemes_request()) ->
    {ok, describe_analysis_schemes_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_schemes_errors(), tuple()}.
describe_analysis_schemes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_analysis_schemes(Client, Input, []).

-spec describe_analysis_schemes(aws_client:aws_client(), describe_analysis_schemes_request(), proplists:proplist()) ->
    {ok, describe_analysis_schemes_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_schemes_errors(), tuple()}.
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
-spec describe_availability_options(aws_client:aws_client(), describe_availability_options_request()) ->
    {ok, describe_availability_options_response(), tuple()} |
    {error, any()} |
    {error, describe_availability_options_errors(), tuple()}.
describe_availability_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_availability_options(Client, Input, []).

-spec describe_availability_options(aws_client:aws_client(), describe_availability_options_request(), proplists:proplist()) ->
    {ok, describe_availability_options_response(), tuple()} |
    {error, any()} |
    {error, describe_availability_options_errors(), tuple()}.
describe_availability_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailabilityOptions">>, Input, Options).

%% @doc Returns the domain's endpoint options, specifically whether all
%% requests to the domain must arrive over HTTPS.
%%
%% For more information, see Configuring Domain Endpoint Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
%% in the Amazon CloudSearch Developer Guide.
-spec describe_domain_endpoint_options(aws_client:aws_client(), describe_domain_endpoint_options_request()) ->
    {ok, describe_domain_endpoint_options_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_endpoint_options_errors(), tuple()}.
describe_domain_endpoint_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain_endpoint_options(Client, Input, []).

-spec describe_domain_endpoint_options(aws_client:aws_client(), describe_domain_endpoint_options_request(), proplists:proplist()) ->
    {ok, describe_domain_endpoint_options_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_endpoint_options_errors(), tuple()}.
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
-spec describe_domains(aws_client:aws_client(), describe_domains_request()) ->
    {ok, describe_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_domains_errors(), tuple()}.
describe_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domains(Client, Input, []).

-spec describe_domains(aws_client:aws_client(), describe_domains_request(), proplists:proplist()) ->
    {ok, describe_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_domains_errors(), tuple()}.
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
-spec describe_expressions(aws_client:aws_client(), describe_expressions_request()) ->
    {ok, describe_expressions_response(), tuple()} |
    {error, any()} |
    {error, describe_expressions_errors(), tuple()}.
describe_expressions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_expressions(Client, Input, []).

-spec describe_expressions(aws_client:aws_client(), describe_expressions_request(), proplists:proplist()) ->
    {ok, describe_expressions_response(), tuple()} |
    {error, any()} |
    {error, describe_expressions_errors(), tuple()}.
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
-spec describe_index_fields(aws_client:aws_client(), describe_index_fields_request()) ->
    {ok, describe_index_fields_response(), tuple()} |
    {error, any()} |
    {error, describe_index_fields_errors(), tuple()}.
describe_index_fields(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_index_fields(Client, Input, []).

-spec describe_index_fields(aws_client:aws_client(), describe_index_fields_request(), proplists:proplist()) ->
    {ok, describe_index_fields_response(), tuple()} |
    {error, any()} |
    {error, describe_index_fields_errors(), tuple()}.
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
-spec describe_scaling_parameters(aws_client:aws_client(), describe_scaling_parameters_request()) ->
    {ok, describe_scaling_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_parameters_errors(), tuple()}.
describe_scaling_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_parameters(Client, Input, []).

-spec describe_scaling_parameters(aws_client:aws_client(), describe_scaling_parameters_request(), proplists:proplist()) ->
    {ok, describe_scaling_parameters_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_parameters_errors(), tuple()}.
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
-spec describe_service_access_policies(aws_client:aws_client(), describe_service_access_policies_request()) ->
    {ok, describe_service_access_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_service_access_policies_errors(), tuple()}.
describe_service_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_access_policies(Client, Input, []).

-spec describe_service_access_policies(aws_client:aws_client(), describe_service_access_policies_request(), proplists:proplist()) ->
    {ok, describe_service_access_policies_response(), tuple()} |
    {error, any()} |
    {error, describe_service_access_policies_errors(), tuple()}.
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
-spec describe_suggesters(aws_client:aws_client(), describe_suggesters_request()) ->
    {ok, describe_suggesters_response(), tuple()} |
    {error, any()} |
    {error, describe_suggesters_errors(), tuple()}.
describe_suggesters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_suggesters(Client, Input, []).

-spec describe_suggesters(aws_client:aws_client(), describe_suggesters_request(), proplists:proplist()) ->
    {ok, describe_suggesters_response(), tuple()} |
    {error, any()} |
    {error, describe_suggesters_errors(), tuple()}.
describe_suggesters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSuggesters">>, Input, Options).

%% @doc Tells the search domain to start indexing its documents using the
%% latest indexing options.
%%
%% This operation must be invoked to activate options whose
%% `OptionStatus' is `RequiresIndexDocuments'.
-spec index_documents(aws_client:aws_client(), index_documents_request()) ->
    {ok, index_documents_response(), tuple()} |
    {error, any()} |
    {error, index_documents_errors(), tuple()}.
index_documents(Client, Input)
  when is_map(Client), is_map(Input) ->
    index_documents(Client, Input, []).

-spec index_documents(aws_client:aws_client(), index_documents_request(), proplists:proplist()) ->
    {ok, index_documents_response(), tuple()} |
    {error, any()} |
    {error, index_documents_errors(), tuple()}.
index_documents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IndexDocuments">>, Input, Options).

%% @doc Lists all search domains owned by an account.
-spec list_domain_names(aws_client:aws_client(), #{}) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
list_domain_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domain_names(Client, Input, []).

-spec list_domain_names(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, list_domain_names_response(), tuple()} |
    {error, any()} |
    {error, list_domain_names_errors(), tuple()}.
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
-spec update_availability_options(aws_client:aws_client(), update_availability_options_request()) ->
    {ok, update_availability_options_response(), tuple()} |
    {error, any()} |
    {error, update_availability_options_errors(), tuple()}.
update_availability_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_availability_options(Client, Input, []).

-spec update_availability_options(aws_client:aws_client(), update_availability_options_request(), proplists:proplist()) ->
    {ok, update_availability_options_response(), tuple()} |
    {error, any()} |
    {error, update_availability_options_errors(), tuple()}.
update_availability_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAvailabilityOptions">>, Input, Options).

%% @doc Updates the domain's endpoint options, specifically whether all
%% requests to the domain must arrive over HTTPS.
%%
%% For more information, see Configuring Domain Endpoint Options:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
%% in the Amazon CloudSearch Developer Guide.
-spec update_domain_endpoint_options(aws_client:aws_client(), update_domain_endpoint_options_request()) ->
    {ok, update_domain_endpoint_options_response(), tuple()} |
    {error, any()} |
    {error, update_domain_endpoint_options_errors(), tuple()}.
update_domain_endpoint_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_endpoint_options(Client, Input, []).

-spec update_domain_endpoint_options(aws_client:aws_client(), update_domain_endpoint_options_request(), proplists:proplist()) ->
    {ok, update_domain_endpoint_options_response(), tuple()} |
    {error, any()} |
    {error, update_domain_endpoint_options_errors(), tuple()}.
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
-spec update_scaling_parameters(aws_client:aws_client(), update_scaling_parameters_request()) ->
    {ok, update_scaling_parameters_response(), tuple()} |
    {error, any()} |
    {error, update_scaling_parameters_errors(), tuple()}.
update_scaling_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scaling_parameters(Client, Input, []).

-spec update_scaling_parameters(aws_client:aws_client(), update_scaling_parameters_request(), proplists:proplist()) ->
    {ok, update_scaling_parameters_response(), tuple()} |
    {error, any()} |
    {error, update_scaling_parameters_errors(), tuple()}.
update_scaling_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScalingParameters">>, Input, Options).

%% @doc Configures the access rules that control access to the domain's
%% document and search endpoints.
%%
%% For more information, see
%% Configuring Access for an Amazon CloudSearch Domain:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html.
-spec update_service_access_policies(aws_client:aws_client(), update_service_access_policies_request()) ->
    {ok, update_service_access_policies_response(), tuple()} |
    {error, any()} |
    {error, update_service_access_policies_errors(), tuple()}.
update_service_access_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_access_policies(Client, Input, []).

-spec update_service_access_policies(aws_client:aws_client(), update_service_access_policies_request(), proplists:proplist()) ->
    {ok, update_service_access_policies_response(), tuple()} |
    {error, any()} |
    {error, update_service_access_policies_errors(), tuple()}.
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
