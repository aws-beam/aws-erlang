%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the Amazon CodeGuru Reviewer
%% API operations.
%%
%% CodeGuru Reviewer is a service that uses program analysis and machine
%% learning to detect potential defects that are difficult for developers to
%% find and recommends fixes in your Java and Python code.
%%
%% By proactively detecting and providing recommendations for addressing code
%% defects and implementing best practices, CodeGuru Reviewer improves the
%% overall quality and maintainability of your code base during the code
%% review stage. For more information about CodeGuru Reviewer, see the Amazon
%% CodeGuru Reviewer User Guide.
%%
%% To improve the security of your CodeGuru Reviewer API calls, you can
%% establish a private connection between your VPC and CodeGuru Reviewer by
%% creating an interface VPC endpoint. For more information, see CodeGuru
%% Reviewer and interface VPC endpoints (Amazon Web Services PrivateLink) in
%% the Amazon CodeGuru Reviewer User Guide.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Use to associate an Amazon Web Services CodeCommit repository or a
%% repostory managed by Amazon Web Services CodeStar Connections with Amazon
%% CodeGuru Reviewer.
%%
%% When you associate a repository, CodeGuru Reviewer reviews source code
%% changes in the repository's pull requests and provides automatic
%% recommendations. You can view recommendations using the CodeGuru Reviewer
%% console. For more information, see Recommendations in Amazon CodeGuru
%% Reviewer in the Amazon CodeGuru Reviewer User Guide.
%%
%% If you associate a CodeCommit or S3 repository, it must be in the same
%% Amazon Web Services Region and Amazon Web Services account where its
%% CodeGuru Reviewer code reviews are configured.
%%
%% Bitbucket and GitHub Enterprise Server repositories are managed by Amazon
%% Web Services CodeStar Connections to connect to CodeGuru Reviewer. For
%% more information, see Associate a repository in the Amazon CodeGuru
%% Reviewer User Guide.
%%
%% You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to
%% associate a GitHub repository with Amazon CodeGuru Reviewer. To associate
%% a GitHub repository, use the console. For more information, see Getting
%% started with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.
associate_repository(Client, Input) ->
    associate_repository(Client, Input, []).
associate_repository(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use to create a code review with a `CodeReviewType' of
%% `RepositoryAnalysis'.
%%
%% This type of code review analyzes all code under a specified branch in an
%% associated repository. `PullRequest' code reviews are automatically
%% triggered by a pull request.
create_code_review(Client, Input) ->
    create_code_review(Client, Input, []).
create_code_review(Client, Input0, Options0) ->
    Method = post,
    Path = ["/codereviews"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the metadata associated with the code review along with its
%% status.
describe_code_review(Client, CodeReviewArn)
  when is_map(Client) ->
    describe_code_review(Client, CodeReviewArn, #{}, #{}).

describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap, []).

describe_code_review(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews/", aws_util:encode_uri(CodeReviewArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the customer feedback for a CodeGuru Reviewer
%% recommendation.
describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId)
  when is_map(Client) ->
    describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, #{}, #{}).

describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap, []).

describe_recommendation_feedback(Client, CodeReviewArn, RecommendationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/feedback/", aws_util:encode_uri(CodeReviewArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"RecommendationId">>, RecommendationId},
        {<<"UserId">>, maps:get(<<"UserId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a `RepositoryAssociation' object that contains information
%% about the requested repository association.
describe_repository_association(Client, AssociationArn)
  when is_map(Client) ->
    describe_repository_association(Client, AssociationArn, #{}, #{}).

describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap, []).

describe_repository_association(Client, AssociationArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations/", aws_util:encode_uri(AssociationArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the association between Amazon CodeGuru Reviewer and a
%% repository.
disassociate_repository(Client, AssociationArn, Input) ->
    disassociate_repository(Client, AssociationArn, Input, []).
disassociate_repository(Client, AssociationArn, Input0, Options0) ->
    Method = delete,
    Path = ["/associations/", aws_util:encode_uri(AssociationArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all the code reviews that the customer has created in the past
%% 90 days.
list_code_reviews(Client, Type)
  when is_map(Client) ->
    list_code_reviews(Client, Type, #{}, #{}).

list_code_reviews(Client, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_code_reviews(Client, Type, QueryMap, HeadersMap, []).

list_code_reviews(Client, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Returns a list of `RecommendationFeedbackSummary' objects that
%% contain customer recommendation feedback for all CodeGuru Reviewer users.
list_recommendation_feedback(Client, CodeReviewArn)
  when is_map(Client) ->
    list_recommendation_feedback(Client, CodeReviewArn, #{}, #{}).

list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap, []).

list_recommendation_feedback(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/feedback/", aws_util:encode_uri(CodeReviewArn), "/RecommendationFeedback"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_recommendations(Client, CodeReviewArn)
  when is_map(Client) ->
    list_recommendations(Client, CodeReviewArn, #{}, #{}).

list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap, []).

list_recommendations(Client, CodeReviewArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/codereviews/", aws_util:encode_uri(CodeReviewArn), "/Recommendations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `RepositoryAssociationSummary' objects that contain
%% summary information about a repository association.
%%
%% You can filter the returned list by `ProviderType' , `Name' , `State' ,
%% and `Owner' .
list_repository_associations(Client)
  when is_map(Client) ->
    list_repository_associations(Client, #{}, #{}).

list_repository_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_repository_associations(Client, QueryMap, HeadersMap, []).

list_repository_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Stores customer feedback for a CodeGuru Reviewer recommendation.
%%
%% When this API is called again with different reactions the previous
%% feedback is overwritten.
put_recommendation_feedback(Client, Input) ->
    put_recommendation_feedback(Client, Input, []).
put_recommendation_feedback(Client, Input0, Options0) ->
    Method = put,
    Path = ["/feedback"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to an associated repository.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from an associated repository.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
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
