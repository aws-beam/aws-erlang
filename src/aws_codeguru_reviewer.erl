%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the Amazon CodeGuru Reviewer
%% API operations.
%%
%% CodeGuru Reviewer is a service that uses program analysis and machine
%% learning to detect potential defects that are difficult for developers to
%% find and recommends fixes in your Java code.
%%
%% By proactively detecting and providing recommendations for addressing code
%% defects and implementing best practices, CodeGuru Reviewer improves the
%% overall quality and maintainability of your code base during the code
%% review stage. For more information about CodeGuru Reviewer, see the Amazon
%% CodeGuru Reviewer User Guide.
-module(aws_codeguru_reviewer).

-export([associate_repository/2,
         associate_repository/3,
         create_code_review/2,
         create_code_review/3,
         describe_code_review/2,
         describe_code_review/3,
         describe_recommendation_feedback/4,
         describe_recommendation_feedback/5,
         describe_repository_association/2,
         describe_repository_association/3,
         disassociate_repository/3,
         disassociate_repository/4,
         list_code_reviews/7,
         list_code_reviews/8,
         list_recommendation_feedback/6,
         list_recommendation_feedback/7,
         list_recommendations/4,
         list_recommendations/5,
         list_repository_associations/7,
         list_repository_associations/8,
         put_recommendation_feedback/2,
         put_recommendation_feedback/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Use to associate an AWS CodeCommit repository or a repostory managed
%% by AWS CodeStar Connections with Amazon CodeGuru Reviewer.
%%
%% When you associate a repository, CodeGuru Reviewer reviews source code
%% changes in the repository's pull requests and provides automatic
%% recommendations. You can view recommendations using the CodeGuru Reviewer
%% console. For more information, see Recommendations in Amazon CodeGuru
%% Reviewer in the Amazon CodeGuru Reviewer User Guide.
%%
%% If you associate a CodeCommit repository, it must be in the same AWS
%% Region and AWS account where its CodeGuru Reviewer code reviews are
%% configured.
%%
%% Bitbucket and GitHub Enterprise Server repositories are managed by AWS
%% CodeStar Connections to connect to CodeGuru Reviewer. For more
%% information, see Connect to a repository source provider in the Amazon
%% CodeGuru Reviewer User Guide.
%%
%% You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a
%% GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub
%% repository, use the console. For more information, see Getting started
%% with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.
associate_repository(Client, Input) ->
    associate_repository(Client, Input, []).
associate_repository(Client, Input0, Options) ->
    Method = post,
    Path = ["/associations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use to create a code review for a repository analysis.
create_code_review(Client, Input) ->
    create_code_review(Client, Input, []).
create_code_review(Client, Input0, Options) ->
    Method = post,
    Path = ["/codereviews"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the metadata associated with the code review along with its
%% status.
describe_code_review(Client, CodeReviewArn)
  when is_map(Client) ->
    describe_code_review(Client, CodeReviewArn, []).
describe_code_review(Client, CodeReviewArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/codereviews/", http_uri:encode(CodeReviewArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the customer feedback for a CodeGuru Reviewer
%% recommendation.
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, UserId)
  when is_map(Client) ->
    describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, UserId, []).
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/feedback/", http_uri:encode(CodeReviewArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"RecommendationId">>, RecommendationId},
        {<<"UserId">>, UserId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a `RepositoryAssociation` object that contains information
%% about the requested repository association.
describe_repository_association(Client, AssociationArn)
  when is_map(Client) ->
    describe_repository_association(Client, AssociationArn, []).
describe_repository_association(Client, AssociationArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/associations/", http_uri:encode(AssociationArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between Amazon CodeGuru Reviewer and a
%% repository.
disassociate_repository(Client, AssociationArn, Input) ->
    disassociate_repository(Client, AssociationArn, Input, []).
disassociate_repository(Client, AssociationArn, Input0, Options) ->
    Method = delete,
    Path = ["/associations/", http_uri:encode(AssociationArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all the code reviews that the customer has created in the past
%% 90 days.
list_code_reviews(Client, MaxResults, NextToken, ProviderTypes, RepositoryNames, States, Type)
  when is_map(Client) ->
    list_code_reviews(Client, MaxResults, NextToken, ProviderTypes, RepositoryNames, States, Type, []).
list_code_reviews(Client, MaxResults, NextToken, ProviderTypes, RepositoryNames, States, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/codereviews"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken},
        {<<"ProviderTypes">>, ProviderTypes},
        {<<"RepositoryNames">>, RepositoryNames},
        {<<"States">>, States},
        {<<"Type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `RecommendationFeedbackSummary` objects that
%% contain customer recommendation feedback for all CodeGuru Reviewer users.
list_recommendation_feedback(Client, CodeReviewArn, MaxResults, NextToken, RecommendationIds, UserIds)
  when is_map(Client) ->
    list_recommendation_feedback(Client, CodeReviewArn, MaxResults, NextToken, RecommendationIds, UserIds, []).
list_recommendation_feedback(Client, CodeReviewArn, MaxResults, NextToken, RecommendationIds, UserIds, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/feedback/", http_uri:encode(CodeReviewArn), "/RecommendationFeedback"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken},
        {<<"RecommendationIds">>, RecommendationIds},
        {<<"UserIds">>, UserIds}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the list of all recommendations for a completed code review.
list_recommendations(Client, CodeReviewArn, MaxResults, NextToken)
  when is_map(Client) ->
    list_recommendations(Client, CodeReviewArn, MaxResults, NextToken, []).
list_recommendations(Client, CodeReviewArn, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/codereviews/", http_uri:encode(CodeReviewArn), "/Recommendations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `RepositoryAssociationSummary` objects that contain
%% summary information about a repository association.
%%
%% You can filter the returned list by `ProviderType` , `Name` , `State` ,
%% and `Owner` .
list_repository_associations(Client, MaxResults, Names, NextToken, Owners, ProviderTypes, States)
  when is_map(Client) ->
    list_repository_associations(Client, MaxResults, Names, NextToken, Owners, ProviderTypes, States, []).
list_repository_associations(Client, MaxResults, Names, NextToken, Owners, ProviderTypes, States, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/associations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"Name">>, Names},
        {<<"NextToken">>, NextToken},
        {<<"Owner">>, Owners},
        {<<"ProviderType">>, ProviderTypes},
        {<<"State">>, States}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Stores customer feedback for a CodeGuru Reviewer recommendation.
%%
%% When this API is called again with different reactions the previous
%% feedback is overwritten.
put_recommendation_feedback(Client, Input) ->
    put_recommendation_feedback(Client, Input, []).
put_recommendation_feedback(Client, Input0, Options) ->
    Method = put,
    Path = ["/feedback"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"codeguru-reviewer">>},
    Host = build_host(<<"codeguru-reviewer">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
