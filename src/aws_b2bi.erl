%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Web Services B2B Data Interchange API Reference.
%%
%% It provides descriptions, API request parameters, and the XML response for
%% each of the B2BI API actions.
%%
%% B2BI enables automated exchange of EDI (electronic data interchange) based
%% business-critical transactions at cloud scale, with elasticity and
%% pay-as-you-go pricing. Businesses use EDI documents to exchange
%% transactional data with trading partners, such as suppliers and end
%% customers, using standardized formats such as X12.
%%
%% Rather than actually running a command, you can use the
%% `--generate-cli-skeleton' parameter with any API call to generate and
%% display a parameter template. You can then use the generated template to
%% customize and use as input on a later command. For details, see Generate
%% and use a parameter skeleton file:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate.
-module(aws_b2bi).

-export([create_capability/2,
         create_capability/3,
         create_partnership/2,
         create_partnership/3,
         create_profile/2,
         create_profile/3,
         create_starter_mapping_template/2,
         create_starter_mapping_template/3,
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
         generate_mapping/2,
         generate_mapping/3,
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
         test_conversion/2,
         test_conversion/3,
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
%% x12_delimiters() :: #{
%%   <<"componentSeparator">> => string(),
%%   <<"dataElementSeparator">> => string(),
%%   <<"segmentTerminator">> => string()
%% }
-type x12_delimiters() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% wrap_options() :: #{
%%   <<"lineLength">> => integer(),
%%   <<"lineTerminator">> => list(any()),
%%   <<"wrapBy">> => list(any())
%% }
-type wrap_options() :: #{binary() => any()}.

%% Example:
%% x12_details() :: #{
%%   <<"transactionSet">> => list(any()),
%%   <<"version">> => list(any())
%% }
-type x12_details() :: #{binary() => any()}.

%% Example:
%% test_conversion_response() :: #{
%%   <<"convertedFileContent">> => [string()],
%%   <<"validationMessages">> => list([string()]())
%% }
-type test_conversion_response() :: #{binary() => any()}.

%% Example:
%% create_capability_request() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"configuration">> := list(),
%%   <<"instructionsDocuments">> => list(s3_location()),
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"type">> := list(any())
%% }
-type create_capability_request() :: #{binary() => any()}.

%% Example:
%% delete_profile_request() :: #{

%% }
-type delete_profile_request() :: #{binary() => any()}.

%% Example:
%% create_partnership_request() :: #{
%%   <<"capabilities">> := list(string()),
%%   <<"capabilityOptions">> => capability_options(),
%%   <<"clientToken">> => [string()],
%%   <<"email">> := string(),
%%   <<"name">> := string(),
%%   <<"phone">> => string(),
%%   <<"profileId">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_partnership_request() :: #{binary() => any()}.

%% Example:
%% x12_element_requirement_validation_rule() :: #{
%%   <<"elementPosition">> => string(),
%%   <<"requirement">> => list(any())
%% }
-type x12_element_requirement_validation_rule() :: #{binary() => any()}.

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
%%   <<"capabilities">> => list(string()),
%%   <<"capabilityOptions">> => capability_options(),
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
%%   <<"capabilities">> => list(string()),
%%   <<"capabilityOptions">> => capability_options(),
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
%%   <<"instructionsDocuments">> => list(s3_location()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type get_capability_response() :: #{binary() => any()}.

%% Example:
%% x12_split_options() :: #{
%%   <<"splitBy">> => list(any())
%% }
-type x12_split_options() :: #{binary() => any()}.

%% Example:
%% test_conversion_request() :: #{
%%   <<"source">> := conversion_source(),
%%   <<"target">> := conversion_target()
%% }
-type test_conversion_request() :: #{binary() => any()}.

%% Example:
%% update_transformer_request() :: #{
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"name">> => string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
%%   <<"status">> => list(any())
%% }
-type update_transformer_request() :: #{binary() => any()}.

%% Example:
%% input_conversion() :: #{
%%   <<"advancedOptions">> => advanced_options(),
%%   <<"formatOptions">> => list(),
%%   <<"fromFormat">> => list(any())
%% }
-type input_conversion() :: #{binary() => any()}.

%% Example:
%% generate_mapping_response() :: #{
%%   <<"mappingAccuracy">> => [float()],
%%   <<"mappingTemplate">> => [string()]
%% }
-type generate_mapping_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
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
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"name">> := string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
%%   <<"tags">> => list(tag())
%% }
-type create_transformer_request() :: #{binary() => any()}.

%% Example:
%% get_transformer_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
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
%%   <<"instructionsDocuments">> => list(s3_location()),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type create_capability_response() :: #{binary() => any()}.

%% Example:
%% list_transformers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"transformers">> => list(transformer_summary())
%% }
-type list_transformers_response() :: #{binary() => any()}.

%% Example:
%% update_capability_response() :: #{
%%   <<"capabilityArn">> => string(),
%%   <<"capabilityId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"instructionsDocuments">> => list(s3_location()),
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
%%   <<"capabilities">> => list(string()),
%%   <<"capabilityOptions">> => capability_options(),
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
%% create_starter_mapping_template_response() :: #{
%%   <<"mappingTemplate">> => [string()]
%% }
-type create_starter_mapping_template_response() :: #{binary() => any()}.

%% Example:
%% output_conversion() :: #{
%%   <<"advancedOptions">> => advanced_options(),
%%   <<"formatOptions">> => list(),
%%   <<"toFormat">> => list(any())
%% }
-type output_conversion() :: #{binary() => any()}.

%% Example:
%% x12_validation_options() :: #{
%%   <<"validationRules">> => list(list())
%% }
-type x12_validation_options() :: #{binary() => any()}.

%% Example:
%% transformer_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
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
%%   <<"tags">> => list(tag())
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
%% x12_envelope() :: #{
%%   <<"common">> => x12_outbound_edi_headers(),
%%   <<"wrapOptions">> => wrap_options()
%% }
-type x12_envelope() :: #{binary() => any()}.

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
%% x12_functional_group_headers() :: #{
%%   <<"applicationReceiverCode">> => string(),
%%   <<"applicationSenderCode">> => string(),
%%   <<"responsibleAgencyCode">> => string()
%% }
-type x12_functional_group_headers() :: #{binary() => any()}.

%% Example:
%% get_transformer_job_response() :: #{
%%   <<"message">> => [string()],
%%   <<"outputFiles">> => list(s3_location()),
%%   <<"status">> => list(any())
%% }
-type get_transformer_job_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% inbound_edi_options() :: #{
%%   <<"x12">> => x12_inbound_edi_options()
%% }
-type inbound_edi_options() :: #{binary() => any()}.

%% Example:
%% edi_configuration() :: #{
%%   <<"capabilityDirection">> => list(any()),
%%   <<"inputLocation">> => s3_location(),
%%   <<"outputLocation">> => s3_location(),
%%   <<"transformerId">> => string(),
%%   <<"type">> => list()
%% }
-type edi_configuration() :: #{binary() => any()}.

%% Example:
%% update_capability_request() :: #{
%%   <<"configuration">> => list(),
%%   <<"instructionsDocuments">> => list(s3_location()),
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
%%   <<"partnerships">> => list(partnership_summary())
%% }
-type list_partnerships_response() :: #{binary() => any()}.

%% Example:
%% create_transformer_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"ediType">> => list(),
%%   <<"fileFormat">> => list(any()),
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"name">> => string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
%%   <<"status">> => list(any()),
%%   <<"transformerArn">> => string(),
%%   <<"transformerId">> => string()
%% }
-type create_transformer_response() :: #{binary() => any()}.

%% Example:
%% generate_mapping_request() :: #{
%%   <<"inputFileContent">> := string(),
%%   <<"mappingType">> := list(any()),
%%   <<"outputFileContent">> := string()
%% }
-type generate_mapping_request() :: #{binary() => any()}.

%% Example:
%% x12_interchange_control_headers() :: #{
%%   <<"acknowledgmentRequestedCode">> => string(),
%%   <<"receiverId">> => string(),
%%   <<"receiverIdQualifier">> => string(),
%%   <<"repetitionSeparator">> => string(),
%%   <<"senderId">> => string(),
%%   <<"senderIdQualifier">> => string(),
%%   <<"usageIndicatorCode">> => string()
%% }
-type x12_interchange_control_headers() :: #{binary() => any()}.

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
%%   <<"inputConversion">> => input_conversion(),
%%   <<"mapping">> => mapping(),
%%   <<"mappingTemplate">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"outputConversion">> => output_conversion(),
%%   <<"sampleDocument">> => string(),
%%   <<"sampleDocuments">> => sample_documents(),
%%   <<"status">> => list(any()),
%%   <<"transformerArn">> => string(),
%%   <<"transformerId">> => string()
%% }
-type update_transformer_response() :: #{binary() => any()}.

%% Example:
%% x12_code_list_validation_rule() :: #{
%%   <<"codesToAdd">> => list([string()]()),
%%   <<"codesToRemove">> => list([string()]()),
%%   <<"elementId">> => string()
%% }
-type x12_code_list_validation_rule() :: #{binary() => any()}.

%% Example:
%% sample_document_keys() :: #{
%%   <<"input">> => string(),
%%   <<"output">> => string()
%% }
-type sample_document_keys() :: #{binary() => any()}.

%% Example:
%% test_parsing_response() :: #{
%%   <<"parsedFileContent">> => [string()],
%%   <<"parsedSplitFileContents">> => list([string()]()),
%%   <<"validationMessages">> => list([string()]())
%% }
-type test_parsing_response() :: #{binary() => any()}.

%% Example:
%% list_capabilities_response() :: #{
%%   <<"capabilities">> => list(capability_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_capabilities_response() :: #{binary() => any()}.

%% Example:
%% x12_acknowledgment_options() :: #{
%%   <<"functionalAcknowledgment">> => list(any()),
%%   <<"technicalAcknowledgment">> => list(any())
%% }
-type x12_acknowledgment_options() :: #{binary() => any()}.

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
%%   <<"profiles">> => list(profile_summary())
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
%% sample_documents() :: #{
%%   <<"bucketName">> => string(),
%%   <<"keys">> => list(sample_document_keys())
%% }
-type sample_documents() :: #{binary() => any()}.

%% Example:
%% conversion_source() :: #{
%%   <<"fileFormat">> => list(any()),
%%   <<"inputFile">> => list()
%% }
-type conversion_source() :: #{binary() => any()}.

%% Example:
%% update_partnership_response() :: #{
%%   <<"capabilities">> => list(string()),
%%   <<"capabilityOptions">> => capability_options(),
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
%% x12_element_length_validation_rule() :: #{
%%   <<"elementId">> => string(),
%%   <<"maxLength">> => [integer()],
%%   <<"minLength">> => [integer()]
%% }
-type x12_element_length_validation_rule() :: #{binary() => any()}.

%% Example:
%% x12_control_numbers() :: #{
%%   <<"startingFunctionalGroupControlNumber">> => integer(),
%%   <<"startingInterchangeControlNumber">> => integer(),
%%   <<"startingTransactionSetControlNumber">> => integer()
%% }
-type x12_control_numbers() :: #{binary() => any()}.

%% Example:
%% x12_outbound_edi_headers() :: #{
%%   <<"controlNumbers">> => x12_control_numbers(),
%%   <<"delimiters">> => x12_delimiters(),
%%   <<"functionalGroupHeaders">> => x12_functional_group_headers(),
%%   <<"gs05TimeFormat">> => list(any()),
%%   <<"interchangeControlHeaders">> => x12_interchange_control_headers(),
%%   <<"validateEdi">> => boolean()
%% }
-type x12_outbound_edi_headers() :: #{binary() => any()}.

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
%% create_starter_mapping_template_request() :: #{
%%   <<"mappingType">> := list(any()),
%%   <<"outputSampleLocation">> => s3_location(),
%%   <<"templateDetails">> := list()
%% }
-type create_starter_mapping_template_request() :: #{binary() => any()}.

%% Example:
%% get_partnership_request() :: #{

%% }
-type get_partnership_request() :: #{binary() => any()}.

%% Example:
%% capability_options() :: #{
%%   <<"inboundEdi">> => inbound_edi_options(),
%%   <<"outboundEdi">> => list()
%% }
-type capability_options() :: #{binary() => any()}.

%% Example:
%% x12_advanced_options() :: #{
%%   <<"splitOptions">> => x12_split_options(),
%%   <<"validationOptions">> => x12_validation_options()
%% }
-type x12_advanced_options() :: #{binary() => any()}.

%% Example:
%% mapping() :: #{
%%   <<"template">> => string(),
%%   <<"templateLanguage">> => list(any())
%% }
-type mapping() :: #{binary() => any()}.

%% Example:
%% create_partnership_response() :: #{
%%   <<"capabilities">> => list(string()),
%%   <<"capabilityOptions">> => capability_options(),
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
%%   <<"advancedOptions">> => advanced_options(),
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
%% conversion_target() :: #{
%%   <<"advancedOptions">> => advanced_options(),
%%   <<"fileFormat">> => list(any()),
%%   <<"formatDetails">> => list(),
%%   <<"outputSampleFile">> => list()
%% }
-type conversion_target() :: #{binary() => any()}.

%% Example:
%% advanced_options() :: #{
%%   <<"x12">> => x12_advanced_options()
%% }
-type advanced_options() :: #{binary() => any()}.

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
%% x12_inbound_edi_options() :: #{
%%   <<"acknowledgmentOptions">> => x12_acknowledgment_options()
%% }
-type x12_inbound_edi_options() :: #{binary() => any()}.

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

-type create_starter_mapping_template_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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

-type generate_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

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

-type list_capabilities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_partnerships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_transformers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type start_transformer_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type test_conversion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
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
%% partner. It ties together a profile and one or more trading capabilities.
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

%% @doc Amazon Web Services B2B Data Interchange uses a mapping template in
%% JSONata or XSLT format to transform a customer input file into a JSON or
%% XML file that can be converted to EDI.
%%
%% If you provide a sample EDI file with the same structure as the EDI files
%% that you wish to generate, then the service can generate a mapping
%% template. The starter template contains placeholder values which you can
%% replace with JSONata or XSLT expressions to take data from your input file
%% and insert it into the JSON or XML file that is used to generate the EDI.
%%
%% If you do not provide a sample EDI file, then the service can generate a
%% mapping template based on the EDI settings in the `templateDetails'
%% parameter.
%%
%% Currently, we only support generating a template that can generate the
%% input to produce an Outbound X12 EDI file.
-spec create_starter_mapping_template(aws_client:aws_client(), create_starter_mapping_template_request()) ->
    {ok, create_starter_mapping_template_response(), tuple()} |
    {error, any()} |
    {error, create_starter_mapping_template_errors(), tuple()}.
create_starter_mapping_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_starter_mapping_template(Client, Input, []).

-spec create_starter_mapping_template(aws_client:aws_client(), create_starter_mapping_template_request(), proplists:proplist()) ->
    {ok, create_starter_mapping_template_response(), tuple()} |
    {error, any()} |
    {error, create_starter_mapping_template_errors(), tuple()}.
create_starter_mapping_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStarterMappingTemplate">>, Input, Options).

%% @doc Creates a transformer.
%%
%% Amazon Web Services B2B Data Interchange currently supports two scenarios:
%%
%% Inbound EDI: the Amazon Web Services customer receives an EDI file from
%% their trading partner. Amazon Web Services B2B Data Interchange converts
%% this EDI file into a JSON or XML file with a service-defined structure. A
%% mapping template provided by the customer, in JSONata or XSLT format, is
%% optionally applied to this file to produce a JSON or XML file with the
%% structure the customer requires.
%%
%% Outbound EDI: the Amazon Web Services customer has a JSON or XML file
%% containing data that they wish to use in an EDI file. A mapping template,
%% provided by the customer (in either JSONata or XSLT format) is applied to
%% this file to generate a JSON or XML file in the service-defined structure.
%% This file is then converted to an EDI file.
%%
%% The following fields are provided for backwards compatibility only:
%% `fileFormat', `mappingTemplate', `ediType', and
%% `sampleDocument'.
%%
%% Use the `mapping' data type in place of `mappingTemplate' and
%% `fileFormat'
%%
%% Use the `sampleDocuments' data type in place of `sampleDocument'
%%
%% Use either the `inputConversion' or `outputConversion' in place of
%% `ediType'
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
%% partner. It ties together a profile and one or more trading capabilities.
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
%% A profile is the mechanism used to create the concept of a private
%% network.
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
%% A transformer can take an EDI file as input and transform it into a
%% JSON-or XML-formatted document. Alternatively, a transformer can take a
%% JSON-or XML-formatted document as input and transform it into an EDI file.
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

%% @doc Takes sample input and output documents and uses Amazon Bedrock to
%% generate a mapping automatically.
%%
%% Depending on the accuracy and other factors, you can then edit the mapping
%% for your needs.
%%
%% Before you can use the AI-assisted feature for Amazon Web Services B2B
%% Data Interchange you must enable models in Amazon Bedrock. For details,
%% see AI-assisted template mapping prerequisites:
%% https://docs.aws.amazon.com/b2bi/latest/userguide/ai-assisted-mapping.html#ai-assist-prereq
%% in the Amazon Web Services B2B Data Interchange User guide.
%%
%% To generate a mapping, perform the following steps:
%%
%% Start with an X12 EDI document to use as the input.
%%
%% Call `TestMapping' using your EDI document.
%%
%% Use the output from the `TestMapping' operation as either input or
%% output for your GenerateMapping call, along with your sample file.
-spec generate_mapping(aws_client:aws_client(), generate_mapping_request()) ->
    {ok, generate_mapping_response(), tuple()} |
    {error, any()} |
    {error, generate_mapping_errors(), tuple()}.
generate_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_mapping(Client, Input, []).

-spec generate_mapping(aws_client:aws_client(), generate_mapping_request(), proplists:proplist()) ->
    {ok, generate_mapping_response(), tuple()} |
    {error, any()} |
    {error, generate_mapping_errors(), tuple()}.
generate_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateMapping">>, Input, Options).

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
%% partner. It ties together a profile and one or more trading capabilities.
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
%% A profile is the mechanism used to create the concept of a private
%% network.
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
%% A transformer can take an EDI file as input and transform it into a
%% JSON-or XML-formatted document. Alternatively, a transformer can take a
%% JSON-or XML-formatted document as input and transform it into an EDI file.
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
%%
%% If 30 days have elapsed since your transformer job was started, the system
%% deletes it. So, if you run `GetTransformerJob' and supply a
%% `transformerId' and `transformerJobId' for a job that was started
%% more than 30 days previously, you receive a 404 response.
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
    {error, any()} |
    {error, list_capabilities_errors(), tuple()}.
list_capabilities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_capabilities(Client, Input, []).

-spec list_capabilities(aws_client:aws_client(), list_capabilities_request(), proplists:proplist()) ->
    {ok, list_capabilities_response(), tuple()} |
    {error, any()} |
    {error, list_capabilities_errors(), tuple()}.
list_capabilities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCapabilities">>, Input, Options).

%% @doc Lists the partnerships associated with your Amazon Web Services
%% account for your current or specified region.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties together a profile and one or more trading capabilities.
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
%% A profile is the mechanism used to create the concept of a private
%% network.
-spec list_profiles(aws_client:aws_client(), list_profiles_request()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_profiles(Client, Input, []).

-spec list_profiles(aws_client:aws_client(), list_profiles_request(), proplists:proplist()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
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
%% A transformer can take an EDI file as input and transform it into a
%% JSON-or XML-formatted document. Alternatively, a transformer can take a
%% JSON-or XML-formatted document as input and transform it into an EDI file.
-spec list_transformers(aws_client:aws_client(), list_transformers_request()) ->
    {ok, list_transformers_response(), tuple()} |
    {error, any()} |
    {error, list_transformers_errors(), tuple()}.
list_transformers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transformers(Client, Input, []).

-spec list_transformers(aws_client:aws_client(), list_transformers_request(), proplists:proplist()) ->
    {ok, list_transformers_response(), tuple()} |
    {error, any()} |
    {error, list_transformers_errors(), tuple()}.
list_transformers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTransformers">>, Input, Options).

%% @doc Runs a job, using a transformer, to parse input EDI (electronic data
%% interchange) file into the output structures used by Amazon Web Services
%% B2B Data Interchange.
%%
%% If you only want to transform EDI (electronic data interchange) documents,
%% you don't need to create profiles, partnerships or capabilities. Just
%% create and configure a transformer, and then run the
%% `StartTransformerJob' API to process your files.
%%
%% The system stores transformer jobs for 30 days. During that period, you
%% can run GetTransformerJob:
%% https://docs.aws.amazon.com/b2bi/latest/APIReference/API_GetTransformerJob.html
%% and supply its `transformerId' and `transformerJobId' to return
%% details of the job.
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

%% @doc This operation mimics the latter half of a typical Outbound EDI
%% request.
%%
%% It takes an input JSON/XML in the B2Bi shape as input, converts it to an
%% X12 EDI string, and return that string.
-spec test_conversion(aws_client:aws_client(), test_conversion_request()) ->
    {ok, test_conversion_response(), tuple()} |
    {error, any()} |
    {error, test_conversion_errors(), tuple()}.
test_conversion(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_conversion(Client, Input, []).

-spec test_conversion(aws_client:aws_client(), test_conversion_request(), proplists:proplist()) ->
    {ok, test_conversion_response(), tuple()} |
    {error, any()} |
    {error, test_conversion_errors(), tuple()}.
test_conversion(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConversion">>, Input, Options).

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
%% partner. It ties together a profile and one or more trading capabilities.
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
%% A profile is the mechanism used to create the concept of a private
%% network.
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
%% A transformer can take an EDI file as input and transform it into a
%% JSON-or XML-formatted document. Alternatively, a transformer can take a
%% JSON-or XML-formatted document as input and transform it into an EDI file.
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
