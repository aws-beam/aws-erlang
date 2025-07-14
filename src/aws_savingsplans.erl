%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Savings Plans are a pricing model that offer significant savings on
%% Amazon Web Services usage (for example, on Amazon EC2 instances).
%%
%% You commit to a consistent
%% amount of usage per hour, in the specified currency, for a term of one or
%% three years, and
%% receive a lower price for that usage. For more information, see the Amazon
%% Web Services
%% Savings Plans User Guide:
%% https://docs.aws.amazon.com/savingsplans/latest/userguide/.
-module(aws_savingsplans).

-export([create_savings_plan/2,
         create_savings_plan/3,
         delete_queued_savings_plan/2,
         delete_queued_savings_plan/3,
         describe_savings_plan_rates/2,
         describe_savings_plan_rates/3,
         describe_savings_plans/2,
         describe_savings_plans/3,
         describe_savings_plans_offering_rates/2,
         describe_savings_plans_offering_rates/3,
         describe_savings_plans_offerings/2,
         describe_savings_plans_offerings/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         return_savings_plan/2,
         return_savings_plan/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_savings_plans_offerings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"searchResults">> => list(savings_plan_offering())
%% }
-type describe_savings_plans_offerings_response() :: #{binary() => any()}.


%% Example:
%% describe_savings_plan_rates_request() :: #{
%%   <<"filters">> => list(savings_plan_rate_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"savingsPlanId">> := string()
%% }
-type describe_savings_plan_rates_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_rate_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type savings_plan_rate_filter() :: #{binary() => any()}.


%% Example:
%% describe_savings_plans_request() :: #{
%%   <<"filters">> => list(savings_plan_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"savingsPlanArns">> => list(string()),
%%   <<"savingsPlanIds">> => list(string()),
%%   <<"states">> => list(list(any())())
%% }
-type describe_savings_plans_request() :: #{binary() => any()}.


%% Example:
%% create_savings_plan_response() :: #{
%%   <<"savingsPlanId">> => string()
%% }
-type create_savings_plan_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% savings_plan_offering_rate() :: #{
%%   <<"operation">> => string(),
%%   <<"productType">> => list(any()),
%%   <<"properties">> => list(savings_plan_offering_rate_property()),
%%   <<"rate">> => string(),
%%   <<"savingsPlanOffering">> => parent_savings_plan_offering(),
%%   <<"serviceCode">> => list(any()),
%%   <<"unit">> => list(any()),
%%   <<"usageType">> => string()
%% }
-type savings_plan_offering_rate() :: #{binary() => any()}.


%% Example:
%% savings_plan_offering_rate_property() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type savings_plan_offering_rate_property() :: #{binary() => any()}.


%% Example:
%% savings_plan_offering() :: #{
%%   <<"currency">> => list(any()),
%%   <<"description">> => string(),
%%   <<"durationSeconds">> => float(),
%%   <<"offeringId">> => string(),
%%   <<"operation">> => string(),
%%   <<"paymentOption">> => list(any()),
%%   <<"planType">> => list(any()),
%%   <<"productTypes">> => list(list(any())()),
%%   <<"properties">> => list(savings_plan_offering_property()),
%%   <<"serviceCode">> => string(),
%%   <<"usageType">> => string()
%% }
-type savings_plan_offering() :: #{binary() => any()}.


%% Example:
%% describe_savings_plans_offering_rates_request() :: #{
%%   <<"filters">> => list(savings_plan_offering_rate_filter_element()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"operations">> => list(string()),
%%   <<"products">> => list(list(any())()),
%%   <<"savingsPlanOfferingIds">> => list(string()),
%%   <<"savingsPlanPaymentOptions">> => list(list(any())()),
%%   <<"savingsPlanTypes">> => list(list(any())()),
%%   <<"serviceCodes">> => list(list(any())()),
%%   <<"usageTypes">> => list(string())
%% }
-type describe_savings_plans_offering_rates_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_rate() :: #{
%%   <<"currency">> => list(any()),
%%   <<"operation">> => string(),
%%   <<"productType">> => list(any()),
%%   <<"properties">> => list(savings_plan_rate_property()),
%%   <<"rate">> => string(),
%%   <<"serviceCode">> => list(any()),
%%   <<"unit">> => list(any()),
%%   <<"usageType">> => string()
%% }
-type savings_plan_rate() :: #{binary() => any()}.

%% Example:
%% delete_queued_savings_plan_response() :: #{}
-type delete_queued_savings_plan_response() :: #{}.


%% Example:
%% savings_plan_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type savings_plan_filter() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_offering_property() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type savings_plan_offering_property() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% parent_savings_plan_offering() :: #{
%%   <<"currency">> => list(any()),
%%   <<"durationSeconds">> => float(),
%%   <<"offeringId">> => string(),
%%   <<"paymentOption">> => list(any()),
%%   <<"planDescription">> => string(),
%%   <<"planType">> => list(any())
%% }
-type parent_savings_plan_offering() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% return_savings_plan_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"savingsPlanId">> := string()
%% }
-type return_savings_plan_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% savings_plan() :: #{
%%   <<"commitment">> => string(),
%%   <<"currency">> => list(any()),
%%   <<"description">> => string(),
%%   <<"ec2InstanceFamily">> => string(),
%%   <<"end">> => string(),
%%   <<"offeringId">> => string(),
%%   <<"paymentOption">> => list(any()),
%%   <<"productTypes">> => list(list(any())()),
%%   <<"recurringPaymentAmount">> => string(),
%%   <<"region">> => string(),
%%   <<"returnableUntil">> => string(),
%%   <<"savingsPlanArn">> => string(),
%%   <<"savingsPlanId">> => string(),
%%   <<"savingsPlanType">> => list(any()),
%%   <<"start">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"termDurationInSeconds">> => float(),
%%   <<"upfrontPaymentAmount">> => string()
%% }
-type savings_plan() :: #{binary() => any()}.


%% Example:
%% create_savings_plan_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"commitment">> := string(),
%%   <<"purchaseTime">> => non_neg_integer(),
%%   <<"savingsPlanOfferingId">> := string(),
%%   <<"tags">> => map(),
%%   <<"upfrontPaymentAmount">> => string()
%% }
-type create_savings_plan_request() :: #{binary() => any()}.


%% Example:
%% describe_savings_plans_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"savingsPlans">> => list(savings_plan())
%% }
-type describe_savings_plans_response() :: #{binary() => any()}.


%% Example:
%% describe_savings_plans_offering_rates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"searchResults">> => list(savings_plan_offering_rate())
%% }
-type describe_savings_plans_offering_rates_response() :: #{binary() => any()}.


%% Example:
%% describe_savings_plan_rates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"savingsPlanId">> => string(),
%%   <<"searchResults">> => list(savings_plan_rate())
%% }
-type describe_savings_plan_rates_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_queued_savings_plan_request() :: #{
%%   <<"savingsPlanId">> := string()
%% }
-type delete_queued_savings_plan_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_rate_property() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => string()
%% }
-type savings_plan_rate_property() :: #{binary() => any()}.


%% Example:
%% return_savings_plan_response() :: #{
%%   <<"savingsPlanId">> => string()
%% }
-type return_savings_plan_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_offering_filter_element() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type savings_plan_offering_filter_element() :: #{binary() => any()}.


%% Example:
%% describe_savings_plans_offerings_request() :: #{
%%   <<"currencies">> => list(list(any())()),
%%   <<"descriptions">> => list(string()),
%%   <<"durations">> => list(float()),
%%   <<"filters">> => list(savings_plan_offering_filter_element()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"offeringIds">> => list(string()),
%%   <<"operations">> => list(string()),
%%   <<"paymentOptions">> => list(list(any())()),
%%   <<"planTypes">> => list(list(any())()),
%%   <<"productType">> => list(any()),
%%   <<"serviceCodes">> => list(string()),
%%   <<"usageTypes">> => list(string())
%% }
-type describe_savings_plans_offerings_request() :: #{binary() => any()}.


%% Example:
%% savings_plan_offering_rate_filter_element() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type savings_plan_offering_rate_filter_element() :: #{binary() => any()}.

-type create_savings_plan_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_queued_savings_plan_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_savings_plan_rates_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_savings_plans_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_savings_plans_offering_rates_errors() ::
    validation_exception() | 
    internal_server_exception().

-type describe_savings_plans_offerings_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type return_savings_plan_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Savings Plan.
-spec create_savings_plan(aws_client:aws_client(), create_savings_plan_request()) ->
    {ok, create_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, create_savings_plan_errors(), tuple()}.
create_savings_plan(Client, Input) ->
    create_savings_plan(Client, Input, []).

-spec create_savings_plan(aws_client:aws_client(), create_savings_plan_request(), proplists:proplist()) ->
    {ok, create_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, create_savings_plan_errors(), tuple()}.
create_savings_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSavingsPlan"],
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

%% @doc Deletes the queued purchase for the specified Savings Plan.
-spec delete_queued_savings_plan(aws_client:aws_client(), delete_queued_savings_plan_request()) ->
    {ok, delete_queued_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_queued_savings_plan_errors(), tuple()}.
delete_queued_savings_plan(Client, Input) ->
    delete_queued_savings_plan(Client, Input, []).

-spec delete_queued_savings_plan(aws_client:aws_client(), delete_queued_savings_plan_request(), proplists:proplist()) ->
    {ok, delete_queued_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_queued_savings_plan_errors(), tuple()}.
delete_queued_savings_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteQueuedSavingsPlan"],
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

%% @doc Describes the rates for the specified Savings Plan.
-spec describe_savings_plan_rates(aws_client:aws_client(), describe_savings_plan_rates_request()) ->
    {ok, describe_savings_plan_rates_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plan_rates_errors(), tuple()}.
describe_savings_plan_rates(Client, Input) ->
    describe_savings_plan_rates(Client, Input, []).

-spec describe_savings_plan_rates(aws_client:aws_client(), describe_savings_plan_rates_request(), proplists:proplist()) ->
    {ok, describe_savings_plan_rates_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plan_rates_errors(), tuple()}.
describe_savings_plan_rates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSavingsPlanRates"],
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

%% @doc Describes the specified Savings Plans.
-spec describe_savings_plans(aws_client:aws_client(), describe_savings_plans_request()) ->
    {ok, describe_savings_plans_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_errors(), tuple()}.
describe_savings_plans(Client, Input) ->
    describe_savings_plans(Client, Input, []).

-spec describe_savings_plans(aws_client:aws_client(), describe_savings_plans_request(), proplists:proplist()) ->
    {ok, describe_savings_plans_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_errors(), tuple()}.
describe_savings_plans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSavingsPlans"],
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

%% @doc Describes the offering rates for the specified Savings Plans.
-spec describe_savings_plans_offering_rates(aws_client:aws_client(), describe_savings_plans_offering_rates_request()) ->
    {ok, describe_savings_plans_offering_rates_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_offering_rates_errors(), tuple()}.
describe_savings_plans_offering_rates(Client, Input) ->
    describe_savings_plans_offering_rates(Client, Input, []).

-spec describe_savings_plans_offering_rates(aws_client:aws_client(), describe_savings_plans_offering_rates_request(), proplists:proplist()) ->
    {ok, describe_savings_plans_offering_rates_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_offering_rates_errors(), tuple()}.
describe_savings_plans_offering_rates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSavingsPlansOfferingRates"],
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

%% @doc Describes the offerings for the specified Savings Plans.
-spec describe_savings_plans_offerings(aws_client:aws_client(), describe_savings_plans_offerings_request()) ->
    {ok, describe_savings_plans_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_offerings_errors(), tuple()}.
describe_savings_plans_offerings(Client, Input) ->
    describe_savings_plans_offerings(Client, Input, []).

-spec describe_savings_plans_offerings(aws_client:aws_client(), describe_savings_plans_offerings_request(), proplists:proplist()) ->
    {ok, describe_savings_plans_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_savings_plans_offerings_errors(), tuple()}.
describe_savings_plans_offerings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSavingsPlansOfferings"],
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

%% @doc Lists the tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc Returns the specified Savings Plan.
-spec return_savings_plan(aws_client:aws_client(), return_savings_plan_request()) ->
    {ok, return_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, return_savings_plan_errors(), tuple()}.
return_savings_plan(Client, Input) ->
    return_savings_plan(Client, Input, []).

-spec return_savings_plan(aws_client:aws_client(), return_savings_plan_request(), proplists:proplist()) ->
    {ok, return_savings_plan_response(), tuple()} |
    {error, any()} |
    {error, return_savings_plan_errors(), tuple()}.
return_savings_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ReturnSavingsPlan"],
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

%% @doc Adds the specified tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc Removes the specified tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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
    Client1 = Client#{service => <<"savingsplans">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"savingsplans">>, Client1),
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

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
