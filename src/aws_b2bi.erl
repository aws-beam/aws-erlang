%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Web Services B2B Data Interchange API Reference.
%%
%% It provides descriptions, API request parameters, and the XML response for
%% each of the B2BI API actions.
%%
%% B2BI enables automated exchange of EDI (electronic data interchange) based
%% business-critical transactions at cloud
%% scale, with elasticity and pay-as-you-go pricing. Businesses use EDI
%% documents to exchange
%% transactional data with trading partners, such as suppliers and end
%% customers, using
%% standardized formats such as X12.
%%
%% Rather than actually running a command, you can use the
%% `--generate-cli-skeleton' parameter with any API call to generate and
%% display
%% a parameter template. You can then use the generated template to customize
%% and use as input
%% on a later command. For details, see Generate and use a parameter skeleton
%% file:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate.
-module(aws_b2bi).

-export([create_capability/2,
         create_capability/3,
         create_partnership/2,
         create_partnership/3,
         create_profile/2,
         create_profile/3,
         create_transformer/2,
         create_transformer/3,
         delete_capability/2,
         delete_capability/3,
         delete_partnership/2,
         delete_partnership/3,
         delete_profile/2,
         delete_profile/3,
         delete_transformer/2,
         delete_transformer/3,
         get_capability/2,
         get_capability/3,
         get_partnership/2,
         get_partnership/3,
         get_profile/2,
         get_profile/3,
         get_transformer/2,
         get_transformer/3,
         get_transformer_job/2,
         get_transformer_job/3,
         list_capabilities/2,
         list_capabilities/3,
         list_partnerships/2,
         list_partnerships/3,
         list_profiles/2,
         list_profiles/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_transformers/2,
         list_transformers/3,
         start_transformer_job/2,
         start_transformer_job/3,
         tag_resource/2,
         tag_resource/3,
         test_mapping/2,
         test_mapping/3,
         test_parsing/2,
         test_parsing/3,
         untag_resource/2,
         untag_resource/3,
         update_capability/2,
         update_capability/3,
         update_partnership/2,
         update_partnership/3,
         update_profile/2,
         update_profile/3,
         update_transformer/2,
         update_transformer/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% x12_details() :: #{
%%   <<"transactionSet">> => list(any()),
%%   <<"version">> => list(any())
%% }
-type x12_details() :: #{binary() => any()}.

%% Example:
%% create_capability_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"configuration">> := list(),
%%   <<"instructionsDocuments">> => list(s3_location()()),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()()),
%%   <<"type">> := list(any())
%% }
-type create_capability_request() :: #{binary() => any()}.

%% Example:
%% delete_profile_request() :: #{

%% }
-type delete_profile_request() :: #{binary() => any()}.

%% Example:
%% create_partnership_request() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"clientToken">> => [string()],
%%   <<"email">> := string(),
%%   <<"name">> := string(),
%%   <<"phone">> => string(),
%%   <<"profileId">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_partnership_request() :: #{binary() => any()}.

%% Example:
%% get_transformer_request() :: #{

%% }
-type get_transformer_request() :: #{binary() => any()}.

%% Example:
%% list_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_profiles_request() :: #{binary() => any()}.

%% Example:
%% partnership_summary() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"partnershipId">> => string(),
%%   <<"profileId">> => string(),
%%   <<"tradingPartnerId">> => string()
%% }
-type partnership_summary() :: #{binary() => any()}.

%% Example:
%% list_partnerships_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"profileId">> => string()
%% }
-type list_partnerships_request() :: #{binary() => any()}.

%% Example:
%% get_partnership_response() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"partnershipArn">> => string(),
%%   <<"partnershipId">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileId">> => string(),
%%   <<"tradingPartnerId">> => string()
%% }
-type get_partnership_response() :: #{binary() => any()}.

%% Example:
%% get_capability_response() :: #{
%%   <<"capabilityArn">> => string(),
%%   <<"capabilityId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"instructionsDocuments">> => list(s3_location()()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type get_capability_response() :: #{binary() => any()}.

%% Example:
%% update_transformer_request() :: #{
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"mappingTemplate">> => string(),
%%   <<"name">> => string(),
%%   <<"sampleDocument">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_transformer_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_transformers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_transformers_request() :: #{binary() => any()}.

%% Example:
%% create_transformer_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"ediType">> := list(),
%%   <<"fileFormat">> := list(any()),
%%   <<"mappingTemplate">> := string(),
%%   <<"name">> := string(),
%%   <<"sampleDocument">> => string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_transformer_request() :: #{binary() => any()}.

%% Example:
%% get_transformer_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sampleDocument">> => string(),
%%   <<"status">> => list(any()),
%%   <<"transformerArn">> => string(),
%%   <<"transformerId">> => string()
%% }
-type get_transformer_response() :: #{binary() => any()}.

%% Example:
%% create_capability_response() :: #{
%%   <<"capabilityArn">> => string(),
%%   <<"capabilityId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"instructionsDocuments">> => list(s3_location()()),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type create_capability_response() :: #{binary() => any()}.

%% Example:
%% list_transformers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"transformers">> => list(transformer_summary()())
%% }
-type list_transformers_response() :: #{binary() => any()}.

%% Example:
%% update_capability_response() :: #{
%%   <<"capabilityArn">> => string(),
%%   <<"capabilityId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"instructionsDocuments">> => list(s3_location()()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type update_capability_response() :: #{binary() => any()}.

%% Example:
%% start_transformer_job_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"inputFile">> := s3_location(),
%%   <<"outputLocation">> := s3_location(),
%%   <<"transformerId">> := string()
%% }
-type start_transformer_job_request() :: #{binary() => any()}.

%% Example:
%% update_partnership_request() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"name">> => string()
%% }
-type update_partnership_request() :: #{binary() => any()}.

%% Example:
%% capability_summary() :: #{
%%   <<"capabilityId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type capability_summary() :: #{binary() => any()}.

%% Example:
%% transformer_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sampleDocument">> => string(),
%%   <<"status">> => list(any()),
%%   <<"transformerId">> => string()
%% }
-type transformer_summary() :: #{binary() => any()}.

%% Example:
%% create_profile_request() :: #{
%%   <<"businessName">> := string(),
%%   <<"clientToken">> => [string()],
%%   <<"email">> => string(),
%%   <<"logging">> := list(any()),
%%   <<"name">> := string(),
%%   <<"phone">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_profile_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_transformer_job_request() :: #{
%%   <<"transformerId">> := string()
%% }
-type get_transformer_job_request() :: #{binary() => any()}.

%% Example:
%% update_profile_request() :: #{
%%   <<"businessName">> => string(),
%%   <<"email">> => string(),
%%   <<"name">> => string(),
%%   <<"phone">> => string()
%% }
-type update_profile_request() :: #{binary() => any()}.

%% Example:
%% delete_transformer_request() :: #{

%% }
-type delete_transformer_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_profile_response() :: #{
%%   <<"businessName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logging">> => list(any()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileArn">> => string(),
%%   <<"profileId">> => string()
%% }
-type get_profile_response() :: #{binary() => any()}.

%% Example:
%% list_capabilities_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_capabilities_request() :: #{binary() => any()}.

%% Example:
%% create_profile_response() :: #{
%%   <<"businessName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logging">> => list(any()),
%%   <<"name">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileArn">> => string(),
%%   <<"profileId">> => string()
%% }
-type create_profile_response() :: #{binary() => any()}.

%% Example:
%% get_transformer_job_response() :: #{
%%   <<"message">> => [string()],
%%   <<"outputFiles">> => list(s3_location()()),
%%   <<"status">> => list(any())
%% }
-type get_transformer_job_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% edi_configuration() :: #{
%%   <<"inputLocation">> => s3_location(),
%%   <<"outputLocation">> => s3_location(),
%%   <<"transformerId">> => string(),
%%   <<"type">> => list()
%% }
-type edi_configuration() :: #{binary() => any()}.

%% Example:
%% update_capability_request() :: #{
%%   <<"configuration">> => list(),
%%   <<"instructionsDocuments">> => list(s3_location()()),
%%   <<"name">> => string()
%% }
-type update_capability_request() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucketName">> => string(),
%%   <<"key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% list_partnerships_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"partnerships">> => list(partnership_summary()())
%% }
-type list_partnerships_response() :: #{binary() => any()}.

%% Example:
%% create_transformer_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"mappingTemplate">> => string(),
%%   <<"name">> => string(),
%%   <<"sampleDocument">> => string(),
%%   <<"status">> => list(any()),
%%   <<"transformerArn">> => string(),
%%   <<"transformerId">> => string()
%% }
-type create_transformer_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% update_transformer_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"sampleDocument">> => string(),
%%   <<"status">> => list(any()),
%%   <<"transformerArn">> => string(),
%%   <<"transformerId">> => string()
%% }
-type update_transformer_response() :: #{binary() => any()}.

%% Example:
%% test_parsing_response() :: #{
%%   <<"parsedFileContent">> => [string()]
%% }
-type test_parsing_response() :: #{binary() => any()}.

%% Example:
%% list_capabilities_response() :: #{
%%   <<"capabilities">> => list(capability_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_capabilities_response() :: #{binary() => any()}.

%% Example:
%% delete_partnership_request() :: #{

%% }
-type delete_partnership_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% update_profile_response() :: #{
%%   <<"businessName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"logGroupName">> => string(),
%%   <<"logging">> => list(any()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileArn">> => string(),
%%   <<"profileId">> => string()
%% }
-type update_profile_response() :: #{binary() => any()}.

%% Example:
%% get_profile_request() :: #{

%% }
-type get_profile_request() :: #{binary() => any()}.

%% Example:
%% list_profiles_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"profiles">> => list(profile_summary()())
%% }
-type list_profiles_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{

%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_capability_request() :: #{

%% }
-type delete_capability_request() :: #{binary() => any()}.

%% Example:
%% update_partnership_response() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"partnershipArn">> => string(),
%%   <<"partnershipId">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileId">> => string(),
%%   <<"tradingPartnerId">> => string()
%% }
-type update_partnership_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% test_mapping_request() :: #{
%%   <<"fileFormat">> := list(any()),
%%   <<"inputFileContent">> := string(),
%%   <<"mappingTemplate">> := string()
%% }
-type test_mapping_request() :: #{binary() => any()}.

%% Example:
%% get_partnership_request() :: #{

%% }
-type get_partnership_request() :: #{binary() => any()}.

%% Example:
%% create_partnership_response() :: #{
%%   <<"capabilities">> => list(string()()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"email">> => string(),
%%   <<"name">> => string(),
%%   <<"partnershipArn">> => string(),
%%   <<"partnershipId">> => string(),
%%   <<"phone">> => string(),
%%   <<"profileId">> => string(),
%%   <<"tradingPartnerId">> => string()
%% }
-type create_partnership_response() :: #{binary() => any()}.

%% Example:
%% test_parsing_request() :: #{
%%   <<"ediType">> := list(),
%%   <<"fileFormat">> := list(any()),
%%   <<"inputFile">> := s3_location()
%% }
-type test_parsing_request() :: #{binary() => any()}.

%% Example:
%% get_capability_request() :: #{

%% }
-type get_capability_request() :: #{binary() => any()}.

%% Example:
%% test_mapping_response() :: #{
%%   <<"mappedFileContent">> => [string()]
%% }
-type test_mapping_response() :: #{binary() => any()}.

%% Example:
%% profile_summary() :: #{
%%   <<"businessName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"logGroupName">> => string(),
%%   <<"logging">> => list(any()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"profileId">> => string()
%% }
-type profile_summary() :: #{binary() => any()}.

%% Example:
%% start_transformer_job_response() :: #{
%%   <<"transformerJobId">> => string()
%% }
-type start_transformer_job_response() :: #{binary() => any()}.

-type create_capability_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_partnership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_transformer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_capability_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_partnership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_transformer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_capability_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_partnership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_transformer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_transformer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_partnerships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_transformer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type test_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type test_parsing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_capability_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_partnership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_transformer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Instantiates a capability based on the specified parameters.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
-spec create_capability(aws_client:aws_client(), create_capability_request()) ->
    {ok, create_capability_response(), tuple()} |
    {error, any()} |
    {error, create_capability_errors(), tuple()}.
create_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capability(Client, Input, []).

-spec create_capability(aws_client:aws_client(), create_capability_request(), proplists:proplist()) ->
    {ok, create_capability_response(), tuple()} |
    {error, any()} |
    {error, create_capability_errors(), tuple()}.
create_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapability">>, Input, Options).

%% @doc Creates a partnership between a customer and a trading partner, based
%% on the supplied parameters.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
-spec create_partnership(aws_client:aws_client(), create_partnership_request()) ->
    {ok, create_partnership_response(), tuple()} |
    {error, any()} |
    {error, create_partnership_errors(), tuple()}.
create_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partnership(Client, Input, []).

-spec create_partnership(aws_client:aws_client(), create_partnership_request(), proplists:proplist()) ->
    {ok, create_partnership_response(), tuple()} |
    {error, any()} |
    {error, create_partnership_errors(), tuple()}.
create_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnership">>, Input, Options).

%% @doc Creates a customer profile.
%%
%% You can have up to five customer profiles, each representing a distinct
%% private network. A profile is the mechanism used to create the concept of
%% a private network.
-spec create_profile(aws_client:aws_client(), create_profile_request()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_request(), proplists:proplist()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Creates a transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
-spec create_transformer(aws_client:aws_client(), create_transformer_request()) ->
    {ok, create_transformer_response(), tuple()} |
    {error, any()} |
    {error, create_transformer_errors(), tuple()}.
create_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transformer(Client, Input, []).

-spec create_transformer(aws_client:aws_client(), create_transformer_request(), proplists:proplist()) ->
    {ok, create_transformer_response(), tuple()} |
    {error, any()} |
    {error, create_transformer_errors(), tuple()}.
create_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransformer">>, Input, Options).

%% @doc Deletes the specified capability.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
-spec delete_capability(aws_client:aws_client(), delete_capability_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_capability_errors(), tuple()}.
delete_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capability(Client, Input, []).

-spec delete_capability(aws_client:aws_client(), delete_capability_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_capability_errors(), tuple()}.
delete_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapability">>, Input, Options).

%% @doc Deletes the specified partnership.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
-spec delete_partnership(aws_client:aws_client(), delete_partnership_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_partnership_errors(), tuple()}.
delete_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partnership(Client, Input, []).

-spec delete_partnership(aws_client:aws_client(), delete_partnership_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_partnership_errors(), tuple()}.
delete_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnership">>, Input, Options).

%% @doc Deletes the specified profile.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
-spec delete_profile(aws_client:aws_client(), delete_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).

-spec delete_profile(aws_client:aws_client(), delete_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

%% @doc Deletes the specified transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
-spec delete_transformer(aws_client:aws_client(), delete_transformer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transformer_errors(), tuple()}.
delete_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transformer(Client, Input, []).

-spec delete_transformer(aws_client:aws_client(), delete_transformer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_transformer_errors(), tuple()}.
delete_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransformer">>, Input, Options).

%% @doc Retrieves the details for the specified capability.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
-spec get_capability(aws_client:aws_client(), get_capability_request()) ->
    {ok, get_capability_response(), tuple()} |
    {error, any()} |
    {error, get_capability_errors(), tuple()}.
get_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capability(Client, Input, []).

-spec get_capability(aws_client:aws_client(), get_capability_request(), proplists:proplist()) ->
    {ok, get_capability_response(), tuple()} |
    {error, any()} |
    {error, get_capability_errors(), tuple()}.
get_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapability">>, Input, Options).

%% @doc Retrieves the details for a partnership, based on the partner and
%% profile IDs specified.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
-spec get_partnership(aws_client:aws_client(), get_partnership_request()) ->
    {ok, get_partnership_response(), tuple()} |
    {error, any()} |
    {error, get_partnership_errors(), tuple()}.
get_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partnership(Client, Input, []).

-spec get_partnership(aws_client:aws_client(), get_partnership_request(), proplists:proplist()) ->
    {ok, get_partnership_response(), tuple()} |
    {error, any()} |
    {error, get_partnership_errors(), tuple()}.
get_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartnership">>, Input, Options).

%% @doc Retrieves the details for the profile specified by the profile ID.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
-spec get_profile(aws_client:aws_client(), get_profile_request()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile(Client, Input, []).

-spec get_profile(aws_client:aws_client(), get_profile_request(), proplists:proplist()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProfile">>, Input, Options).

%% @doc Retrieves the details for the transformer specified by the
%% transformer ID.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
-spec get_transformer(aws_client:aws_client(), get_transformer_request()) ->
    {ok, get_transformer_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_errors(), tuple()}.
get_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transformer(Client, Input, []).

-spec get_transformer(aws_client:aws_client(), get_transformer_request(), proplists:proplist()) ->
    {ok, get_transformer_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_errors(), tuple()}.
get_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransformer">>, Input, Options).

%% @doc Returns the details of the transformer run, based on the Transformer
%% job ID.
-spec get_transformer_job(aws_client:aws_client(), get_transformer_job_request()) ->
    {ok, get_transformer_job_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_job_errors(), tuple()}.
get_transformer_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transformer_job(Client, Input, []).

-spec get_transformer_job(aws_client:aws_client(), get_transformer_job_request(), proplists:proplist()) ->
    {ok, get_transformer_job_response(), tuple()} |
    {error, any()} |
    {error, get_transformer_job_errors(), tuple()}.
get_transformer_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransformerJob">>, Input, Options).

%% @doc Lists the capabilities associated with your Amazon Web Services
%% account for your current or specified region.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
-spec list_capabilities(aws_client:aws_client(), list_capabilities_request()) ->
    {ok, list_capabilities_response(), tuple()} |
    {error, any()}.
list_capabilities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_capabilities(Client, Input, []).

-spec list_capabilities(aws_client:aws_client(), list_capabilities_request(), proplists:proplist()) ->
    {ok, list_capabilities_response(), tuple()} |
    {error, any()}.
list_capabilities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCapabilities">>, Input, Options).

%% @doc Lists the partnerships associated with your Amazon Web Services
%% account for your current or specified region.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
-spec list_partnerships(aws_client:aws_client(), list_partnerships_request()) ->
    {ok, list_partnerships_response(), tuple()} |
    {error, any()} |
    {error, list_partnerships_errors(), tuple()}.
list_partnerships(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partnerships(Client, Input, []).

-spec list_partnerships(aws_client:aws_client(), list_partnerships_request(), proplists:proplist()) ->
    {ok, list_partnerships_response(), tuple()} |
    {error, any()} |
    {error, list_partnerships_errors(), tuple()}.
list_partnerships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerships">>, Input, Options).

%% @doc Lists the profiles associated with your Amazon Web Services account
%% for your current or specified region.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
-spec list_profiles(aws_client:aws_client(), list_profiles_request()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()}.
list_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_profiles(Client, Input, []).

-spec list_profiles(aws_client:aws_client(), list_profiles_request(), proplists:proplist()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()}.
list_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProfiles">>, Input, Options).

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The resource can be a capability, partnership, profile, or transformer.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the available transformers.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
-spec list_transformers(aws_client:aws_client(), list_transformers_request()) ->
    {ok, list_transformers_response(), tuple()} |
    {error, any()}.
list_transformers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transformers(Client, Input, []).

-spec list_transformers(aws_client:aws_client(), list_transformers_request(), proplists:proplist()) ->
    {ok, list_transformers_response(), tuple()} |
    {error, any()}.
list_transformers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTransformers">>, Input, Options).

%% @doc Runs a job, using a transformer, to parse input EDI (electronic data
%% interchange) file into the output structures used by Amazon Web Services
%% B2BI Data Interchange.
%%
%% If you only want to transform EDI (electronic data interchange) documents,
%% you don't need to create profiles, partnerships or capabilities. Just
%% create and configure a transformer, and then run the
%% `StartTransformerJob' API to process your files.
-spec start_transformer_job(aws_client:aws_client(), start_transformer_job_request()) ->
    {ok, start_transformer_job_response(), tuple()} |
    {error, any()} |
    {error, start_transformer_job_errors(), tuple()}.
start_transformer_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_transformer_job(Client, Input, []).

-spec start_transformer_job(aws_client:aws_client(), start_transformer_job_request(), proplists:proplist()) ->
    {ok, start_transformer_job_response(), tuple()} |
    {error, any()} |
    {error, start_transformer_job_errors(), tuple()}.
start_transformer_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTransformerJob">>, Input, Options).

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN).
%%
%% Resources are capability, partnership, profile, transformers and other
%% entities.
%%
%% There is no response returned from this call.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Maps the input file according to the provided template file.
%%
%% The API call downloads the file contents from the Amazon S3 location, and
%% passes the contents in as a string, to the `inputFileContent'
%% parameter.
-spec test_mapping(aws_client:aws_client(), test_mapping_request()) ->
    {ok, test_mapping_response(), tuple()} |
    {error, any()} |
    {error, test_mapping_errors(), tuple()}.
test_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_mapping(Client, Input, []).

-spec test_mapping(aws_client:aws_client(), test_mapping_request(), proplists:proplist()) ->
    {ok, test_mapping_response(), tuple()} |
    {error, any()} |
    {error, test_mapping_errors(), tuple()}.
test_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMapping">>, Input, Options).

%% @doc Parses the input EDI (electronic data interchange) file.
%%
%% The input file has a file size limit of 250 KB.
-spec test_parsing(aws_client:aws_client(), test_parsing_request()) ->
    {ok, test_parsing_response(), tuple()} |
    {error, any()} |
    {error, test_parsing_errors(), tuple()}.
test_parsing(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_parsing(Client, Input, []).

-spec test_parsing(aws_client:aws_client(), test_parsing_request(), proplists:proplist()) ->
    {ok, test_parsing_response(), tuple()} |
    {error, any()} |
    {error, test_parsing_errors(), tuple()}.
test_parsing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestParsing">>, Input, Options).

%% @doc Detaches a key-value pair from the specified resource, as identified
%% by its Amazon Resource Name (ARN).
%%
%% Resources are capability, partnership, profile, transformers and other
%% entities.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates some of the parameters for a capability, based on the
%% specified parameters.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
-spec update_capability(aws_client:aws_client(), update_capability_request()) ->
    {ok, update_capability_response(), tuple()} |
    {error, any()} |
    {error, update_capability_errors(), tuple()}.
update_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capability(Client, Input, []).

-spec update_capability(aws_client:aws_client(), update_capability_request(), proplists:proplist()) ->
    {ok, update_capability_response(), tuple()} |
    {error, any()} |
    {error, update_capability_errors(), tuple()}.
update_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapability">>, Input, Options).

%% @doc Updates some of the parameters for a partnership between a customer
%% and trading partner.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
-spec update_partnership(aws_client:aws_client(), update_partnership_request()) ->
    {ok, update_partnership_response(), tuple()} |
    {error, any()} |
    {error, update_partnership_errors(), tuple()}.
update_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partnership(Client, Input, []).

-spec update_partnership(aws_client:aws_client(), update_partnership_request(), proplists:proplist()) ->
    {ok, update_partnership_response(), tuple()} |
    {error, any()} |
    {error, update_partnership_errors(), tuple()}.
update_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartnership">>, Input, Options).

%% @doc Updates the specified parameters for a profile.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
-spec update_profile(aws_client:aws_client(), update_profile_request()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).

-spec update_profile(aws_client:aws_client(), update_profile_request(), proplists:proplist()) ->
    {ok, update_profile_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates the specified parameters for a transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
-spec update_transformer(aws_client:aws_client(), update_transformer_request()) ->
    {ok, update_transformer_response(), tuple()} |
    {error, any()} |
    {error, update_transformer_errors(), tuple()}.
update_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_transformer(Client, Input, []).

-spec update_transformer(aws_client:aws_client(), update_transformer_request(), proplists:proplist()) ->
    {ok, update_transformer_response(), tuple()} |
    {error, any()} |
    {error, update_transformer_errors(), tuple()}.
update_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTransformer">>, Input, Options).

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
    Client1 = Client#{service => <<"b2bi">>},
    Host = build_host(<<"b2bi">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"B2BI.", Action/binary>>}
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
