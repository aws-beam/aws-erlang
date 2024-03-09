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

%%====================================================================
%% API
%%====================================================================

%% @doc Instantiates a capability based on the specified parameters.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
create_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capability(Client, Input, []).
create_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapability">>, Input, Options).

%% @doc Creates a partnership between a customer and a trading partner, based
%% on the supplied parameters.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
create_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partnership(Client, Input, []).
create_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnership">>, Input, Options).

%% @doc Creates a customer profile.
%%
%% You can have up to five customer profiles, each representing a distinct
%% private network. A profile is the mechanism used to create the concept of
%% a private network.
create_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_profile(Client, Input, []).
create_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProfile">>, Input, Options).

%% @doc Creates a transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
create_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transformer(Client, Input, []).
create_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransformer">>, Input, Options).

%% @doc Deletes the specified capability.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
delete_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capability(Client, Input, []).
delete_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapability">>, Input, Options).

%% @doc Deletes the specified partnership.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
delete_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partnership(Client, Input, []).
delete_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnership">>, Input, Options).

%% @doc Deletes the specified profile.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
delete_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_profile(Client, Input, []).
delete_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProfile">>, Input, Options).

%% @doc Deletes the specified transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
delete_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transformer(Client, Input, []).
delete_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransformer">>, Input, Options).

%% @doc Retrieves the details for the specified capability.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
get_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capability(Client, Input, []).
get_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapability">>, Input, Options).

%% @doc Retrieves the details for a partnership, based on the partner and
%% profile IDs specified.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
get_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partnership(Client, Input, []).
get_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartnership">>, Input, Options).

%% @doc Retrieves the details for the profile specified by the profile ID.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
get_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile(Client, Input, []).
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
get_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transformer(Client, Input, []).
get_transformer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransformer">>, Input, Options).

%% @doc Returns the details of the transformer run, based on the Transformer
%% job ID.
get_transformer_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transformer_job(Client, Input, []).
get_transformer_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransformerJob">>, Input, Options).

%% @doc Lists the capabilities associated with your Amazon Web Services
%% account for your current or specified region.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
list_capabilities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_capabilities(Client, Input, []).
list_capabilities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCapabilities">>, Input, Options).

%% @doc Lists the partnerships associated with your Amazon Web Services
%% account for your current or specified region.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
list_partnerships(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partnerships(Client, Input, []).
list_partnerships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerships">>, Input, Options).

%% @doc Lists the profiles associated with your Amazon Web Services account
%% for your current or specified region.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
list_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_profiles(Client, Input, []).
list_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProfiles">>, Input, Options).

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The resource can be a capability, partnership, profile, or transformer.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the available transformers.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
list_transformers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transformers(Client, Input, []).
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
start_transformer_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_transformer_job(Client, Input, []).
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
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Maps the input file according to the provided template file.
%%
%% The API call downloads the file contents from the Amazon S3 location, and
%% passes the contents in as a string, to the `inputFileContent'
%% parameter.
test_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_mapping(Client, Input, []).
test_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestMapping">>, Input, Options).

%% @doc Parses the input EDI (electronic data interchange) file.
%%
%% The input file has a file size limit of 250 KB.
test_parsing(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_parsing(Client, Input, []).
test_parsing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestParsing">>, Input, Options).

%% @doc Detaches a key-value pair from the specified resource, as identified
%% by its Amazon Resource Name (ARN).
%%
%% Resources are capability, partnership, profile, transformers and other
%% entities.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates some of the parameters for a capability, based on the
%% specified parameters.
%%
%% A trading capability contains the information required to transform
%% incoming EDI documents into JSON or XML outputs.
update_capability(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capability(Client, Input, []).
update_capability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapability">>, Input, Options).

%% @doc Updates some of the parameters for a partnership between a customer
%% and trading partner.
%%
%% A partnership represents the connection between you and your trading
%% partner. It ties
%% together a profile and one or more trading capabilities.
update_partnership(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partnership(Client, Input, []).
update_partnership(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartnership">>, Input, Options).

%% @doc Updates the specified parameters for a profile.
%%
%% A profile is the mechanism used to create the concept of
%% a private network.
update_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_profile(Client, Input, []).
update_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProfile">>, Input, Options).

%% @doc Updates the specified parameters for a transformer.
%%
%% A transformer
%% describes how to process the incoming EDI documents and extract the
%% necessary
%% information to the output file.
update_transformer(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_transformer(Client, Input, []).
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
