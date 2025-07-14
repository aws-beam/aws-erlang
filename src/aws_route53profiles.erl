%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% With Amazon Route 53 Profiles you can share Route 53 configurations with
%% VPCs and AWS accounts
-module(aws_route53profiles).

-export([associate_profile/2,
         associate_profile/3,
         associate_resource_to_profile/2,
         associate_resource_to_profile/3,
         create_profile/2,
         create_profile/3,
         delete_profile/3,
         delete_profile/4,
         disassociate_profile/4,
         disassociate_profile/5,
         disassociate_resource_from_profile/4,
         disassociate_resource_from_profile/5,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_profile_association/2,
         get_profile_association/4,
         get_profile_association/5,
         get_profile_resource_association/2,
         get_profile_resource_association/4,
         get_profile_resource_association/5,
         list_profile_associations/1,
         list_profile_associations/3,
         list_profile_associations/4,
         list_profile_resource_associations/2,
         list_profile_resource_associations/4,
         list_profile_resource_associations/5,
         list_profiles/1,
         list_profiles/3,
         list_profiles/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_profile_resource_association/3,
         update_profile_resource_association/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"ModificationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type profile() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_profile_request() :: #{}
-type delete_profile_request() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_profiles_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_profiles_request() :: #{binary() => any()}.


%% Example:
%% delete_profile_response() :: #{
%%   <<"Profile">> => profile()
%% }
-type delete_profile_response() :: #{binary() => any()}.


%% Example:
%% associate_profile_request() :: #{
%%   <<"Name">> := string(),
%%   <<"ProfileId">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type associate_profile_request() :: #{binary() => any()}.


%% Example:
%% list_profile_resource_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type list_profile_resource_associations_request() :: #{binary() => any()}.


%% Example:
%% associate_resource_to_profile_request() :: #{
%%   <<"Name">> := string(),
%%   <<"ProfileId">> := string(),
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceProperties">> => string()
%% }
-type associate_resource_to_profile_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resource_from_profile_request() :: #{}
-type disassociate_resource_from_profile_request() :: #{}.


%% Example:
%% update_profile_resource_association_response() :: #{
%%   <<"ProfileResourceAssociation">> => profile_resource_association()
%% }
-type update_profile_resource_association_response() :: #{binary() => any()}.


%% Example:
%% internal_service_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.


%% Example:
%% update_profile_resource_association_request() :: #{
%%   <<"Name">> => string(),
%%   <<"ResourceProperties">> => string()
%% }
-type update_profile_resource_association_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_profile_association_request() :: #{}
-type get_profile_association_request() :: #{}.


%% Example:
%% list_profile_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type list_profile_associations_request() :: #{binary() => any()}.


%% Example:
%% associate_resource_to_profile_response() :: #{
%%   <<"ProfileResourceAssociation">> => profile_resource_association()
%% }
-type associate_resource_to_profile_response() :: #{binary() => any()}.


%% Example:
%% get_profile_resource_association_response() :: #{
%%   <<"ProfileResourceAssociation">> => profile_resource_association()
%% }
-type get_profile_resource_association_response() :: #{binary() => any()}.


%% Example:
%% create_profile_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_profile_request() :: #{binary() => any()}.


%% Example:
%% disassociate_profile_response() :: #{
%%   <<"ProfileAssociation">> => profile_association()
%% }
-type disassociate_profile_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% disassociate_resource_from_profile_response() :: #{
%%   <<"ProfileResourceAssociation">> => profile_resource_association()
%% }
-type disassociate_resource_from_profile_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% associate_profile_response() :: #{
%%   <<"ProfileAssociation">> => profile_association()
%% }
-type associate_profile_response() :: #{binary() => any()}.


%% Example:
%% get_profile_response() :: #{
%%   <<"Profile">> => profile()
%% }
-type get_profile_response() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% create_profile_response() :: #{
%%   <<"Profile">> => profile()
%% }
-type create_profile_response() :: #{binary() => any()}.


%% Example:
%% list_profile_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProfileAssociations">> => list(profile_association())
%% }
-type list_profile_associations_response() :: #{binary() => any()}.

%% Example:
%% disassociate_profile_request() :: #{}
-type disassociate_profile_request() :: #{}.


%% Example:
%% list_profile_resource_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProfileResourceAssociations">> => list(profile_resource_association())
%% }
-type list_profile_resource_associations_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% profile_resource_association() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"ModificationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceProperties">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type profile_resource_association() :: #{binary() => any()}.


%% Example:
%% resource_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_exists_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"FieldName">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_profile_resource_association_request() :: #{}
-type get_profile_resource_association_request() :: #{}.


%% Example:
%% profile_association() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"ModificationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type profile_association() :: #{binary() => any()}.

%% Example:
%% get_profile_request() :: #{}
-type get_profile_request() :: #{}.


%% Example:
%% list_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProfileSummaries">> => list(profile_summary())
%% }
-type list_profiles_response() :: #{binary() => any()}.


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
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% profile_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ShareStatus">> => list(any())
%% }
-type profile_summary() :: #{binary() => any()}.


%% Example:
%% get_profile_association_response() :: #{
%%   <<"ProfileAssociation">> => profile_association()
%% }
-type get_profile_association_response() :: #{binary() => any()}.

-type associate_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_resource_to_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type create_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception().

-type delete_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disassociate_resource_from_profile_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

-type get_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_profile_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_profile_resource_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_profile_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception().

-type list_profile_resource_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_profile_resource_association_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_service_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Associates a Route 53 Profiles profile with a VPC.
%%
%% A VPC can have only one Profile associated with it, but a Profile can be
%% associated with 1000 of VPCs (and you can request a higher quota).
%% For more information, see
%% [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities].
-spec associate_profile(aws_client:aws_client(), associate_profile_request()) ->
    {ok, associate_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_profile_errors(), tuple()}.
associate_profile(Client, Input) ->
    associate_profile(Client, Input, []).

-spec associate_profile(aws_client:aws_client(), associate_profile_request(), proplists:proplist()) ->
    {ok, associate_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_profile_errors(), tuple()}.
associate_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profileassociation"],
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

%% @doc
%% Associates a DNS reource configuration to a Route 53 Profile.
-spec associate_resource_to_profile(aws_client:aws_client(), associate_resource_to_profile_request()) ->
    {ok, associate_resource_to_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_to_profile_errors(), tuple()}.
associate_resource_to_profile(Client, Input) ->
    associate_resource_to_profile(Client, Input, []).

-spec associate_resource_to_profile(aws_client:aws_client(), associate_resource_to_profile_request(), proplists:proplist()) ->
    {ok, associate_resource_to_profile_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_to_profile_errors(), tuple()}.
associate_resource_to_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profileresourceassociation"],
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

%% @doc
%% Creates an empty Route 53 Profile.
-spec create_profile(aws_client:aws_client(), create_profile_request()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_request(), proplists:proplist()) ->
    {ok, create_profile_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profile"],
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

%% @doc
%% Deletes the specified Route 53 Profile.
%%
%% Before you can delete a profile, you must first disassociate it from all
%% VPCs.
-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_request()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileId, Input) ->
    delete_profile(Client, ProfileId, Input, []).

-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_request(), proplists:proplist()) ->
    {ok, delete_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/profile/", aws_util:encode_uri(ProfileId), ""],
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

%% @doc
%% Dissociates a specified Route 53 Profile from the specified VPC.
-spec disassociate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_profile_request()) ->
    {ok, disassociate_profile_response(), tuple()} |
    {error, any()} |
    {error, disassociate_profile_errors(), tuple()}.
disassociate_profile(Client, ProfileId, ResourceId, Input) ->
    disassociate_profile(Client, ProfileId, ResourceId, Input, []).

-spec disassociate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_profile_request(), proplists:proplist()) ->
    {ok, disassociate_profile_response(), tuple()} |
    {error, any()} |
    {error, disassociate_profile_errors(), tuple()}.
disassociate_profile(Client, ProfileId, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/profileassociation/Profileid/", aws_util:encode_uri(ProfileId), "/resourceid/", aws_util:encode_uri(ResourceId), ""],
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

%% @doc
%% Dissoaciated a specified resource, from the Route 53 Profile.
-spec disassociate_resource_from_profile(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_resource_from_profile_request()) ->
    {ok, disassociate_resource_from_profile_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_from_profile_errors(), tuple()}.
disassociate_resource_from_profile(Client, ProfileId, ResourceArn, Input) ->
    disassociate_resource_from_profile(Client, ProfileId, ResourceArn, Input, []).

-spec disassociate_resource_from_profile(aws_client:aws_client(), binary() | list(), binary() | list(), disassociate_resource_from_profile_request(), proplists:proplist()) ->
    {ok, disassociate_resource_from_profile_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_from_profile_errors(), tuple()}.
disassociate_resource_from_profile(Client, ProfileId, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/profileresourceassociation/profileid/", aws_util:encode_uri(ProfileId), "/resourcearn/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc
%% Returns information about a specified Route 53 Profile, such as whether
%% whether the Profile is shared, and the current status of the Profile.
-spec get_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId)
  when is_map(Client) ->
    get_profile(Client, ProfileId, #{}, #{}).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfileId, QueryMap, HeadersMap, []).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profile/", aws_util:encode_uri(ProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves a Route 53 Profile association for a VPC.
%%
%% A VPC can have only one Profile association, but a Profile can be
%% associated with up to 5000 VPCs.
-spec get_profile_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_association_errors(), tuple()}.
get_profile_association(Client, ProfileAssociationId)
  when is_map(Client) ->
    get_profile_association(Client, ProfileAssociationId, #{}, #{}).

-spec get_profile_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_association_errors(), tuple()}.
get_profile_association(Client, ProfileAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_association(Client, ProfileAssociationId, QueryMap, HeadersMap, []).

-spec get_profile_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_association_errors(), tuple()}.
get_profile_association(Client, ProfileAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileassociation/", aws_util:encode_uri(ProfileAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns information about a specified Route 53 Profile resource
%% association.
-spec get_profile_resource_association(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_resource_association_errors(), tuple()}.
get_profile_resource_association(Client, ProfileResourceAssociationId)
  when is_map(Client) ->
    get_profile_resource_association(Client, ProfileResourceAssociationId, #{}, #{}).

-spec get_profile_resource_association(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_resource_association_errors(), tuple()}.
get_profile_resource_association(Client, ProfileResourceAssociationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_resource_association(Client, ProfileResourceAssociationId, QueryMap, HeadersMap, []).

-spec get_profile_resource_association(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_resource_association_response(), tuple()} |
    {error, any()} |
    {error, get_profile_resource_association_errors(), tuple()}.
get_profile_resource_association(Client, ProfileResourceAssociationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileresourceassociation/", aws_util:encode_uri(ProfileResourceAssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists all the VPCs that the specified Route 53 Profile is associated with.
-spec list_profile_associations(aws_client:aws_client()) ->
    {ok, list_profile_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_associations_errors(), tuple()}.
list_profile_associations(Client)
  when is_map(Client) ->
    list_profile_associations(Client, #{}, #{}).

-spec list_profile_associations(aws_client:aws_client(), map(), map()) ->
    {ok, list_profile_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_associations_errors(), tuple()}.
list_profile_associations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_associations(Client, QueryMap, HeadersMap, []).

-spec list_profile_associations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_associations_errors(), tuple()}.
list_profile_associations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileassociations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"profileId">>, maps:get(<<"profileId">>, QueryMap, undefined)},
        {<<"resourceId">>, maps:get(<<"resourceId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists all the resource associations for the specified Route 53 Profile.
-spec list_profile_resource_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_profile_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_resource_associations_errors(), tuple()}.
list_profile_resource_associations(Client, ProfileId)
  when is_map(Client) ->
    list_profile_resource_associations(Client, ProfileId, #{}, #{}).

-spec list_profile_resource_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_profile_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_resource_associations_errors(), tuple()}.
list_profile_resource_associations(Client, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_resource_associations(Client, ProfileId, QueryMap, HeadersMap, []).

-spec list_profile_resource_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_profile_resource_associations_errors(), tuple()}.
list_profile_resource_associations(Client, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileresourceassociations/profileid/", aws_util:encode_uri(ProfileId), ""],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists all the Route 53 Profiles associated with your Amazon Web Services
%% account.
-spec list_profiles(aws_client:aws_client()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client)
  when is_map(Client) ->
    list_profiles(Client, #{}, #{}).

-spec list_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiles(Client, QueryMap, HeadersMap, []).

-spec list_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles"],
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

%% @doc
%% Lists the tags that you associated with the specified resource.
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

%% @doc
%% Adds one or more tags to a specified resource.
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
    SuccessStatusCode = 204,
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

%% @doc
%% Removes one or more tags from a specified resource.
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
    SuccessStatusCode = 204,
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

%% @doc
%% Updates the specified Route 53 Profile resourse association.
-spec update_profile_resource_association(aws_client:aws_client(), binary() | list(), update_profile_resource_association_request()) ->
    {ok, update_profile_resource_association_response(), tuple()} |
    {error, any()} |
    {error, update_profile_resource_association_errors(), tuple()}.
update_profile_resource_association(Client, ProfileResourceAssociationId, Input) ->
    update_profile_resource_association(Client, ProfileResourceAssociationId, Input, []).

-spec update_profile_resource_association(aws_client:aws_client(), binary() | list(), update_profile_resource_association_request(), proplists:proplist()) ->
    {ok, update_profile_resource_association_response(), tuple()} |
    {error, any()} |
    {error, update_profile_resource_association_errors(), tuple()}.
update_profile_resource_association(Client, ProfileResourceAssociationId, Input0, Options0) ->
    Method = patch,
    Path = ["/profileresourceassociation/", aws_util:encode_uri(ProfileResourceAssociationId), ""],
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
    Client1 = Client#{service => <<"route53profiles">>},
    Host = build_host(<<"route53profiles">>, Client1),
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
