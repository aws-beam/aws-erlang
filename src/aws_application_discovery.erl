%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Application Discovery Service
%%
%% Amazon Web Services Application Discovery Service helps you plan
%% application migration projects.
%%
%% It automatically identifies servers, virtual machines (VMs), and network
%% dependencies in your on-premises data centers. For more information, see
%% the Amazon Web Services Application Discovery Service FAQ. Application
%% Discovery Service offers three ways of performing discovery and collecting
%% data about your on-premises servers:
%%
%% <ul> <li> Agentless discovery is recommended for environments that use
%% VMware vCenter Server. This mode doesn't require you to install an
%% agent on each host. It does not work in non-VMware environments.
%%
%% <ul> <li> Agentless discovery gathers server information regardless of the
%% operating systems, which minimizes the time required for initial
%% on-premises infrastructure assessment.
%%
%% </li> <li> Agentless discovery doesn't collect information about
%% network dependencies, only agent-based discovery collects that
%% information.
%%
%% </li> </ul> </li> </ul> <ul> <li> Agent-based discovery collects a richer
%% set of data than agentless discovery by using the Amazon Web Services
%% Application Discovery Agent, which you install on one or more hosts in
%% your data center.
%%
%% <ul> <li> The agent captures infrastructure and application information,
%% including an inventory of running processes, system performance
%% information, resource utilization, and network dependencies.
%%
%% </li> <li> The information collected by agents is secured at rest and in
%% transit to the Application Discovery Service database in the cloud.
%%
%% </li> </ul> </li> </ul> <ul> <li> Amazon Web Services Partner Network
%% (APN) solutions integrate with Application Discovery Service, enabling you
%% to import details of your on-premises environment directly into Migration
%% Hub without using the discovery connector or discovery agent.
%%
%% <ul> <li> Third-party application discovery tools can query Amazon Web
%% Services Application Discovery Service, and they can write to the
%% Application Discovery Service database using the public API.
%%
%% </li> <li> In this way, you can import data into Migration Hub and view
%% it, so that you can associate applications with servers and track
%% migrations.
%%
%% </li> </ul> </li> </ul> Recommendations
%%
%% We recommend that you use agent-based discovery for non-VMware
%% environments, and whenever you want to collect information about network
%% dependencies. You can run agent-based and agentless discovery
%% simultaneously. Use agentless discovery to complete the initial
%% infrastructure assessment quickly, and then install agents on select hosts
%% to collect additional information.
%%
%% Working With This Guide
%%
%% This API reference provides descriptions, syntax, and usage examples for
%% each of the actions and data types for Application Discovery Service. The
%% topic for each action shows the API request parameters and the response.
%% Alternatively, you can use one of the Amazon Web Services SDKs to access
%% an API that is tailored to the programming language or platform that
%% you're using. For more information, see Amazon Web Services SDKs.
%%
%% Remember that you must set your Migration Hub home region before you call
%% any of these APIs.
%%
%% You must make API calls for write actions (create, notify, associate,
%% disassociate, import, or put) while in your home region, or a
%% `HomeRegionNotSetException' error is returned.
%%
%% API calls for read actions (list, describe, stop, and delete) are
%% permitted outside of your home region.
%%
%% Although it is unlikely, the Migration Hub home region could change. If
%% you call APIs outside the home region, an `InvalidInputException' is
%% returned.
%%
%% You must call `GetHomeRegion' to obtain the latest Migration Hub home
%% region.
%%
%% This guide is intended for use with the Amazon Web Services Application
%% Discovery Service User Guide.
%%
%% All data is handled according to the Amazon Web Services Privacy Policy.
%% You can operate Application Discovery Service offline to inspect collected
%% data before it is shared with the service.
-module(aws_application_discovery).

-export([associate_configuration_items_to_application/2,
         associate_configuration_items_to_application/3,
         batch_delete_import_data/2,
         batch_delete_import_data/3,
         create_application/2,
         create_application/3,
         create_tags/2,
         create_tags/3,
         delete_applications/2,
         delete_applications/3,
         delete_tags/2,
         delete_tags/3,
         describe_agents/2,
         describe_agents/3,
         describe_configurations/2,
         describe_configurations/3,
         describe_continuous_exports/2,
         describe_continuous_exports/3,
         describe_export_configurations/2,
         describe_export_configurations/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_import_tasks/2,
         describe_import_tasks/3,
         describe_tags/2,
         describe_tags/3,
         disassociate_configuration_items_from_application/2,
         disassociate_configuration_items_from_application/3,
         export_configurations/2,
         export_configurations/3,
         get_discovery_summary/2,
         get_discovery_summary/3,
         list_configurations/2,
         list_configurations/3,
         list_server_neighbors/2,
         list_server_neighbors/3,
         start_continuous_export/2,
         start_continuous_export/3,
         start_data_collection_by_agent_ids/2,
         start_data_collection_by_agent_ids/3,
         start_export_task/2,
         start_export_task/3,
         start_import_task/2,
         start_import_task/3,
         stop_continuous_export/2,
         stop_continuous_export/3,
         stop_data_collection_by_agent_ids/2,
         stop_data_collection_by_agent_ids/3,
         update_application/2,
         update_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates one or more configuration items with an application.
associate_configuration_items_to_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_configuration_items_to_application(Client, Input, []).
associate_configuration_items_to_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateConfigurationItemsToApplication">>, Input, Options).

%% @doc Deletes one or more import tasks, each identified by their import ID.
%%
%% Each import task has a number of records that can identify servers or
%% applications.
%%
%% Amazon Web Services Application Discovery Service has built-in matching
%% logic that will identify when discovered servers match existing entries
%% that you've previously discovered, the information for the
%% already-existing discovered server is updated. When you delete an import
%% task that contains records that were used to match, the information in
%% those matched records that comes from the deleted records will also be
%% deleted.
batch_delete_import_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_import_data(Client, Input, []).
batch_delete_import_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteImportData">>, Input, Options).

%% @doc Creates an application with the given name and description.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates one or more tags for configuration items.
%%
%% Tags are metadata that help you categorize IT assets. This API accepts a
%% list of multiple configuration items.
%%
%% Do not store sensitive information (like personal data) in tags.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Deletes a list of applications and their associations with
%% configuration items.
delete_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_applications(Client, Input, []).
delete_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplications">>, Input, Options).

%% @doc Deletes the association between configuration items and one or more
%% tags.
%%
%% This API accepts a list of multiple configuration items.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Lists agents or connectors as specified by ID or other filters.
%%
%% All agents/connectors associated with your user account can be listed if
%% you call `DescribeAgents' as is without passing any parameters.
describe_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agents(Client, Input, []).
describe_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgents">>, Input, Options).

%% @doc Retrieves attributes for a list of configuration item IDs.
%%
%% All of the supplied IDs must be for the same asset type from one of the
%% following:
%%
%% server
%%
%% application
%%
%% process
%%
%% connection
%%
%% Output fields are specific to the asset type specified. For example, the
%% output for a server configuration item includes a list of attributes about
%% the server, such as host name, operating system, number of network cards,
%% etc.
%%
%% For a complete list of outputs for each asset type, see Using the
%% DescribeConfigurations Action in the Amazon Web Services Application
%% Discovery Service User Guide.
describe_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configurations(Client, Input, []).
describe_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurations">>, Input, Options).

%% @doc Lists exports as specified by ID.
%%
%% All continuous exports associated with your user account can be listed if
%% you call `DescribeContinuousExports' as is without passing any
%% parameters.
describe_continuous_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_continuous_exports(Client, Input, []).
describe_continuous_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContinuousExports">>, Input, Options).

%% @doc `DescribeExportConfigurations' is deprecated.
%%
%% Use DescribeExportTasks, instead.
describe_export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_configurations(Client, Input, []).
describe_export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportConfigurations">>, Input, Options).

%% @doc Retrieve status of one or more export tasks.
%%
%% You can retrieve the status of up to 100 export tasks.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Returns an array of import tasks for your account, including status
%% information, times, IDs, the Amazon S3 Object URL for the import file, and
%% more.
describe_import_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_import_tasks(Client, Input, []).
describe_import_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImportTasks">>, Input, Options).

%% @doc Retrieves a list of configuration items that have tags as specified
%% by the key-value pairs, name and value, passed to the optional parameter
%% `filters'.
%%
%% There are three valid tag filter names:
%%
%% <ul> <li> tagKey
%%
%% </li> <li> tagValue
%%
%% </li> <li> configurationId
%%
%% </li> </ul> Also, all configuration items associated with your user
%% account that have tags can be listed if you call `DescribeTags' as is
%% without passing any parameters.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Disassociates one or more configuration items from an application.
disassociate_configuration_items_from_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_configuration_items_from_application(Client, Input, []).
disassociate_configuration_items_from_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConfigurationItemsFromApplication">>, Input, Options).

%% @doc Deprecated.
%%
%% Use `StartExportTask' instead.
%%
%% Exports all discovered configuration data to an Amazon S3 bucket or an
%% application that enables you to view and evaluate the data. Data includes
%% tags and tag associations, processes, connections, servers, and system
%% performance. This API returns an export ID that you can query using the
%% DescribeExportConfigurations API. The system imposes a limit of two
%% configuration exports in six hours.
export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_configurations(Client, Input, []).
export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportConfigurations">>, Input, Options).

%% @doc Retrieves a short summary of discovered assets.
%%
%% This API operation takes no request parameters and is called as is at the
%% command prompt as shown in the example.
get_discovery_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_discovery_summary(Client, Input, []).
get_discovery_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiscoverySummary">>, Input, Options).

%% @doc Retrieves a list of configuration items as specified by the value
%% passed to the required parameter `configurationType'.
%%
%% Optional filtering may be applied to refine search results.
list_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configurations(Client, Input, []).
list_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurations">>, Input, Options).

%% @doc Retrieves a list of servers that are one network hop away from a
%% specified server.
list_server_neighbors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_server_neighbors(Client, Input, []).
list_server_neighbors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServerNeighbors">>, Input, Options).

%% @doc Start the continuous flow of agent's discovered data into Amazon
%% Athena.
start_continuous_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_continuous_export(Client, Input, []).
start_continuous_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartContinuousExport">>, Input, Options).

%% @doc Instructs the specified agents or connectors to start collecting
%% data.
start_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_collection_by_agent_ids(Client, Input, []).
start_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataCollectionByAgentIds">>, Input, Options).

%% @doc Begins the export of discovered data to an S3 bucket.
%%
%% If you specify `agentIds' in a filter, the task exports up to 72 hours
%% of detailed data collected by the identified Application Discovery Agent,
%% including network, process, and performance details. A time range for
%% exported agent data may be set by using `startTime' and `endTime'.
%% Export of detailed agent data is limited to five concurrently running
%% exports.
%%
%% If you do not include an `agentIds' filter, summary data is exported
%% that includes both Amazon Web Services Agentless Discovery Connector data
%% and summary data from Amazon Web Services Discovery Agents. Export of
%% summary data is limited to two exports per day.
start_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_export_task(Client, Input, []).
start_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExportTask">>, Input, Options).

%% @doc Starts an import task, which allows you to import details of your
%% on-premises environment directly into Amazon Web Services Migration Hub
%% without having to use the Application Discovery Service (ADS) tools such
%% as the Discovery Connector or Discovery Agent.
%%
%% This gives you the option to perform migration assessment and planning
%% directly from your imported data, including the ability to group your
%% devices as applications and track their migration status.
%%
%% To start an import request, do this:
%%
%% <ol> <li> Download the specially formatted comma separated value (CSV)
%% import template, which you can find here:
%% [https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv].
%%
%% </li> <li> Fill out the template with your server and application data.
%%
%% </li> <li> Upload your import file to an Amazon S3 bucket, and make a note
%% of it's Object URL. Your import file must be in the CSV format.
%%
%% </li> <li> Use the console or the `StartImportTask' command with the
%% Amazon Web Services CLI or one of the Amazon Web Services SDKs to import
%% the records from your file.
%%
%% </li> </ol> For more information, including step-by-step procedures, see
%% Migration Hub Import in the Amazon Web Services Application Discovery
%% Service User Guide.
%%
%% There are limits to the number of import tasks you can create (and delete)
%% in an Amazon Web Services account. For more information, see Amazon Web
%% Services Application Discovery Service Limits in the Amazon Web Services
%% Application Discovery Service User Guide.
start_import_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_import_task(Client, Input, []).
start_import_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImportTask">>, Input, Options).

%% @doc Stop the continuous flow of agent's discovered data into Amazon
%% Athena.
stop_continuous_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_continuous_export(Client, Input, []).
stop_continuous_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopContinuousExport">>, Input, Options).

%% @doc Instructs the specified agents or connectors to stop collecting data.
stop_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_collection_by_agent_ids(Client, Input, []).
stop_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataCollectionByAgentIds">>, Input, Options).

%% @doc Updates metadata about an application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

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
    Client1 = Client#{service => <<"discovery">>},
    Host = build_host(<<"discovery">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSPoseidonService_V2015_11_01.", Action/binary>>}
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
