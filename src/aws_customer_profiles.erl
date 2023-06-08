%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect Customer Profiles
%%
%% Amazon Connect Customer Profiles is a unified customer profile for your
%% contact center that has pre-built connectors powered by AppFlow that make
%% it easy to combine customer information from third party applications,
%% such as Salesforce (CRM), ServiceNow (ITSM), and your enterprise resource
%% planning (ERP), with contact history from your Amazon Connect contact
%% center.
%%
%% If you're new to Amazon Connect, you might find it helpful to review
%% the Amazon Connect Administrator Guide.
-module(aws_customer_profiles).

-export([add_profile_key/3,
         add_profile_key/4,
         create_calculated_attribute_definition/4,
         create_calculated_attribute_definition/5,
         create_domain/3,
         create_domain/4,
         create_event_stream/4,
         create_event_stream/5,
         create_integration_workflow/3,
         create_integration_workflow/4,
         create_profile/3,
         create_profile/4,
         delete_calculated_attribute_definition/4,
         delete_calculated_attribute_definition/5,
         delete_domain/3,
         delete_domain/4,
         delete_event_stream/4,
         delete_event_stream/5,
         delete_integration/3,
         delete_integration/4,
         delete_profile/3,
         delete_profile/4,
         delete_profile_key/3,
         delete_profile_key/4,
         delete_profile_object/3,
         delete_profile_object/4,
         delete_profile_object_type/4,
         delete_profile_object_type/5,
         delete_workflow/4,
         delete_workflow/5,
         get_auto_merging_preview/3,
         get_auto_merging_preview/4,
         get_calculated_attribute_definition/3,
         get_calculated_attribute_definition/5,
         get_calculated_attribute_definition/6,
         get_calculated_attribute_for_profile/4,
         get_calculated_attribute_for_profile/6,
         get_calculated_attribute_for_profile/7,
         get_domain/2,
         get_domain/4,
         get_domain/5,
         get_event_stream/3,
         get_event_stream/5,
         get_event_stream/6,
         get_identity_resolution_job/3,
         get_identity_resolution_job/5,
         get_identity_resolution_job/6,
         get_integration/3,
         get_integration/4,
         get_matches/2,
         get_matches/4,
         get_matches/5,
         get_profile_object_type/3,
         get_profile_object_type/5,
         get_profile_object_type/6,
         get_profile_object_type_template/2,
         get_profile_object_type_template/4,
         get_profile_object_type_template/5,
         get_workflow/3,
         get_workflow/5,
         get_workflow/6,
         get_workflow_steps/3,
         get_workflow_steps/5,
         get_workflow_steps/6,
         list_account_integrations/2,
         list_account_integrations/3,
         list_calculated_attribute_definitions/2,
         list_calculated_attribute_definitions/4,
         list_calculated_attribute_definitions/5,
         list_calculated_attributes_for_profile/3,
         list_calculated_attributes_for_profile/5,
         list_calculated_attributes_for_profile/6,
         list_domains/1,
         list_domains/3,
         list_domains/4,
         list_event_streams/2,
         list_event_streams/4,
         list_event_streams/5,
         list_identity_resolution_jobs/2,
         list_identity_resolution_jobs/4,
         list_identity_resolution_jobs/5,
         list_integrations/2,
         list_integrations/4,
         list_integrations/5,
         list_profile_object_type_templates/1,
         list_profile_object_type_templates/3,
         list_profile_object_type_templates/4,
         list_profile_object_types/2,
         list_profile_object_types/4,
         list_profile_object_types/5,
         list_profile_objects/3,
         list_profile_objects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workflows/3,
         list_workflows/4,
         merge_profiles/3,
         merge_profiles/4,
         put_integration/3,
         put_integration/4,
         put_profile_object/3,
         put_profile_object/4,
         put_profile_object_type/4,
         put_profile_object_type/5,
         search_profiles/3,
         search_profiles/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_calculated_attribute_definition/4,
         update_calculated_attribute_definition/5,
         update_domain/3,
         update_domain/4,
         update_profile/3,
         update_profile/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a new key value with a specific profile, such as a Contact
%% Record ContactId.
%%
%% A profile object can have a single unique key and any number of additional
%% keys that can be used to identify the profile that it belongs to.
add_profile_key(Client, DomainName, Input) ->
    add_profile_key(Client, DomainName, Input, []).
add_profile_key(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/keys"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new calculated attribute definition.
%%
%% After creation, new object data ingested into Customer Profiles will be
%% included in the calculated attribute, which can be retrieved for a profile
%% using the GetCalculatedAttributeForProfile API. Defining a calculated
%% attribute makes it available for all profiles within a domain. Each
%% calculated attribute can only reference one `ObjectType' and at most,
%% two fields from that `ObjectType'.
create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).
create_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a domain, which is a container for all customer data, such as
%% customer profile attributes, object types, profile keys, and encryption
%% keys.
%%
%% You can create multiple domains, and each domain can have multiple
%% third-party integrations.
%%
%% Each Amazon Connect instance can be associated with only one domain.
%% Multiple Amazon Connect instances can be associated with one domain.
%%
%% Use this API or UpdateDomain to enable identity resolution: set
%% `Matching' to true.
%%
%% To prevent cross-service impersonation when you call this API, see
%% Cross-service confused deputy prevention for sample policies that you
%% should apply.
create_domain(Client, DomainName, Input) ->
    create_domain(Client, DomainName, Input, []).
create_domain(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an event stream, which is a subscription to real-time events,
%% such as when profiles are created and updated through Amazon Connect
%% Customer Profiles.
%%
%% Each event stream can be associated with only one Kinesis Data Stream
%% destination in the same region and Amazon Web Services account as the
%% customer profiles domain
create_event_stream(Client, DomainName, EventStreamName, Input) ->
    create_event_stream(Client, DomainName, EventStreamName, Input, []).
create_event_stream(Client, DomainName, EventStreamName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an integration workflow.
%%
%% An integration workflow is an async process which ingests historic data
%% and sets up an integration for ongoing updates. The supported Amazon
%% AppFlow sources are Salesforce, ServiceNow, and Marketo.
create_integration_workflow(Client, DomainName, Input) ->
    create_integration_workflow(Client, DomainName, Input, []).
create_integration_workflow(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/integrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a standard profile.
%%
%% A standard profile represents the following attributes for a customer
%% profile in a domain.
create_profile(Client, DomainName, Input) ->
    create_profile(Client, DomainName, Input, []).
create_profile(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing calculated attribute definition.
%%
%% Note that deleting a default calculated attribute is possible, however
%% once deleted, you will be unable to undo that action and will need to
%% recreate it on your own using the CreateCalculatedAttributeDefinition API
%% if you want it back.
delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).
delete_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specific domain and all of its customer data, such as
%% customer profile attributes and their related objects.
delete_domain(Client, DomainName, Input) ->
    delete_domain(Client, DomainName, Input, []).
delete_domain(Client, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables and deletes the specified event stream.
delete_event_stream(Client, DomainName, EventStreamName, Input) ->
    delete_event_stream(Client, DomainName, EventStreamName, Input, []).
delete_event_stream(Client, DomainName, EventStreamName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an integration from a specific domain.
delete_integration(Client, DomainName, Input) ->
    delete_integration(Client, DomainName, Input, []).
delete_integration(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the standard customer profile and all data pertaining to the
%% profile.
delete_profile(Client, DomainName, Input) ->
    delete_profile(Client, DomainName, Input, []).
delete_profile(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a searchable key from a customer profile.
delete_profile_key(Client, DomainName, Input) ->
    delete_profile_key(Client, DomainName, Input, []).
delete_profile_key(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/keys/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an object associated with a profile of a given
%% ProfileObjectType.
delete_profile_object(Client, DomainName, Input) ->
    delete_profile_object(Client, DomainName, Input, []).
delete_profile_object(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects/delete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a ProfileObjectType from a specific domain as well as removes
%% all the ProfileObjects of that type.
%%
%% It also disables integrations from this specific ProfileObjectType. In
%% addition, it scrubs all of the fields of the standard profile that were
%% populated from this ProfileObjectType.
delete_profile_object_type(Client, DomainName, ObjectTypeName, Input) ->
    delete_profile_object_type(Client, DomainName, ObjectTypeName, Input, []).
delete_profile_object_type(Client, DomainName, ObjectTypeName, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified workflow and all its corresponding resources.
%%
%% This is an async process.
delete_workflow(Client, DomainName, WorkflowId, Input) ->
    delete_workflow(Client, DomainName, WorkflowId, Input, []).
delete_workflow(Client, DomainName, WorkflowId, Input0, Options0) ->
    Method = delete,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tests the auto-merging settings of your Identity Resolution Job
%% without merging your data.
%%
%% It randomly selects a sample of matching groups from the existing matching
%% results, and applies the automerging settings that you provided. You can
%% then view the number of profiles in the sample, the number of matches, and
%% the number of profiles identified to be merged. This enables you to
%% evaluate the accuracy of the attributes in your matching list.
%%
%% You can't view which profiles are matched and would be merged.
%%
%% We strongly recommend you use this API to do a dry run of the automerging
%% process before running the Identity Resolution Job. Include at least two
%% matching attributes. If your matching list includes too few attributes
%% (such as only `FirstName' or only `LastName'), there may be a
%% large number of matches. This increases the chances of erroneous merges.
get_auto_merging_preview(Client, DomainName, Input) ->
    get_auto_merging_preview(Client, DomainName, Input, []).
get_auto_merging_preview(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs/auto-merging-preview"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides more information on a calculated attribute definition for
%% Customer Profiles.
get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName)
  when is_map(Client) ->
    get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, #{}, #{}).

get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap, []).

get_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a calculated attribute for a customer profile.
get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId)
  when is_map(Client) ->
    get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, #{}, #{}).

get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap, []).

get_calculated_attribute_for_profile(Client, CalculatedAttributeName, DomainName, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profile/", aws_util:encode_uri(ProfileId), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific domain.
get_domain(Client, DomainName)
  when is_map(Client) ->
    get_domain(Client, DomainName, #{}, #{}).

get_domain(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain(Client, DomainName, QueryMap, HeadersMap, []).

get_domain(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified event stream in a specific
%% domain.
get_event_stream(Client, DomainName, EventStreamName)
  when is_map(Client) ->
    get_event_stream(Client, DomainName, EventStreamName, #{}, #{}).

get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap, []).

get_event_stream(Client, DomainName, EventStreamName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams/", aws_util:encode_uri(EventStreamName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an Identity Resolution Job in a specific
%% domain.
%%
%% Identity Resolution Jobs are set up using the Amazon Connect admin
%% console. For more information, see Use Identity Resolution to consolidate
%% similar profiles.
get_identity_resolution_job(Client, DomainName, JobId)
  when is_map(Client) ->
    get_identity_resolution_job(Client, DomainName, JobId, #{}, #{}).

get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap, []).

get_identity_resolution_job(Client, DomainName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an integration for a domain.
get_integration(Client, DomainName, Input) ->
    get_integration(Client, DomainName, Input, []).
get_integration(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Before calling this API, use CreateDomain or UpdateDomain to enable
%% identity resolution: set `Matching' to true.
%%
%% GetMatches returns potentially matching profiles, based on the results of
%% the latest run of a machine learning process.
%%
%% The process of matching duplicate profiles. If `Matching' =
%% `true', Amazon Connect Customer Profiles starts a weekly batch process
%% called Identity Resolution Job. If you do not specify a date and time for
%% Identity Resolution Job to run, by default it runs every Saturday at 12AM
%% UTC to detect duplicate profiles in your domains.
%%
%% After the Identity Resolution Job completes, use the GetMatches API to
%% return and review the results. Or, if you have configured
%% `ExportingConfig' in the `MatchingRequest', you can download the
%% results from S3.
%%
%% Amazon Connect uses the following profile attributes to identify matches:
%%
%% <ul> <li> PhoneNumber
%%
%% </li> <li> HomePhoneNumber
%%
%% </li> <li> BusinessPhoneNumber
%%
%% </li> <li> MobilePhoneNumber
%%
%% </li> <li> EmailAddress
%%
%% </li> <li> PersonalEmailAddress
%%
%% </li> <li> BusinessEmailAddress
%%
%% </li> <li> FullName
%%
%% </li> </ul> For example, two or more profiles—with spelling mistakes such
%% as John Doe and Jhn Doe, or different casing email addresses such as
%% JOHN_DOE@ANYCOMPANY.COM and johndoe@anycompany.com, or different phone
%% number formats such as 555-010-0000 and +1-555-010-0000—can be detected as
%% belonging to the same customer John Doe and merged into a unified profile.
get_matches(Client, DomainName)
  when is_map(Client) ->
    get_matches(Client, DomainName, #{}, #{}).

get_matches(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matches(Client, DomainName, QueryMap, HeadersMap, []).

get_matches(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/matches"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the object types for a specific domain.
get_profile_object_type(Client, DomainName, ObjectTypeName)
  when is_map(Client) ->
    get_profile_object_type(Client, DomainName, ObjectTypeName, #{}, #{}).

get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, []).

get_profile_object_type(Client, DomainName, ObjectTypeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the template information for a specific object type.
%%
%% A template is a predefined ProfileObjectType, such as “Salesforce-Account”
%% or “Salesforce-Contact.” When a user sends a ProfileObject, using the
%% PutProfileObject API, with an ObjectTypeName that matches one of the
%% TemplateIds, it uses the mappings from the template.
get_profile_object_type_template(Client, TemplateId)
  when is_map(Client) ->
    get_profile_object_type_template(Client, TemplateId, #{}, #{}).

get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap, []).

get_profile_object_type_template(Client, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details of specified workflow.
get_workflow(Client, DomainName, WorkflowId)
  when is_map(Client) ->
    get_workflow(Client, DomainName, WorkflowId, #{}, #{}).

get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap, []).

get_workflow(Client, DomainName, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get granular list of steps in workflow.
get_workflow_steps(Client, DomainName, WorkflowId)
  when is_map(Client) ->
    get_workflow_steps(Client, DomainName, WorkflowId, #{}, #{}).

get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap, []).

get_workflow_steps(Client, DomainName, WorkflowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows/", aws_util:encode_uri(WorkflowId), "/steps"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the integrations associated to a specific URI in the AWS
%% account.
list_account_integrations(Client, Input) ->
    list_account_integrations(Client, Input, []).
list_account_integrations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/integrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"include-hidden">>, <<"IncludeHidden">>},
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists calculated attribute definitions for Customer Profiles
list_calculated_attribute_definitions(Client, DomainName)
  when is_map(Client) ->
    list_calculated_attribute_definitions(Client, DomainName, #{}, #{}).

list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap, []).

list_calculated_attribute_definitions(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of calculated attributes for a customer profile.
list_calculated_attributes_for_profile(Client, DomainName, ProfileId)
  when is_map(Client) ->
    list_calculated_attributes_for_profile(Client, DomainName, ProfileId, #{}, #{}).

list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap, []).

list_calculated_attributes_for_profile(Client, DomainName, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profile/", aws_util:encode_uri(ProfileId), "/calculated-attributes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the domains for an AWS account that have been
%% created.
list_domains(Client)
  when is_map(Client) ->
    list_domains(Client, #{}, #{}).

list_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains(Client, QueryMap, HeadersMap, []).

list_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the event streams in a specific domain.
list_event_streams(Client, DomainName)
  when is_map(Client) ->
    list_event_streams(Client, DomainName, #{}, #{}).

list_event_streams(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_streams(Client, DomainName, QueryMap, HeadersMap, []).

list_event_streams(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/event-streams"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the Identity Resolution Jobs in your domain.
%%
%% The response sorts the list by `JobStartTime'.
list_identity_resolution_jobs(Client, DomainName)
  when is_map(Client) ->
    list_identity_resolution_jobs(Client, DomainName, #{}, #{}).

list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap, []).

list_identity_resolution_jobs(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/identity-resolution-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the integrations in your domain.
list_integrations(Client, DomainName)
  when is_map(Client) ->
    list_integrations(Client, DomainName, #{}, #{}).

list_integrations(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_integrations(Client, DomainName, QueryMap, HeadersMap, []).

list_integrations(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"include-hidden">>, maps:get(<<"include-hidden">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the template information for object types.
list_profile_object_type_templates(Client)
  when is_map(Client) ->
    list_profile_object_type_templates(Client, #{}, #{}).

list_profile_object_type_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_object_type_templates(Client, QueryMap, HeadersMap, []).

list_profile_object_type_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the templates available within the service.
list_profile_object_types(Client, DomainName)
  when is_map(Client) ->
    list_profile_object_types(Client, DomainName, #{}, #{}).

list_profile_object_types(Client, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_object_types(Client, DomainName, QueryMap, HeadersMap, []).

list_profile_object_types(Client, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of objects associated with a profile of a given
%% ProfileObjectType.
list_profile_objects(Client, DomainName, Input) ->
    list_profile_objects(Client, DomainName, Input, []).
list_profile_objects(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Displays the tags associated with an Amazon Connect Customer Profiles
%% resource.
%%
%% In Connect Customer Profiles, domains, profile object types, and
%% integrations can be tagged.
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

%% @doc Query to list all workflows.
list_workflows(Client, DomainName, Input) ->
    list_workflows(Client, DomainName, Input, []).
list_workflows(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/workflows"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Runs an AWS Lambda job that does the following:
%%
%% <ol> <li> All the profileKeys in the `ProfileToBeMerged' will be moved
%% to the main profile.
%%
%% </li> <li> All the objects in the `ProfileToBeMerged' will be moved to
%% the main profile.
%%
%% </li> <li> All the `ProfileToBeMerged' will be deleted at the end.
%%
%% </li> <li> All the profileKeys in the `ProfileIdsToBeMerged' will be
%% moved to the main profile.
%%
%% </li> <li> Standard fields are merged as follows:
%%
%% <ol> <li> Fields are always &quot;union&quot;-ed if there are no conflicts
%% in standard fields or attributeKeys.
%%
%% </li> <li> When there are conflicting fields:
%%
%% <ol> <li> If no `SourceProfileIds' entry is specified, the main
%% Profile value is always taken.
%%
%% </li> <li> If a `SourceProfileIds' entry is specified, the specified
%% profileId is always taken, even if it is a NULL value.
%%
%% </li> </ol> </li> </ol> </li> </ol> You can use MergeProfiles together
%% with GetMatches, which returns potentially matching profiles, or use it
%% with the results of another matching system. After profiles have been
%% merged, they cannot be separated (unmerged).
merge_profiles(Client, DomainName, Input) ->
    merge_profiles(Client, DomainName, Input, []).
merge_profiles(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects/merge"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an integration between the service and a third-party service,
%% which includes Amazon AppFlow and Amazon Connect.
%%
%% An integration can belong to only one domain.
%%
%% To add or remove tags on an existing Integration, see TagResource /
%% UntagResource.
put_integration(Client, DomainName, Input) ->
    put_integration(Client, DomainName, Input, []).
put_integration(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/integrations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds additional objects to customer profiles of a given ObjectType.
%%
%% When adding a specific profile object, like a Contact Record, an inferred
%% profile can get created if it is not mapped to an existing profile. The
%% resulting profile will only have a phone number populated in the standard
%% ProfileObject. Any additional Contact Records with the same phone number
%% will be mapped to the same inferred profile.
%%
%% When a ProfileObject is created and if a ProfileObjectType already exists
%% for the ProfileObject, it will provide data to a standard profile
%% depending on the ProfileObjectType definition.
%%
%% PutProfileObject needs an ObjectType, which can be created using
%% PutProfileObjectType.
put_profile_object(Client, DomainName, Input) ->
    put_profile_object(Client, DomainName, Input, []).
put_profile_object(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/objects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Defines a ProfileObjectType.
%%
%% To add or remove tags on an existing ObjectType, see
%% TagResource/UntagResource.
put_profile_object_type(Client, DomainName, ObjectTypeName, Input) ->
    put_profile_object_type(Client, DomainName, ObjectTypeName, Input, []).
put_profile_object_type(Client, DomainName, ObjectTypeName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/object-types/", aws_util:encode_uri(ObjectTypeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for profiles within a specific domain using one or more
%% predefined search keys (e.g., _fullName, _phone, _email, _account, etc.)
%% and/or custom-defined search keys.
%%
%% A search key is a data type pair that consists of a `KeyName' and
%% `Values' list.
%%
%% This operation supports searching for profiles with a minimum of 1
%% key-value(s) pair and up to 5 key-value(s) pairs using either `AND' or
%% `OR' logic.
search_profiles(Client, DomainName, Input) ->
    search_profiles(Client, DomainName, Input, []).
search_profiles(Client, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles/search"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified Amazon
%% Connect Customer Profiles resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values. In Connect Customer
%% Profiles, domains, profile object types, and integrations can be tagged.
%%
%% Tags don't have any semantic meaning to AWS and are interpreted
%% strictly as strings of characters.
%%
%% You can use the TagResource action with a resource that already has tags.
%% If you specify a new tag key, this tag is appended to the list of tags
%% associated with the resource. If you specify a tag key that is already
%% associated with the resource, the new tag value that you specify replaces
%% the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from the specified Amazon Connect Customer
%% Profiles resource.
%%
%% In Connect Customer Profiles, domains, profile object types, and
%% integrations can be tagged.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing calculated attribute definition.
%%
%% When updating the Conditions, note that increasing the date range of a
%% calculated attribute will not trigger inclusion of historical data greater
%% than the current date range.
update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input) ->
    update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input, []).
update_calculated_attribute_definition(Client, CalculatedAttributeName, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/calculated-attributes/", aws_util:encode_uri(CalculatedAttributeName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the properties of a domain, including creating or selecting a
%% dead letter queue or an encryption key.
%%
%% After a domain is created, the name can’t be changed.
%%
%% Use this API or CreateDomain to enable identity resolution: set
%% `Matching' to true.
%%
%% To prevent cross-service impersonation when you call this API, see
%% Cross-service confused deputy prevention for sample policies that you
%% should apply.
%%
%% To add or remove tags on an existing Domain, see
%% TagResource/UntagResource.
update_domain(Client, DomainName, Input) ->
    update_domain(Client, DomainName, Input, []).
update_domain(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the properties of a profile.
%%
%% The ProfileId is required for updating a customer profile.
%%
%% When calling the UpdateProfile API, specifying an empty string value means
%% that any existing value will be removed. Not specifying a string value
%% means that any value already there will be kept.
update_profile(Client, DomainName, Input) ->
    update_profile(Client, DomainName, Input, []).
update_profile(Client, DomainName, Input0, Options0) ->
    Method = put,
    Path = ["/domains/", aws_util:encode_uri(DomainName), "/profiles"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"profile">>},
    Host = build_host(<<"profile">>, Client1),
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
