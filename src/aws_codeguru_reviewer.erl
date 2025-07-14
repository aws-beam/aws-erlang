%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the Amazon CodeGuru Reviewer
%% API operations.
%%
%% CodeGuru Reviewer is a
%% service that uses program analysis and machine learning to detect
%% potential defects that
%% are difficult for developers to find and recommends fixes in your Java and
%% Python
%% code.
%%
%% By proactively detecting and providing recommendations for addressing code
%% defects and
%% implementing best practices, CodeGuru Reviewer improves the overall
%% quality and maintainability of
%% your code base during the code review stage. For more information about
%% CodeGuru Reviewer, see the
%%
%% Amazon CodeGuru Reviewer User Guide:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html.
%%
%% To improve the security of your CodeGuru Reviewer API calls, you can
%% establish a private connection
%% between your VPC and CodeGuru Reviewer by creating an interface VPC
%% endpoint. For
%% more information, see CodeGuru Reviewer and interface VPC
%% endpoints (Amazon Web Services PrivateLink):
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html
%% in the Amazon CodeGuru Reviewer User
%% Guide.
-module(aws_codeguru_reviewer).

-export([associate_repository/2,
         associate_repository/3,
         create_code_review/2,
         create_code_review/3,
         describe_code_review/2,
         describe_code_review/4,
         describe_code_review/5,
         describe_recommendation_feedback/3,
         describe_recommendation_feedback/5,
         describe_recommendation_feedback/6,
         describe_repository_association/2,
         describe_repository_association/4,
         describe_repository_association/5,
         disassociate_repository/3,
         disassociate_repository/4,
         list_code_reviews/2,
         list_code_reviews/4,
         list_code_reviews/5,
         list_recommendation_feedback/2,
         list_recommendation_feedback/4,
         list_recommendation_feedback/5,
         list_recommendations/2,
         list_recommendations/4,
         list_recommendations/5,
         list_repository_associations/1,
         list_repository_associations/3,
         list_repository_associations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_recommendation_feedback/2,
         put_recommendation_feedback/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% repository_association_summary() :: #{
%%   <<"AssociationArn">> => string(),
%%   <<"AssociationId">> => string(),
%%   <<"ConnectionArn">> => string(),
%%   <<"LastUpdatedTimeStamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type repository_association_summary() :: #{binary() => any()}.


%% Example:
%% describe_recommendation_feedback_request() :: #{
%%   <<"RecommendationId">> := string(),
%%   <<"UserId">> => string()
%% }
-type describe_recommendation_feedback_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% repository_association() :: #{
%%   <<"AssociationArn">> => string(),
%%   <<"AssociationId">> => string(),
%%   <<"ConnectionArn">> => string(),
%%   <<"CreatedTimeStamp">> => non_neg_integer(),
%%   <<"KMSKeyDetails">> => kms_key_details(),
%%   <<"LastUpdatedTimeStamp">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"S3RepositoryDetails">> => s3_repository_details(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string()
%% }
-type repository_association() :: #{binary() => any()}.


%% Example:
%% request_metadata() :: #{
%%   <<"EventInfo">> => event_info(),
%%   <<"RequestId">> => string(),
%%   <<"Requester">> => string(),
%%   <<"VendorName">> => list(any())
%% }
-type request_metadata() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% repository_analysis() :: #{
%%   <<"RepositoryHead">> => repository_head_source_code_type(),
%%   <<"SourceCodeType">> => source_code_type()
%% }
-type repository_analysis() :: #{binary() => any()}.


%% Example:
%% list_code_reviews_response() :: #{
%%   <<"CodeReviewSummaries">> => list(code_review_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_code_reviews_response() :: #{binary() => any()}.


%% Example:
%% recommendation_feedback_summary() :: #{
%%   <<"Reactions">> => list(list(any())()),
%%   <<"RecommendationId">> => string(),
%%   <<"UserId">> => string()
%% }
-type recommendation_feedback_summary() :: #{binary() => any()}.


%% Example:
%% code_review() :: #{
%%   <<"AnalysisTypes">> => list(list(any())()),
%%   <<"AssociationArn">> => string(),
%%   <<"CodeReviewArn">> => string(),
%%   <<"ConfigFileState">> => list(any()),
%%   <<"CreatedTimeStamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimeStamp">> => non_neg_integer(),
%%   <<"Metrics">> => metrics(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"PullRequestId">> => string(),
%%   <<"RepositoryName">> => string(),
%%   <<"SourceCodeType">> => source_code_type(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"Type">> => list(any())
%% }
-type code_review() :: #{binary() => any()}.


%% Example:
%% associate_repository_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"KMSKeyDetails">> => kms_key_details(),
%%   <<"Repository">> := repository(),
%%   <<"Tags">> => map()
%% }
-type associate_repository_request() :: #{binary() => any()}.


%% Example:
%% describe_code_review_response() :: #{
%%   <<"CodeReview">> => code_review()
%% }
-type describe_code_review_response() :: #{binary() => any()}.


%% Example:
%% describe_repository_association_response() :: #{
%%   <<"RepositoryAssociation">> => repository_association(),
%%   <<"Tags">> => map()
%% }
-type describe_repository_association_response() :: #{binary() => any()}.


%% Example:
%% metrics_summary() :: #{
%%   <<"FindingsCount">> => float(),
%%   <<"MeteredLinesOfCodeCount">> => float(),
%%   <<"SuppressedLinesOfCodeCount">> => float()
%% }
-type metrics_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_recommendation_feedback_response() :: #{
%%   <<"RecommendationFeedback">> => recommendation_feedback()
%% }
-type describe_recommendation_feedback_response() :: #{binary() => any()}.

%% Example:
%% disassociate_repository_request() :: #{}
-type disassociate_repository_request() :: #{}.


%% Example:
%% list_repository_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"Owners">> => list(string()),
%%   <<"ProviderTypes">> => list(list(any())()),
%%   <<"States">> => list(list(any())())
%% }
-type list_repository_associations_request() :: #{binary() => any()}.


%% Example:
%% s3_repository() :: #{
%%   <<"BucketName">> => string(),
%%   <<"Name">> => string()
%% }
-type s3_repository() :: #{binary() => any()}.


%% Example:
%% metrics() :: #{
%%   <<"FindingsCount">> => float(),
%%   <<"MeteredLinesOfCodeCount">> => float(),
%%   <<"SuppressedLinesOfCodeCount">> => float()
%% }
-type metrics() :: #{binary() => any()}.


%% Example:
%% third_party_source_repository() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string()
%% }
-type third_party_source_repository() :: #{binary() => any()}.


%% Example:
%% recommendation_feedback() :: #{
%%   <<"CodeReviewArn">> => string(),
%%   <<"CreatedTimeStamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimeStamp">> => non_neg_integer(),
%%   <<"Reactions">> => list(list(any())()),
%%   <<"RecommendationId">> => string(),
%%   <<"UserId">> => string()
%% }
-type recommendation_feedback() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% repository() :: #{
%%   <<"Bitbucket">> => third_party_source_repository(),
%%   <<"CodeCommit">> => code_commit_repository(),
%%   <<"GitHubEnterpriseServer">> => third_party_source_repository(),
%%   <<"S3Bucket">> => s3_repository()
%% }
-type repository() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% branch_diff_source_code_type() :: #{
%%   <<"DestinationBranchName">> => string(),
%%   <<"SourceBranchName">> => string()
%% }
-type branch_diff_source_code_type() :: #{binary() => any()}.


%% Example:
%% code_review_type() :: #{
%%   <<"AnalysisTypes">> => list(list(any())()),
%%   <<"RepositoryAnalysis">> => repository_analysis()
%% }
-type code_review_type() :: #{binary() => any()}.


%% Example:
%% create_code_review_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"RepositoryAssociationArn">> := string(),
%%   <<"Type">> := code_review_type()
%% }
-type create_code_review_request() :: #{binary() => any()}.


%% Example:
%% s3_bucket_repository() :: #{
%%   <<"Details">> => s3_repository_details(),
%%   <<"Name">> => string()
%% }
-type s3_bucket_repository() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% associate_repository_response() :: #{
%%   <<"RepositoryAssociation">> => repository_association(),
%%   <<"Tags">> => map()
%% }
-type associate_repository_response() :: #{binary() => any()}.


%% Example:
%% create_code_review_response() :: #{
%%   <<"CodeReview">> => code_review()
%% }
-type create_code_review_response() :: #{binary() => any()}.

%% Example:
%% put_recommendation_feedback_response() :: #{}
-type put_recommendation_feedback_response() :: #{}.


%% Example:
%% rule_metadata() :: #{
%%   <<"LongDescription">> => string(),
%%   <<"RuleId">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"RuleTags">> => list(string()),
%%   <<"ShortDescription">> => string()
%% }
-type rule_metadata() :: #{binary() => any()}.


%% Example:
%% source_code_type() :: #{
%%   <<"BranchDiff">> => branch_diff_source_code_type(),
%%   <<"CommitDiff">> => commit_diff_source_code_type(),
%%   <<"RepositoryHead">> => repository_head_source_code_type(),
%%   <<"RequestMetadata">> => request_metadata(),
%%   <<"S3BucketRepository">> => s3_bucket_repository()
%% }
-type source_code_type() :: #{binary() => any()}.


%% Example:
%% code_review_summary() :: #{
%%   <<"CodeReviewArn">> => string(),
%%   <<"CreatedTimeStamp">> => non_neg_integer(),
%%   <<"LastUpdatedTimeStamp">> => non_neg_integer(),
%%   <<"MetricsSummary">> => metrics_summary(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"PullRequestId">> => string(),
%%   <<"RepositoryName">> => string(),
%%   <<"SourceCodeType">> => source_code_type(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type code_review_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% disassociate_repository_response() :: #{
%%   <<"RepositoryAssociation">> => repository_association(),
%%   <<"Tags">> => map()
%% }
-type disassociate_repository_response() :: #{binary() => any()}.


%% Example:
%% commit_diff_source_code_type() :: #{
%%   <<"DestinationCommit">> => string(),
%%   <<"MergeBaseCommit">> => string(),
%%   <<"SourceCommit">> => string()
%% }
-type commit_diff_source_code_type() :: #{binary() => any()}.


%% Example:
%% code_artifacts() :: #{
%%   <<"BuildArtifactsObjectKey">> => string(),
%%   <<"SourceCodeArtifactsObjectKey">> => string()
%% }
-type code_artifacts() :: #{binary() => any()}.


%% Example:
%% s3_repository_details() :: #{
%%   <<"BucketName">> => string(),
%%   <<"CodeArtifacts">> => code_artifacts()
%% }
-type s3_repository_details() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% put_recommendation_feedback_request() :: #{
%%   <<"CodeReviewArn">> := string(),
%%   <<"Reactions">> := list(list(any())()),
%%   <<"RecommendationId">> := string()
%% }
-type put_recommendation_feedback_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_code_reviews_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProviderTypes">> => list(list(any())()),
%%   <<"RepositoryNames">> => list(string()),
%%   <<"States">> => list(list(any())()),
%%   <<"Type">> := list(any())
%% }
-type list_code_reviews_request() :: #{binary() => any()}.


%% Example:
%% kms_key_details() :: #{
%%   <<"EncryptionOption">> => list(any()),
%%   <<"KMSKeyId">> => string()
%% }
-type kms_key_details() :: #{binary() => any()}.


%% Example:
%% list_recommendation_feedback_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RecommendationIds">> => list(string()),
%%   <<"UserIds">> => list(string())
%% }
-type list_recommendation_feedback_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% repository_head_source_code_type() :: #{
%%   <<"BranchName">> => string()
%% }
-type repository_head_source_code_type() :: #{binary() => any()}.


%% Example:
%% list_repository_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RepositoryAssociationSummaries">> => list(repository_association_summary())
%% }
-type list_repository_associations_response() :: #{binary() => any()}.


%% Example:
%% code_commit_repository() :: #{
%%   <<"Name">> => string()
%% }
-type code_commit_repository() :: #{binary() => any()}.


%% Example:
%% recommendation_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"EndLine">> => integer(),
%%   <<"FilePath">> => string(),
%%   <<"RecommendationCategory">> => list(any()),
%%   <<"RecommendationId">> => string(),
%%   <<"RuleMetadata">> => rule_metadata(),
%%   <<"Severity">> => list(any()),
%%   <<"StartLine">> => integer()
%% }
-type recommendation_summary() :: #{binary() => any()}.


%% Example:
%% list_recommendation_feedback_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecommendationFeedbackSummaries">> => list(recommendation_feedback_summary())
%% }
-type list_recommendation_feedback_response() :: #{binary() => any()}.

%% Example:
%% describe_code_review_request() :: #{}
-type describe_code_review_request() :: #{}.


%% Example:
%% list_recommendations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RecommendationSummaries">> => list(recommendation_summary())
%% }
-type list_recommendations_response() :: #{binary() => any()}.


%% Example:
%% event_info() :: #{
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type event_info() :: #{binary() => any()}.

%% Example:
%% describe_repository_association_request() :: #{}
-type describe_repository_association_request() :: #{}.


%% Example:
%% list_recommendations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_recommendations_request() :: #{binary() => any()}.

-type associate_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_code_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_code_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_recommendation_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_repository_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type disassociate_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type list_code_reviews_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendation_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_repository_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_recommendation_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Use to associate an Amazon Web Services CodeCommit repository or a
%% repository managed by Amazon Web Services
%% CodeStar Connections with Amazon CodeGuru Reviewer.
%%
%% When you associate a repository, CodeGuru Reviewer reviews
%% source code changes in the repository's pull requests and provides
%% automatic
%% recommendations. You can view recommendations using the CodeGuru Reviewer
%% console. For more
%% information, see Recommendations in
%% Amazon CodeGuru Reviewer:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html
%% in the Amazon CodeGuru Reviewer User Guide.
%%
%% If you associate a CodeCommit or S3 repository, it must be in the same
%% Amazon Web Services Region and
%% Amazon Web Services account where its CodeGuru Reviewer code reviews are
%% configured.
%%
%% Bitbucket and GitHub Enterprise Server repositories are managed by Amazon
%% Web Services CodeStar
%% Connections to connect to CodeGuru Reviewer. For more information, see
%% Associate a
%% repository:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html
%% in the Amazon CodeGuru Reviewer User Guide.
%%
%% You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to
%% associate a GitHub repository with
%% Amazon CodeGuru Reviewer. To associate a GitHub repository, use the
%% console. For more information, see
%% Getting started with
%% CodeGuru Reviewer:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html
%% in the CodeGuru Reviewer User Guide.
-spec associate_repository(aws_client:aws_client(), associate_repository_request()) ->
    {ok, associate_repository_response(), tuple()} |
    {error, any()} |
    {error, associate_repository_errors(), tuple()}.
associate_repository(Client, Input) ->
    associate_repository(Client, Input, []).

-spec associate_repository(aws_client:aws_client(), associate_repository_request(), proplists:proplist()) ->
    {ok, associate_repository_response(), tuple()} |
    {error, any()} |
    {error, associate_repository_errors(), tuple()}.
associate_repository(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associations"],
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

%% @doc Use to create a code review with a CodeReviewType:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html
%% of
%% `RepositoryAnalysis'.
%%
%% This type of code review analyzes all code under a
%% specified branch in an associated repository. `PullRequest' code
%% reviews are
%% automatically triggered by a pull request.
-spec create_code_review(aws_client:aws_client(), create_code_review_request()) ->
    {ok, create_code_review_response(), tuple()} |
    {error, any()} |
    {error, create_code_review_errors(), tuple()}.
create_code_review(Client, Input) ->
    create_code_review(Client, Input, []).

-spec create_code_review(aws_client:aws_client(), create_code_review_request(), proplists:proplist()) ->
    {ok, create_code_review_response(), tuple()} |
    {error, any()} |
    {error, create_code_review_errors(), tuple()}.
create_code_review(Client, Input0, Options0) ->
    Method = post,
    Path = ["/codereviews"],
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

%% @doc Returns the metadata associated with the code review along with its
%% status.
-spec describe_code_review(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_code_review_response(), tuple()} |
    {error, any()} |
    {error, describe_code_review_errors(), tuple()}.
describe_code_review(Client, CodeReviewArn)
  when is_map(Client) ->
    describe_code_review(Client, CodeReviewArn, #{}, #{}).

-spec describe_code_review(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_code_review_response(), tuple()} |
    {error, any()} |
    {error, describe_code_review_errors(), tuple()}.
describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap, []).

-spec describe_code_review(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_code_review_response(), tuple()} |
    {error, any()} |
    {error, describe_code_review_errors(), tuple()}.
describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews/", aws_util:encode_uri(CodeReviewArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the customer feedback for a CodeGuru Reviewer
%% recommendation.
-spec describe_recommendation_feedback(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_feedback_errors(), tuple()}.
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId)
  when is_map(Client) ->
    describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, #{}, #{}).

-spec describe_recommendation_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_feedback_errors(), tuple()}.
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap, []).

-spec describe_recommendation_feedback(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, describe_recommendation_feedback_errors(), tuple()}.
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/feedback/", aws_util:encode_uri(CodeReviewArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"RecommendationId">>, RecommendationId},
        {<<"UserId">>, maps:get(<<"UserId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a RepositoryAssociation:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
%% object that contains information about the requested
%% repository association.
-spec describe_repository_association(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_repository_association_response(), tuple()} |
    {error, any()} |
    {error, describe_repository_association_errors(), tuple()}.
describe_repository_association(Client, AssociationArn)
  when is_map(Client) ->
    describe_repository_association(Client, AssociationArn, #{}, #{}).

-spec describe_repository_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_repository_association_response(), tuple()} |
    {error, any()} |
    {error, describe_repository_association_errors(), tuple()}.
describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap, []).

-spec describe_repository_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_repository_association_response(), tuple()} |
    {error, any()} |
    {error, describe_repository_association_errors(), tuple()}.
describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations/", aws_util:encode_uri(AssociationArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between Amazon CodeGuru Reviewer and a
%% repository.
-spec disassociate_repository(aws_client:aws_client(), binary() | list(), disassociate_repository_request()) ->
    {ok, disassociate_repository_response(), tuple()} |
    {error, any()} |
    {error, disassociate_repository_errors(), tuple()}.
disassociate_repository(Client, AssociationArn, Input) ->
    disassociate_repository(Client, AssociationArn, Input, []).

-spec disassociate_repository(aws_client:aws_client(), binary() | list(), disassociate_repository_request(), proplists:proplist()) ->
    {ok, disassociate_repository_response(), tuple()} |
    {error, any()} |
    {error, disassociate_repository_errors(), tuple()}.
disassociate_repository(Client, AssociationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/associations/", aws_util:encode_uri(AssociationArn), ""],
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

%% @doc Lists all the code reviews that the customer has created in the past
%% 90 days.
-spec list_code_reviews(aws_client:aws_client(), binary() | list()) ->
    {ok, list_code_reviews_response(), tuple()} |
    {error, any()} |
    {error, list_code_reviews_errors(), tuple()}.
list_code_reviews(Client, Type)
  when is_map(Client) ->
    list_code_reviews(Client, Type, #{}, #{}).

-spec list_code_reviews(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_code_reviews_response(), tuple()} |
    {error, any()} |
    {error, list_code_reviews_errors(), tuple()}.
list_code_reviews(Client, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_reviews(Client, Type, QueryMap, HeadersMap, []).

-spec list_code_reviews(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_code_reviews_response(), tuple()} |
    {error, any()} |
    {error, list_code_reviews_errors(), tuple()}.
list_code_reviews(Client, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProviderTypes">>, maps:get(<<"ProviderTypes">>, QueryMap, undefined)},
        {<<"RepositoryNames">>, maps:get(<<"RepositoryNames">>, QueryMap, undefined)},
        {<<"States">>, maps:get(<<"States">>, QueryMap, undefined)},
        {<<"Type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of RecommendationFeedbackSummary:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html
%% objects that contain customer recommendation
%% feedback for all CodeGuru Reviewer users.
-spec list_recommendation_feedback(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_feedback_errors(), tuple()}.
list_recommendation_feedback(Client, CodeReviewArn)
  when is_map(Client) ->
    list_recommendation_feedback(Client, CodeReviewArn, #{}, #{}).

-spec list_recommendation_feedback(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_feedback_errors(), tuple()}.
list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap, []).

-spec list_recommendation_feedback(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_feedback_errors(), tuple()}.
list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/feedback/", aws_util:encode_uri(CodeReviewArn), "/RecommendationFeedback"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"RecommendationIds">>, maps:get(<<"RecommendationIds">>, QueryMap, undefined)},
        {<<"UserIds">>, maps:get(<<"UserIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of all recommendations for a completed code review.
-spec list_recommendations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, CodeReviewArn)
  when is_map(Client) ->
    list_recommendations(Client, CodeReviewArn, #{}, #{}).

-spec list_recommendations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap, []).

-spec list_recommendations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews/", aws_util:encode_uri(CodeReviewArn), "/Recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of RepositoryAssociationSummary:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html
%% objects that contain summary information about a
%% repository association.
%%
%% You can filter the returned list by ProviderType:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType,
%% Name:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name,
%% State:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State,
%% and Owner:
%% https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner.
-spec list_repository_associations(aws_client:aws_client()) ->
    {ok, list_repository_associations_response(), tuple()} |
    {error, any()} |
    {error, list_repository_associations_errors(), tuple()}.
list_repository_associations(Client)
  when is_map(Client) ->
    list_repository_associations(Client, #{}, #{}).

-spec list_repository_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_repository_associations_response(), tuple()} |
    {error, any()} |
    {error, list_repository_associations_errors(), tuple()}.
list_repository_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_repository_associations(Client, QueryMap, HeadersMap, []).

-spec list_repository_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_repository_associations_response(), tuple()} |
    {error, any()} |
    {error, list_repository_associations_errors(), tuple()}.
list_repository_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"Name">>, maps:get(<<"Name">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"Owner">>, maps:get(<<"Owner">>, QueryMap, undefined)},
        {<<"ProviderType">>, maps:get(<<"ProviderType">>, QueryMap, undefined)},
        {<<"State">>, maps:get(<<"State">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of tags associated with an associated repository
%% resource.
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

%% @doc Stores customer feedback for a CodeGuru Reviewer recommendation.
%%
%% When this API is called again with
%% different reactions the previous feedback is overwritten.
-spec put_recommendation_feedback(aws_client:aws_client(), put_recommendation_feedback_request()) ->
    {ok, put_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_recommendation_feedback_errors(), tuple()}.
put_recommendation_feedback(Client, Input) ->
    put_recommendation_feedback(Client, Input, []).

-spec put_recommendation_feedback(aws_client:aws_client(), put_recommendation_feedback_request(), proplists:proplist()) ->
    {ok, put_recommendation_feedback_response(), tuple()} |
    {error, any()} |
    {error, put_recommendation_feedback_errors(), tuple()}.
put_recommendation_feedback(Client, Input0, Options0) ->
    Method = put,
    Path = ["/feedback"],
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

%% @doc Adds one or more tags to an associated repository.
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

%% @doc Removes a tag from an associated repository.
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
    Client1 = Client#{service => <<"codeguru-reviewer">>},
    Host = build_host(<<"codeguru-reviewer">>, Client1),
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
