%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% Amazon Managed Blockchain is a fully managed service for creating and
%% managing blockchain networks using open-source frameworks.
%%
%% Blockchain allows you to build applications where multiple parties can
%% securely and transparently run transactions and share data without the
%% need for a trusted, central authority.
%%
%% Managed Blockchain supports the Hyperledger Fabric and Ethereum
%% open-source frameworks. Because of fundamental differences between the
%% frameworks, some API actions or data types may only apply in the context
%% of one framework and not the other. For example, actions related to
%% Hyperledger Fabric network members such as `CreateMember' and
%% `DeleteMember' don't apply to Ethereum.
%%
%% The description for each action indicates the framework or frameworks to
%% which it applies. Data types and properties that apply only in the context
%% of a particular framework are similarly indicated.
-module(aws_managedblockchain).

-export([create_accessor/2,
         create_accessor/3,
         create_member/3,
         create_member/4,
         create_network/2,
         create_network/3,
         create_node/3,
         create_node/4,
         create_proposal/3,
         create_proposal/4,
         delete_accessor/3,
         delete_accessor/4,
         delete_member/4,
         delete_member/5,
         delete_node/4,
         delete_node/5,
         get_accessor/2,
         get_accessor/4,
         get_accessor/5,
         get_member/3,
         get_member/5,
         get_member/6,
         get_network/2,
         get_network/4,
         get_network/5,
         get_node/3,
         get_node/5,
         get_node/6,
         get_proposal/3,
         get_proposal/5,
         get_proposal/6,
         list_accessors/1,
         list_accessors/3,
         list_accessors/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_members/2,
         list_members/4,
         list_members/5,
         list_networks/1,
         list_networks/3,
         list_networks/4,
         list_nodes/2,
         list_nodes/4,
         list_nodes/5,
         list_proposal_votes/3,
         list_proposal_votes/5,
         list_proposal_votes/6,
         list_proposals/2,
         list_proposals/4,
         list_proposals/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reject_invitation/3,
         reject_invitation/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_member/4,
         update_member/5,
         update_node/4,
         update_node/5,
         vote_on_proposal/4,
         vote_on_proposal/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% voting_policy() :: #{
%%   <<"ApprovalThresholdPolicy">> => approval_threshold_policy()
%% }
-type voting_policy() :: #{binary() => any()}.

%% Example:
%% reject_invitation_output() :: #{}
-type reject_invitation_output() :: #{}.


%% Example:
%% create_proposal_output() :: #{
%%   <<"ProposalId">> => string()
%% }
-type create_proposal_output() :: #{binary() => any()}.

%% Example:
%% update_node_output() :: #{}
-type update_node_output() :: #{}.


%% Example:
%% node_ethereum_attributes() :: #{
%%   <<"HttpEndpoint">> => string(),
%%   <<"WebSocketEndpoint">> => string()
%% }
-type node_ethereum_attributes() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% accessor() :: #{
%%   <<"Arn">> => string(),
%%   <<"BillingToken">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => list(any())
%% }
-type accessor() :: #{binary() => any()}.


%% Example:
%% list_proposal_votes_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_proposal_votes_input() :: #{binary() => any()}.


%% Example:
%% network_fabric_attributes() :: #{
%%   <<"Edition">> => list(any()),
%%   <<"OrderingServiceEndpoint">> => string()
%% }
-type network_fabric_attributes() :: #{binary() => any()}.


%% Example:
%% list_proposals_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_proposals_input() :: #{binary() => any()}.

%% Example:
%% vote_on_proposal_output() :: #{}
-type vote_on_proposal_output() :: #{}.


%% Example:
%% create_member_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"InvitationId">> := string(),
%%   <<"MemberConfiguration">> := member_configuration()
%% }
-type create_member_input() :: #{binary() => any()}.


%% Example:
%% list_members_output() :: #{
%%   <<"Members">> => list(member_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_members_output() :: #{binary() => any()}.


%% Example:
%% proposal_actions() :: #{
%%   <<"Invitations">> => list(invite_action()),
%%   <<"Removals">> => list(remove_action())
%% }
-type proposal_actions() :: #{binary() => any()}.


%% Example:
%% network_framework_configuration() :: #{
%%   <<"Fabric">> => network_fabric_configuration()
%% }
-type network_framework_configuration() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% get_proposal_output() :: #{
%%   <<"Proposal">> => proposal()
%% }
-type get_proposal_output() :: #{binary() => any()}.


%% Example:
%% approval_threshold_policy() :: #{
%%   <<"ProposalDurationInHours">> => integer(),
%%   <<"ThresholdComparator">> => list(any()),
%%   <<"ThresholdPercentage">> => integer()
%% }
-type approval_threshold_policy() :: #{binary() => any()}.


%% Example:
%% invitation() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"InvitationId">> => string(),
%%   <<"NetworkSummary">> => network_summary(),
%%   <<"Status">> => list(any())
%% }
-type invitation() :: #{binary() => any()}.


%% Example:
%% get_accessor_output() :: #{
%%   <<"Accessor">> => accessor()
%% }
-type get_accessor_output() :: #{binary() => any()}.

%% Example:
%% get_accessor_input() :: #{}
-type get_accessor_input() :: #{}.


%% Example:
%% list_accessors_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NetworkType">> => list(any()),
%%   <<"NextToken">> => string()
%% }
-type list_accessors_input() :: #{binary() => any()}.


%% Example:
%% node_fabric_log_publishing_configuration() :: #{
%%   <<"ChaincodeLogs">> => log_configurations(),
%%   <<"PeerLogs">> => log_configurations()
%% }
-type node_fabric_log_publishing_configuration() :: #{binary() => any()}.


%% Example:
%% node_fabric_attributes() :: #{
%%   <<"PeerEndpoint">> => string(),
%%   <<"PeerEventEndpoint">> => string()
%% }
-type node_fabric_attributes() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{}
-type internal_service_error_exception() :: #{}.


%% Example:
%% network_fabric_configuration() :: #{
%%   <<"Edition">> => list(any())
%% }
-type network_fabric_configuration() :: #{binary() => any()}.


%% Example:
%% list_networks_input() :: #{
%%   <<"Framework">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_networks_input() :: #{binary() => any()}.


%% Example:
%% member_configuration() :: #{
%%   <<"Description">> => string(),
%%   <<"FrameworkConfiguration">> => member_framework_configuration(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LogPublishingConfiguration">> => member_log_publishing_configuration(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type member_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% member_fabric_log_publishing_configuration() :: #{
%%   <<"CaLogs">> => log_configurations()
%% }
-type member_fabric_log_publishing_configuration() :: #{binary() => any()}.

%% Example:
%% reject_invitation_input() :: #{}
-type reject_invitation_input() :: #{}.


%% Example:
%% list_nodes_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MemberId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_nodes_input() :: #{binary() => any()}.


%% Example:
%% member_framework_attributes() :: #{
%%   <<"Fabric">> => member_fabric_attributes()
%% }
-type member_framework_attributes() :: #{binary() => any()}.


%% Example:
%% create_network_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"Framework">> := list(any()),
%%   <<"FrameworkConfiguration">> => network_framework_configuration(),
%%   <<"FrameworkVersion">> := string(),
%%   <<"MemberConfiguration">> := member_configuration(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map(),
%%   <<"VotingPolicy">> := voting_policy()
%% }
-type create_network_input() :: #{binary() => any()}.

%% Example:
%% update_member_output() :: #{}
-type update_member_output() :: #{}.


%% Example:
%% create_proposal_input() :: #{
%%   <<"Actions">> := proposal_actions(),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"MemberId">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_proposal_input() :: #{binary() => any()}.

%% Example:
%% delete_member_output() :: #{}
-type delete_member_output() :: #{}.


%% Example:
%% list_proposal_votes_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProposalVotes">> => list(vote_summary())
%% }
-type list_proposal_votes_output() :: #{binary() => any()}.


%% Example:
%% get_network_output() :: #{
%%   <<"Network">> => network()
%% }
-type get_network_output() :: #{binary() => any()}.


%% Example:
%% update_node_input() :: #{
%%   <<"LogPublishingConfiguration">> => node_log_publishing_configuration(),
%%   <<"MemberId">> => string()
%% }
-type update_node_input() :: #{binary() => any()}.

%% Example:
%% delete_member_input() :: #{}
-type delete_member_input() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_networks_output() :: #{
%%   <<"Networks">> => list(network_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_networks_output() :: #{binary() => any()}.


%% Example:
%% update_member_input() :: #{
%%   <<"LogPublishingConfiguration">> => member_log_publishing_configuration()
%% }
-type update_member_input() :: #{binary() => any()}.


%% Example:
%% managedblockchain_node() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"FrameworkAttributes">> => node_framework_attributes(),
%%   <<"Id">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LogPublishingConfiguration">> => node_log_publishing_configuration(),
%%   <<"MemberId">> => string(),
%%   <<"NetworkId">> => string(),
%%   <<"StateDB">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type managedblockchain_node() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% node_log_publishing_configuration() :: #{
%%   <<"Fabric">> => node_fabric_log_publishing_configuration()
%% }
-type node_log_publishing_configuration() :: #{binary() => any()}.


%% Example:
%% invite_action() :: #{
%%   <<"Principal">> => string()
%% }
-type invite_action() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_accessor_input() :: #{}
-type delete_accessor_input() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_member_output() :: #{
%%   <<"Member">> => member()
%% }
-type get_member_output() :: #{binary() => any()}.


%% Example:
%% member_fabric_configuration() :: #{
%%   <<"AdminPassword">> => string(),
%%   <<"AdminUsername">> => string()
%% }
-type member_fabric_configuration() :: #{binary() => any()}.


%% Example:
%% list_members_input() :: #{
%%   <<"IsOwned">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_members_input() :: #{binary() => any()}.


%% Example:
%% vote_on_proposal_input() :: #{
%%   <<"Vote">> := list(any()),
%%   <<"VoterMemberId">> := string()
%% }
-type vote_on_proposal_input() :: #{binary() => any()}.

%% Example:
%% get_proposal_input() :: #{}
-type get_proposal_input() :: #{}.


%% Example:
%% create_accessor_output() :: #{
%%   <<"AccessorId">> => string(),
%%   <<"BillingToken">> => string(),
%%   <<"NetworkType">> => list(any())
%% }
-type create_accessor_output() :: #{binary() => any()}.


%% Example:
%% accessor_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type accessor_summary() :: #{binary() => any()}.


%% Example:
%% proposal() :: #{
%%   <<"Actions">> => proposal_actions(),
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"NetworkId">> => string(),
%%   <<"NoVoteCount">> => integer(),
%%   <<"OutstandingVoteCount">> => integer(),
%%   <<"ProposalId">> => string(),
%%   <<"ProposedByMemberId">> => string(),
%%   <<"ProposedByMemberName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"YesVoteCount">> => integer()
%% }
-type proposal() :: #{binary() => any()}.


%% Example:
%% get_node_input() :: #{
%%   <<"MemberId">> => string()
%% }
-type get_node_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% network_framework_attributes() :: #{
%%   <<"Ethereum">> => network_ethereum_attributes(),
%%   <<"Fabric">> => network_fabric_attributes()
%% }
-type network_framework_attributes() :: #{binary() => any()}.


%% Example:
%% remove_action() :: #{
%%   <<"MemberId">> => string()
%% }
-type remove_action() :: #{binary() => any()}.


%% Example:
%% network() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Framework">> => list(any()),
%%   <<"FrameworkAttributes">> => network_framework_attributes(),
%%   <<"FrameworkVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"VotingPolicy">> => voting_policy(),
%%   <<"VpcEndpointServiceName">> => string()
%% }
-type network() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% proposal_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"ProposalId">> => string(),
%%   <<"ProposedByMemberId">> => string(),
%%   <<"ProposedByMemberName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type proposal_summary() :: #{binary() => any()}.


%% Example:
%% node_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Status">> => list(any())
%% }
-type node_summary() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{}
-type throttling_exception() :: #{}.


%% Example:
%% delete_node_input() :: #{
%%   <<"MemberId">> => string()
%% }
-type delete_node_input() :: #{binary() => any()}.


%% Example:
%% create_accessor_input() :: #{
%%   <<"AccessorType">> := list(any()),
%%   <<"ClientRequestToken">> := string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_accessor_input() :: #{binary() => any()}.

%% Example:
%% get_network_input() :: #{}
-type get_network_input() :: #{}.


%% Example:
%% list_invitations_output() :: #{
%%   <<"Invitations">> => list(invitation()),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_output() :: #{binary() => any()}.

%% Example:
%% delete_accessor_output() :: #{}
-type delete_accessor_output() :: #{}.


%% Example:
%% network_ethereum_attributes() :: #{
%%   <<"ChainId">> => string()
%% }
-type network_ethereum_attributes() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FrameworkAttributes">> => member_framework_attributes(),
%%   <<"Id">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LogPublishingConfiguration">> => member_log_publishing_configuration(),
%%   <<"Name">> => string(),
%%   <<"NetworkId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type member() :: #{binary() => any()}.


%% Example:
%% create_node_output() :: #{
%%   <<"NodeId">> => string()
%% }
-type create_node_output() :: #{binary() => any()}.


%% Example:
%% network_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Framework">> => list(any()),
%%   <<"FrameworkVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type network_summary() :: #{binary() => any()}.


%% Example:
%% member_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"IsOwned">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type member_summary() :: #{binary() => any()}.


%% Example:
%% node_configuration() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LogPublishingConfiguration">> => node_log_publishing_configuration(),
%%   <<"StateDB">> => list(any())
%% }
-type node_configuration() :: #{binary() => any()}.

%% Example:
%% get_member_input() :: #{}
-type get_member_input() :: #{}.


%% Example:
%% member_fabric_attributes() :: #{
%%   <<"AdminUsername">> => string(),
%%   <<"CaEndpoint">> => string()
%% }
-type member_fabric_attributes() :: #{binary() => any()}.


%% Example:
%% log_configurations() :: #{
%%   <<"Cloudwatch">> => log_configuration()
%% }
-type log_configurations() :: #{binary() => any()}.


%% Example:
%% list_invitations_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_input() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% create_node_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"MemberId">> => string(),
%%   <<"NodeConfiguration">> := node_configuration(),
%%   <<"Tags">> => map()
%% }
-type create_node_input() :: #{binary() => any()}.


%% Example:
%% log_configuration() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type log_configuration() :: #{binary() => any()}.


%% Example:
%% illegal_action_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_action_exception() :: #{binary() => any()}.


%% Example:
%% member_log_publishing_configuration() :: #{
%%   <<"Fabric">> => member_fabric_log_publishing_configuration()
%% }
-type member_log_publishing_configuration() :: #{binary() => any()}.


%% Example:
%% list_nodes_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Nodes">> => list(node_summary())
%% }
-type list_nodes_output() :: #{binary() => any()}.


%% Example:
%% resource_not_ready_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_ready_exception() :: #{binary() => any()}.


%% Example:
%% create_member_output() :: #{
%%   <<"MemberId">> => string()
%% }
-type create_member_output() :: #{binary() => any()}.

%% Example:
%% delete_node_output() :: #{}
-type delete_node_output() :: #{}.


%% Example:
%% list_accessors_output() :: #{
%%   <<"Accessors">> => list(accessor_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_accessors_output() :: #{binary() => any()}.


%% Example:
%% node_framework_attributes() :: #{
%%   <<"Ethereum">> => node_ethereum_attributes(),
%%   <<"Fabric">> => node_fabric_attributes()
%% }
-type node_framework_attributes() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% create_network_output() :: #{
%%   <<"MemberId">> => string(),
%%   <<"NetworkId">> => string()
%% }
-type create_network_output() :: #{binary() => any()}.


%% Example:
%% list_proposals_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Proposals">> => list(proposal_summary())
%% }
-type list_proposals_output() :: #{binary() => any()}.


%% Example:
%% get_node_output() :: #{
%%   <<"Node">> => node()
%% }
-type get_node_output() :: #{binary() => any()}.


%% Example:
%% member_framework_configuration() :: #{
%%   <<"Fabric">> => member_fabric_configuration()
%% }
-type member_framework_configuration() :: #{binary() => any()}.


%% Example:
%% vote_summary() :: #{
%%   <<"MemberId">> => string(),
%%   <<"MemberName">> => string(),
%%   <<"Vote">> => list(any())
%% }
-type vote_summary() :: #{binary() => any()}.

-type create_accessor_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_member_errors() ::
    too_many_tags_exception() | 
    resource_not_ready_exception() | 
    resource_already_exists_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_network_errors() ::
    too_many_tags_exception() | 
    resource_already_exists_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_node_errors() ::
    too_many_tags_exception() | 
    resource_not_ready_exception() | 
    resource_already_exists_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type create_proposal_errors() ::
    too_many_tags_exception() | 
    resource_not_ready_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_accessor_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_member_errors() ::
    resource_not_ready_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_node_errors() ::
    resource_not_ready_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_accessor_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_member_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_network_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_node_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type get_proposal_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_accessors_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_invitations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_members_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_networks_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_nodes_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_proposal_votes_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_proposals_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_tags_for_resource_errors() ::
    resource_not_ready_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type reject_invitation_errors() ::
    illegal_action_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    resource_not_ready_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type untag_resource_errors() ::
    resource_not_ready_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_member_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_node_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type vote_on_proposal_errors() ::
    illegal_action_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new accessor for use with Amazon Managed Blockchain service
%% that supports token based access.
%%
%% The accessor contains information required for token based access.
-spec create_accessor(aws_client:aws_client(), create_accessor_input()) ->
    {ok, create_accessor_output(), tuple()} |
    {error, any()} |
    {error, create_accessor_errors(), tuple()}.
create_accessor(Client, Input) ->
    create_accessor(Client, Input, []).

-spec create_accessor(aws_client:aws_client(), create_accessor_input(), proplists:proplist()) ->
    {ok, create_accessor_output(), tuple()} |
    {error, any()} |
    {error, create_accessor_errors(), tuple()}.
create_accessor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accessors"],
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

%% @doc Creates a member within a Managed Blockchain network.
%%
%% Applies only to Hyperledger Fabric.
-spec create_member(aws_client:aws_client(), binary() | list(), create_member_input()) ->
    {ok, create_member_output(), tuple()} |
    {error, any()} |
    {error, create_member_errors(), tuple()}.
create_member(Client, NetworkId, Input) ->
    create_member(Client, NetworkId, Input, []).

-spec create_member(aws_client:aws_client(), binary() | list(), create_member_input(), proplists:proplist()) ->
    {ok, create_member_output(), tuple()} |
    {error, any()} |
    {error, create_member_errors(), tuple()}.
create_member(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members"],
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

%% @doc Creates a new blockchain network using Amazon Managed Blockchain.
%%
%% Applies only to Hyperledger Fabric.
-spec create_network(aws_client:aws_client(), create_network_input()) ->
    {ok, create_network_output(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input) ->
    create_network(Client, Input, []).

-spec create_network(aws_client:aws_client(), create_network_input(), proplists:proplist()) ->
    {ok, create_network_output(), tuple()} |
    {error, any()} |
    {error, create_network_errors(), tuple()}.
create_network(Client, Input0, Options0) ->
    Method = post,
    Path = ["/networks"],
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

%% @doc Creates a node on the specified blockchain network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec create_node(aws_client:aws_client(), binary() | list(), create_node_input()) ->
    {ok, create_node_output(), tuple()} |
    {error, any()} |
    {error, create_node_errors(), tuple()}.
create_node(Client, NetworkId, Input) ->
    create_node(Client, NetworkId, Input, []).

-spec create_node(aws_client:aws_client(), binary() | list(), create_node_input(), proplists:proplist()) ->
    {ok, create_node_output(), tuple()} |
    {error, any()} |
    {error, create_node_errors(), tuple()}.
create_node(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes"],
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

%% @doc Creates a proposal for a change to the network that other members of
%% the network can vote on, for example, a proposal to add a new member to
%% the network.
%%
%% Any member can create a proposal.
%%
%% Applies only to Hyperledger Fabric.
-spec create_proposal(aws_client:aws_client(), binary() | list(), create_proposal_input()) ->
    {ok, create_proposal_output(), tuple()} |
    {error, any()} |
    {error, create_proposal_errors(), tuple()}.
create_proposal(Client, NetworkId, Input) ->
    create_proposal(Client, NetworkId, Input, []).

-spec create_proposal(aws_client:aws_client(), binary() | list(), create_proposal_input(), proplists:proplist()) ->
    {ok, create_proposal_output(), tuple()} |
    {error, any()} |
    {error, create_proposal_errors(), tuple()}.
create_proposal(Client, NetworkId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals"],
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

%% @doc Deletes an accessor that your Amazon Web Services account owns.
%%
%% An accessor object is a container that has the
%% information required for token based access to your Ethereum nodes
%% including, the
%% `BILLING_TOKEN'. After an accessor is deleted, the status of the
%% accessor changes
%% from `AVAILABLE' to `PENDING_DELETION'. An accessor in the
%% `PENDING_DELETION' state can’t be used for new WebSocket requests or
%% HTTP requests. However, WebSocket connections that were initiated while
%% the accessor was in the
%% `AVAILABLE' state remain open until they expire (up to 2 hours).
-spec delete_accessor(aws_client:aws_client(), binary() | list(), delete_accessor_input()) ->
    {ok, delete_accessor_output(), tuple()} |
    {error, any()} |
    {error, delete_accessor_errors(), tuple()}.
delete_accessor(Client, AccessorId, Input) ->
    delete_accessor(Client, AccessorId, Input, []).

-spec delete_accessor(aws_client:aws_client(), binary() | list(), delete_accessor_input(), proplists:proplist()) ->
    {ok, delete_accessor_output(), tuple()} |
    {error, any()} |
    {error, delete_accessor_errors(), tuple()}.
delete_accessor(Client, AccessorId, Input0, Options0) ->
    Method = delete,
    Path = ["/accessors/", aws_util:encode_uri(AccessorId), ""],
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

%% @doc Deletes a member.
%%
%% Deleting a member removes the member and all associated resources from the
%% network. `DeleteMember' can only be called for a specified
%% `MemberId' if the principal performing the action is associated with
%% the Amazon Web Services account that owns the member. In all other cases,
%% the `DeleteMember' action is carried out as the result of an approved
%% proposal to remove a member. If `MemberId' is the last member in a
%% network specified by the last Amazon Web Services account, the network is
%% deleted also.
%%
%% Applies only to Hyperledger Fabric.
-spec delete_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_member_input()) ->
    {ok, delete_member_output(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, MemberId, NetworkId, Input) ->
    delete_member(Client, MemberId, NetworkId, Input, []).

-spec delete_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_member_input(), proplists:proplist()) ->
    {ok, delete_member_output(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, MemberId, NetworkId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Deletes a node that your Amazon Web Services account owns.
%%
%% All data on the node is lost and cannot be recovered.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec delete_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_node_input()) ->
    {ok, delete_node_output(), tuple()} |
    {error, any()} |
    {error, delete_node_errors(), tuple()}.
delete_node(Client, NetworkId, NodeId, Input) ->
    delete_node(Client, NetworkId, NodeId, Input, []).

-spec delete_node(aws_client:aws_client(), binary() | list(), binary() | list(), delete_node_input(), proplists:proplist()) ->
    {ok, delete_node_output(), tuple()} |
    {error, any()} |
    {error, delete_node_errors(), tuple()}.
delete_node(Client, NetworkId, NodeId, Input0, Options0) ->
    Method = delete,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
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
                     {<<"memberId">>, <<"MemberId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns detailed information about an accessor.
%%
%% An accessor object is a container that has the
%% information required for token based access to your Ethereum nodes.
-spec get_accessor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_accessor_output(), tuple()} |
    {error, any()} |
    {error, get_accessor_errors(), tuple()}.
get_accessor(Client, AccessorId)
  when is_map(Client) ->
    get_accessor(Client, AccessorId, #{}, #{}).

-spec get_accessor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_accessor_output(), tuple()} |
    {error, any()} |
    {error, get_accessor_errors(), tuple()}.
get_accessor(Client, AccessorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_accessor(Client, AccessorId, QueryMap, HeadersMap, []).

-spec get_accessor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_accessor_output(), tuple()} |
    {error, any()} |
    {error, get_accessor_errors(), tuple()}.
get_accessor(Client, AccessorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accessors/", aws_util:encode_uri(AccessorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a member.
%%
%% Applies only to Hyperledger Fabric.
-spec get_member(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_member_output(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, MemberId, NetworkId)
  when is_map(Client) ->
    get_member(Client, MemberId, NetworkId, #{}, #{}).

-spec get_member(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_member_output(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap, []).

-spec get_member(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_member_output(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, MemberId, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec get_network(aws_client:aws_client(), binary() | list()) ->
    {ok, get_network_output(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId)
  when is_map(Client) ->
    get_network(Client, NetworkId, #{}, #{}).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_network_output(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_network(Client, NetworkId, QueryMap, HeadersMap, []).

-spec get_network(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_network_output(), tuple()} |
    {error, any()} |
    {error, get_network_errors(), tuple()}.
get_network(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a node.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec get_node(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_node_output(), tuple()} |
    {error, any()} |
    {error, get_node_errors(), tuple()}.
get_node(Client, NetworkId, NodeId)
  when is_map(Client) ->
    get_node(Client, NetworkId, NodeId, #{}, #{}).

-spec get_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_node_output(), tuple()} |
    {error, any()} |
    {error, get_node_errors(), tuple()}.
get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap, []).

-spec get_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_node_output(), tuple()} |
    {error, any()} |
    {error, get_node_errors(), tuple()}.
get_node(Client, NetworkId, NodeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"memberId">>, maps:get(<<"memberId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about a proposal.
%%
%% Applies only to Hyperledger Fabric.
-spec get_proposal(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_proposal_output(), tuple()} |
    {error, any()} |
    {error, get_proposal_errors(), tuple()}.
get_proposal(Client, NetworkId, ProposalId)
  when is_map(Client) ->
    get_proposal(Client, NetworkId, ProposalId, #{}, #{}).

-spec get_proposal(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_proposal_output(), tuple()} |
    {error, any()} |
    {error, get_proposal_errors(), tuple()}.
get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap, []).

-spec get_proposal(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_proposal_output(), tuple()} |
    {error, any()} |
    {error, get_proposal_errors(), tuple()}.
get_proposal(Client, NetworkId, ProposalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the accessors and their properties.
%%
%% Accessor objects are containers that have the
%% information required for token based access to your Ethereum nodes.
-spec list_accessors(aws_client:aws_client()) ->
    {ok, list_accessors_output(), tuple()} |
    {error, any()} |
    {error, list_accessors_errors(), tuple()}.
list_accessors(Client)
  when is_map(Client) ->
    list_accessors(Client, #{}, #{}).

-spec list_accessors(aws_client:aws_client(), map(), map()) ->
    {ok, list_accessors_output(), tuple()} |
    {error, any()} |
    {error, list_accessors_errors(), tuple()}.
list_accessors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accessors(Client, QueryMap, HeadersMap, []).

-spec list_accessors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_accessors_output(), tuple()} |
    {error, any()} |
    {error, list_accessors_errors(), tuple()}.
list_accessors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accessors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"networkType">>, maps:get(<<"networkType">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all invitations for the current Amazon Web Services
%% account.
%%
%% Applies only to Hyperledger Fabric.
-spec list_invitations(aws_client:aws_client()) ->
    {ok, list_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

-spec list_invitations(aws_client:aws_client(), map(), map()) ->
    {ok, list_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

-spec list_invitations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the members in a network and properties of their
%% configurations.
%%
%% Applies only to Hyperledger Fabric.
-spec list_members(aws_client:aws_client(), binary() | list()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, NetworkId)
  when is_map(Client) ->
    list_members(Client, NetworkId, #{}, #{}).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"isOwned">>, maps:get(<<"isOwned">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the networks in which the current Amazon
%% Web Services account participates.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec list_networks(aws_client:aws_client()) ->
    {ok, list_networks_output(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client)
  when is_map(Client) ->
    list_networks(Client, #{}, #{}).

-spec list_networks(aws_client:aws_client(), map(), map()) ->
    {ok, list_networks_output(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_networks(Client, QueryMap, HeadersMap, []).

-spec list_networks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_networks_output(), tuple()} |
    {error, any()} |
    {error, list_networks_errors(), tuple()}.
list_networks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"framework">>, maps:get(<<"framework">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the nodes within a network.
%%
%% Applies to Hyperledger Fabric and Ethereum.
-spec list_nodes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, NetworkId)
  when is_map(Client) ->
    list_nodes(Client, NetworkId, #{}, #{}).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_nodes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_nodes_output(), tuple()} |
    {error, any()} |
    {error, list_nodes_errors(), tuple()}.
list_nodes(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"memberId">>, maps:get(<<"memberId">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of votes for a specified proposal, including the
%% value of each vote and the unique identifier of the member that cast the
%% vote.
%%
%% Applies only to Hyperledger Fabric.
-spec list_proposal_votes(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_proposal_votes_output(), tuple()} |
    {error, any()} |
    {error, list_proposal_votes_errors(), tuple()}.
list_proposal_votes(Client, NetworkId, ProposalId)
  when is_map(Client) ->
    list_proposal_votes(Client, NetworkId, ProposalId, #{}, #{}).

-spec list_proposal_votes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_proposal_votes_output(), tuple()} |
    {error, any()} |
    {error, list_proposal_votes_errors(), tuple()}.
list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap, []).

-spec list_proposal_votes(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_proposal_votes_output(), tuple()} |
    {error, any()} |
    {error, list_proposal_votes_errors(), tuple()}.
list_proposal_votes(Client, NetworkId, ProposalId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), "/votes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of proposals for the network.
%%
%% Applies only to Hyperledger Fabric.
-spec list_proposals(aws_client:aws_client(), binary() | list()) ->
    {ok, list_proposals_output(), tuple()} |
    {error, any()} |
    {error, list_proposals_errors(), tuple()}.
list_proposals(Client, NetworkId)
  when is_map(Client) ->
    list_proposals(Client, NetworkId, #{}, #{}).

-spec list_proposals(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_proposals_output(), tuple()} |
    {error, any()} |
    {error, list_proposals_errors(), tuple()}.
list_proposals(Client, NetworkId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proposals(Client, NetworkId, QueryMap, HeadersMap, []).

-spec list_proposals(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_proposals_output(), tuple()} |
    {error, any()} |
    {error, list_proposals_errors(), tuple()}.
list_proposals(Client, NetworkId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for the specified resource.
%%
%% Each tag consists of a key and optional value.
%%
%% For more information about tags, see Tagging Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging
%% Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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

%% @doc Rejects an invitation to join a network.
%%
%% This action can be called by a principal in an Amazon Web Services account
%% that has received an invitation to create a member and join a network.
%%
%% Applies only to Hyperledger Fabric.
-spec reject_invitation(aws_client:aws_client(), binary() | list(), reject_invitation_input()) ->
    {ok, reject_invitation_output(), tuple()} |
    {error, any()} |
    {error, reject_invitation_errors(), tuple()}.
reject_invitation(Client, InvitationId, Input) ->
    reject_invitation(Client, InvitationId, Input, []).

-spec reject_invitation(aws_client:aws_client(), binary() | list(), reject_invitation_input(), proplists:proplist()) ->
    {ok, reject_invitation_output(), tuple()} |
    {error, any()} |
    {error, reject_invitation_errors(), tuple()}.
reject_invitation(Client, InvitationId, Input0, Options0) ->
    Method = delete,
    Path = ["/invitations/", aws_util:encode_uri(InvitationId), ""],
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

%% @doc Adds or overwrites the specified tags for the specified Amazon
%% Managed Blockchain resource.
%%
%% Each tag consists of a key and optional value.
%%
%% When you specify a tag key that already exists, the tag value is
%% overwritten with the new value. Use `UntagResource' to remove tag
%% keys.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a resource, your request fails and returns an error.
%%
%% For more information about tags, see Tagging Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging
%% Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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

%% @doc Removes the specified tags from the Amazon Managed Blockchain
%% resource.
%%
%% For more information about tags, see Tagging Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Ethereum Developer Guide, or Tagging
%% Resources:
%% https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html
%% in the Amazon Managed Blockchain Hyperledger Fabric Developer Guide.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a member configuration with new parameters.
%%
%% Applies only to Hyperledger Fabric.
-spec update_member(aws_client:aws_client(), binary() | list(), binary() | list(), update_member_input()) ->
    {ok, update_member_output(), tuple()} |
    {error, any()} |
    {error, update_member_errors(), tuple()}.
update_member(Client, MemberId, NetworkId, Input) ->
    update_member(Client, MemberId, NetworkId, Input, []).

-spec update_member(aws_client:aws_client(), binary() | list(), binary() | list(), update_member_input(), proplists:proplist()) ->
    {ok, update_member_output(), tuple()} |
    {error, any()} |
    {error, update_member_errors(), tuple()}.
update_member(Client, MemberId, NetworkId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/members/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Updates a node configuration with new parameters.
%%
%% Applies only to Hyperledger Fabric.
-spec update_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_input()) ->
    {ok, update_node_output(), tuple()} |
    {error, any()} |
    {error, update_node_errors(), tuple()}.
update_node(Client, NetworkId, NodeId, Input) ->
    update_node(Client, NetworkId, NodeId, Input, []).

-spec update_node(aws_client:aws_client(), binary() | list(), binary() | list(), update_node_input(), proplists:proplist()) ->
    {ok, update_node_output(), tuple()} |
    {error, any()} |
    {error, update_node_errors(), tuple()}.
update_node(Client, NetworkId, NodeId, Input0, Options0) ->
    Method = patch,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/nodes/", aws_util:encode_uri(NodeId), ""],
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

%% @doc Casts a vote for a specified `ProposalId' on behalf of a member.
%%
%% The member to vote as, specified by `VoterMemberId', must be in the
%% same Amazon Web Services account as the principal that calls the action.
%%
%% Applies only to Hyperledger Fabric.
-spec vote_on_proposal(aws_client:aws_client(), binary() | list(), binary() | list(), vote_on_proposal_input()) ->
    {ok, vote_on_proposal_output(), tuple()} |
    {error, any()} |
    {error, vote_on_proposal_errors(), tuple()}.
vote_on_proposal(Client, NetworkId, ProposalId, Input) ->
    vote_on_proposal(Client, NetworkId, ProposalId, Input, []).

-spec vote_on_proposal(aws_client:aws_client(), binary() | list(), binary() | list(), vote_on_proposal_input(), proplists:proplist()) ->
    {ok, vote_on_proposal_output(), tuple()} |
    {error, any()} |
    {error, vote_on_proposal_errors(), tuple()}.
vote_on_proposal(Client, NetworkId, ProposalId, Input0, Options0) ->
    Method = post,
    Path = ["/networks/", aws_util:encode_uri(NetworkId), "/proposals/", aws_util:encode_uri(ProposalId), "/votes"],
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
    Client1 = Client#{service => <<"managedblockchain">>},
    Host = build_host(<<"managedblockchain">>, Client1),
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
