%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Backup Search
%%
%% Backup Search is the recovery point and item level search for Backup.
%%
%% For additional information, see:
%%
%% Backup API Reference:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/api-reference.html
%%
%% Backup
%% Developer Guide:
%% https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html
-module(aws_backupsearch).

-export([get_search_job/2,
         get_search_job/4,
         get_search_job/5,
         get_search_result_export_job/2,
         get_search_result_export_job/4,
         get_search_result_export_job/5,
         list_search_job_backups/2,
         list_search_job_backups/4,
         list_search_job_backups/5,
         list_search_job_results/2,
         list_search_job_results/4,
         list_search_job_results/5,
         list_search_jobs/1,
         list_search_jobs/3,
         list_search_jobs/4,
         list_search_result_export_jobs/1,
         list_search_result_export_jobs/3,
         list_search_result_export_jobs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_search_job/2,
         start_search_job/3,
         start_search_result_export_job/2,
         start_search_result_export_job/3,
         stop_search_job/3,
         stop_search_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% current_search_progress() :: #{
%%   <<"ItemsMatchedCount">> => [float()],
%%   <<"ItemsScannedCount">> => [float()],
%%   <<"RecoveryPointsScannedCount">> => [integer()]
%% }
-type current_search_progress() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% ebs_item_filter() :: #{
%%   <<"CreationTimes">> => list(time_condition()),
%%   <<"FilePaths">> => list(string_condition()),
%%   <<"LastModificationTimes">> => list(time_condition()),
%%   <<"Sizes">> => list(long_condition())
%% }
-type ebs_item_filter() :: #{binary() => any()}.


%% Example:
%% list_search_job_backups_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Results">> => list(search_job_backups_result())
%% }
-type list_search_job_backups_output() :: #{binary() => any()}.


%% Example:
%% list_search_job_results_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Results">> => list(list())
%% }
-type list_search_job_results_output() :: #{binary() => any()}.


%% Example:
%% list_search_jobs_input() :: #{
%%   <<"ByStatus">> => list(any()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_search_jobs_input() :: #{binary() => any()}.


%% Example:
%% start_search_job_output() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"SearchJobArn">> => string(),
%%   <<"SearchJobIdentifier">> => string()
%% }
-type start_search_job_output() :: #{binary() => any()}.

%% Example:
%% stop_search_job_output() :: #{}
-type stop_search_job_output() :: #{}.


%% Example:
%% list_search_result_export_jobs_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"SearchJobIdentifier">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_search_result_export_jobs_input() :: #{binary() => any()}.

%% Example:
%% stop_search_job_input() :: #{}
-type stop_search_job_input() :: #{}.


%% Example:
%% search_scope_summary() :: #{
%%   <<"TotalItemsToScanCount">> => [float()],
%%   <<"TotalRecoveryPointsToScanCount">> => [integer()]
%% }
-type search_scope_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_search_jobs_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"SearchJobs">> => list(search_job_summary())
%% }
-type list_search_jobs_output() :: #{binary() => any()}.


%% Example:
%% s3_item_filter() :: #{
%%   <<"CreationTimes">> => list(time_condition()),
%%   <<"ETags">> => list(string_condition()),
%%   <<"ObjectKeys">> => list(string_condition()),
%%   <<"Sizes">> => list(long_condition()),
%%   <<"VersionIds">> => list(string_condition())
%% }
-type s3_item_filter() :: #{binary() => any()}.


%% Example:
%% s3_result_item() :: #{
%%   <<"BackupResourceArn">> => [string()],
%%   <<"BackupVaultName">> => [string()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"ETag">> => [string()],
%%   <<"ObjectKey">> => string(),
%%   <<"ObjectSize">> => [float()],
%%   <<"SourceResourceArn">> => [string()],
%%   <<"VersionId">> => [string()]
%% }
-type s3_result_item() :: #{binary() => any()}.


%% Example:
%% backup_creation_time_filter() :: #{
%%   <<"CreatedAfter">> => [non_neg_integer()],
%%   <<"CreatedBefore">> => [non_neg_integer()]
%% }
-type backup_creation_time_filter() :: #{binary() => any()}.


%% Example:
%% time_condition() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [non_neg_integer()]
%% }
-type time_condition() :: #{binary() => any()}.


%% Example:
%% get_search_job_output() :: #{
%%   <<"CompletionTime">> => [non_neg_integer()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"CurrentSearchProgress">> => current_search_progress(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"ItemFilters">> => item_filters(),
%%   <<"Name">> => [string()],
%%   <<"SearchJobArn">> => string(),
%%   <<"SearchJobIdentifier">> => string(),
%%   <<"SearchScope">> => search_scope(),
%%   <<"SearchScopeSummary">> => search_scope_summary(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()]
%% }
-type get_search_job_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_search_result_export_job_input() :: #{}
-type get_search_result_export_job_input() :: #{}.


%% Example:
%% search_job_summary() :: #{
%%   <<"CompletionTime">> => [non_neg_integer()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"Name">> => [string()],
%%   <<"SearchJobArn">> => string(),
%%   <<"SearchJobIdentifier">> => string(),
%%   <<"SearchScopeSummary">> => search_scope_summary(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()]
%% }
-type search_job_summary() :: #{binary() => any()}.


%% Example:
%% search_job_backups_result() :: #{
%%   <<"BackupCreationTime">> => [non_neg_integer()],
%%   <<"BackupResourceArn">> => [string()],
%%   <<"IndexCreationTime">> => [non_neg_integer()],
%%   <<"ResourceType">> => list(any()),
%%   <<"SourceResourceArn">> => [string()],
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()]
%% }
-type search_job_backups_result() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_search_job_results_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_search_job_results_input() :: #{binary() => any()}.


%% Example:
%% list_search_result_export_jobs_output() :: #{
%%   <<"ExportJobs">> => list(export_job_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_search_result_export_jobs_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_search_result_export_job_output() :: #{
%%   <<"CompletionTime">> => [non_neg_integer()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"ExportJobArn">> => string(),
%%   <<"ExportJobIdentifier">> => string(),
%%   <<"ExportSpecification">> => list(),
%%   <<"SearchJobArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()]
%% }
-type get_search_result_export_job_output() :: #{binary() => any()}.


%% Example:
%% export_job_summary() :: #{
%%   <<"CompletionTime">> => [non_neg_integer()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"ExportJobArn">> => string(),
%%   <<"ExportJobIdentifier">> => string(),
%%   <<"SearchJobArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => [string()]
%% }
-type export_job_summary() :: #{binary() => any()}.


%% Example:
%% start_search_job_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"ItemFilters">> => item_filters(),
%%   <<"Name">> => [string()],
%%   <<"SearchScope">> := search_scope(),
%%   <<"Tags">> => map()
%% }
-type start_search_job_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% string_condition() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [string()]
%% }
-type string_condition() :: #{binary() => any()}.


%% Example:
%% s3_export_specification() :: #{
%%   <<"DestinationBucket">> => [string()],
%%   <<"DestinationPrefix">> => [string()]
%% }
-type s3_export_specification() :: #{binary() => any()}.


%% Example:
%% list_search_job_backups_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_search_job_backups_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% start_search_result_export_job_output() :: #{
%%   <<"ExportJobArn">> => string(),
%%   <<"ExportJobIdentifier">> => string()
%% }
-type start_search_result_export_job_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% search_scope() :: #{
%%   <<"BackupResourceArns">> => list(string()),
%%   <<"BackupResourceCreationTime">> => backup_creation_time_filter(),
%%   <<"BackupResourceTags">> => map(),
%%   <<"BackupResourceTypes">> => list(list(any())()),
%%   <<"SourceResourceArns">> => list([string()]())
%% }
-type search_scope() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% ebs_result_item() :: #{
%%   <<"BackupResourceArn">> => [string()],
%%   <<"BackupVaultName">> => [string()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"FilePath">> => string(),
%%   <<"FileSize">> => [float()],
%%   <<"FileSystemIdentifier">> => [string()],
%%   <<"LastModifiedTime">> => [non_neg_integer()],
%%   <<"SourceResourceArn">> => [string()]
%% }
-type ebs_result_item() :: #{binary() => any()}.

%% Example:
%% get_search_job_input() :: #{}
-type get_search_job_input() :: #{}.


%% Example:
%% item_filters() :: #{
%%   <<"EBSItemFilters">> => list(ebs_item_filter()),
%%   <<"S3ItemFilters">> => list(s3_item_filter())
%% }
-type item_filters() :: #{binary() => any()}.


%% Example:
%% start_search_result_export_job_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"ExportSpecification">> := list(),
%%   <<"RoleArn">> => string(),
%%   <<"SearchJobIdentifier">> := string(),
%%   <<"Tags">> => map()
%% }
-type start_search_result_export_job_input() :: #{binary() => any()}.


%% Example:
%% long_condition() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [float()]
%% }
-type long_condition() :: #{binary() => any()}.

-type get_search_job_errors() ::
    resource_not_found_exception().

-type get_search_result_export_job_errors() ::
    resource_not_found_exception().

-type list_search_job_backups_errors() ::
    resource_not_found_exception().

-type list_search_job_results_errors() ::
    resource_not_found_exception().

-type list_search_result_export_jobs_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type start_search_job_errors() ::
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_search_result_export_job_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_search_job_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation retrieves metadata of a search job,
%% including its progress.
-spec get_search_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_search_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_job_errors(), tuple()}.
get_search_job(Client, SearchJobIdentifier)
  when is_map(Client) ->
    get_search_job(Client, SearchJobIdentifier, #{}, #{}).

-spec get_search_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_search_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_job_errors(), tuple()}.
get_search_job(Client, SearchJobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_search_job(Client, SearchJobIdentifier, QueryMap, HeadersMap, []).

-spec get_search_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_search_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_job_errors(), tuple()}.
get_search_job(Client, SearchJobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search-jobs/", aws_util:encode_uri(SearchJobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation retrieves the metadata of an export job.
%%
%% An export job is an operation that transmits the results
%% of a search job to a specified S3 bucket in a
%% .csv file.
%%
%% An export job allows you to retain results of a search
%% beyond the search job's scheduled retention of 7 days.
-spec get_search_result_export_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_search_result_export_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_result_export_job_errors(), tuple()}.
get_search_result_export_job(Client, ExportJobIdentifier)
  when is_map(Client) ->
    get_search_result_export_job(Client, ExportJobIdentifier, #{}, #{}).

-spec get_search_result_export_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_search_result_export_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_result_export_job_errors(), tuple()}.
get_search_result_export_job(Client, ExportJobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_search_result_export_job(Client, ExportJobIdentifier, QueryMap, HeadersMap, []).

-spec get_search_result_export_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_search_result_export_job_output(), tuple()} |
    {error, any()} |
    {error, get_search_result_export_job_errors(), tuple()}.
get_search_result_export_job(Client, ExportJobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export-search-jobs/", aws_util:encode_uri(ExportJobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns a list of all backups (recovery
%% points) in a paginated format that were included in
%% the search job.
%%
%% If a search does not display an expected backup in
%% the results, you can call this operation to display each
%% backup included in the search. Any backups that were not
%% included because they have a `FAILED' status
%% from a permissions issue will be displayed, along with a
%% status message.
%%
%% Only recovery points with a backup index that has
%% a status of `ACTIVE' will be included in search results.
%% If the index has any other status, its status will be
%% displayed along with a status message.
-spec list_search_job_backups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_search_job_backups_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_backups_errors(), tuple()}.
list_search_job_backups(Client, SearchJobIdentifier)
  when is_map(Client) ->
    list_search_job_backups(Client, SearchJobIdentifier, #{}, #{}).

-spec list_search_job_backups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_search_job_backups_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_backups_errors(), tuple()}.
list_search_job_backups(Client, SearchJobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_search_job_backups(Client, SearchJobIdentifier, QueryMap, HeadersMap, []).

-spec list_search_job_backups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_search_job_backups_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_backups_errors(), tuple()}.
list_search_job_backups(Client, SearchJobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search-jobs/", aws_util:encode_uri(SearchJobIdentifier), "/backups"],
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

%% @doc This operation returns a list of a specified search job.
-spec list_search_job_results(aws_client:aws_client(), binary() | list()) ->
    {ok, list_search_job_results_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_results_errors(), tuple()}.
list_search_job_results(Client, SearchJobIdentifier)
  when is_map(Client) ->
    list_search_job_results(Client, SearchJobIdentifier, #{}, #{}).

-spec list_search_job_results(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_search_job_results_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_results_errors(), tuple()}.
list_search_job_results(Client, SearchJobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_search_job_results(Client, SearchJobIdentifier, QueryMap, HeadersMap, []).

-spec list_search_job_results(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_search_job_results_output(), tuple()} |
    {error, any()} |
    {error, list_search_job_results_errors(), tuple()}.
list_search_job_results(Client, SearchJobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search-jobs/", aws_util:encode_uri(SearchJobIdentifier), "/search-results"],
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

%% @doc This operation returns a list of search jobs belonging
%% to an account.
-spec list_search_jobs(aws_client:aws_client()) ->
    {ok, list_search_jobs_output(), tuple()} |
    {error, any()}.
list_search_jobs(Client)
  when is_map(Client) ->
    list_search_jobs(Client, #{}, #{}).

-spec list_search_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_search_jobs_output(), tuple()} |
    {error, any()}.
list_search_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_search_jobs(Client, QueryMap, HeadersMap, []).

-spec list_search_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_search_jobs_output(), tuple()} |
    {error, any()}.
list_search_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation exports search results of a search job
%% to a specified destination S3 bucket.
-spec list_search_result_export_jobs(aws_client:aws_client()) ->
    {ok, list_search_result_export_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_search_result_export_jobs_errors(), tuple()}.
list_search_result_export_jobs(Client)
  when is_map(Client) ->
    list_search_result_export_jobs(Client, #{}, #{}).

-spec list_search_result_export_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_search_result_export_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_search_result_export_jobs_errors(), tuple()}.
list_search_result_export_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_search_result_export_jobs(Client, QueryMap, HeadersMap, []).

-spec list_search_result_export_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_search_result_export_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_search_result_export_jobs_errors(), tuple()}.
list_search_result_export_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/export-search-jobs"],
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
        {<<"SearchJobIdentifier">>, maps:get(<<"SearchJobIdentifier">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns the tags for a resource type.
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

%% @doc This operation creates a search job which returns
%% recovery points filtered by SearchScope and items
%% filtered by ItemFilters.
%%
%% You can optionally include ClientToken,
%% EncryptionKeyArn, Name, and/or Tags.
-spec start_search_job(aws_client:aws_client(), start_search_job_input()) ->
    {ok, start_search_job_output(), tuple()} |
    {error, any()} |
    {error, start_search_job_errors(), tuple()}.
start_search_job(Client, Input) ->
    start_search_job(Client, Input, []).

-spec start_search_job(aws_client:aws_client(), start_search_job_input(), proplists:proplist()) ->
    {ok, start_search_job_output(), tuple()} |
    {error, any()} |
    {error, start_search_job_errors(), tuple()}.
start_search_job(Client, Input0, Options0) ->
    Method = put,
    Path = ["/search-jobs"],
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

%% @doc This operations starts a job to export the results
%% of search job to a designated S3 bucket.
-spec start_search_result_export_job(aws_client:aws_client(), start_search_result_export_job_input()) ->
    {ok, start_search_result_export_job_output(), tuple()} |
    {error, any()} |
    {error, start_search_result_export_job_errors(), tuple()}.
start_search_result_export_job(Client, Input) ->
    start_search_result_export_job(Client, Input, []).

-spec start_search_result_export_job(aws_client:aws_client(), start_search_result_export_job_input(), proplists:proplist()) ->
    {ok, start_search_result_export_job_output(), tuple()} |
    {error, any()} |
    {error, start_search_result_export_job_errors(), tuple()}.
start_search_result_export_job(Client, Input0, Options0) ->
    Method = put,
    Path = ["/export-search-jobs"],
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

%% @doc This operations ends a search job.
%%
%% Only a search job with a status of `RUNNING'
%% can be stopped.
-spec stop_search_job(aws_client:aws_client(), binary() | list(), stop_search_job_input()) ->
    {ok, stop_search_job_output(), tuple()} |
    {error, any()} |
    {error, stop_search_job_errors(), tuple()}.
stop_search_job(Client, SearchJobIdentifier, Input) ->
    stop_search_job(Client, SearchJobIdentifier, Input, []).

-spec stop_search_job(aws_client:aws_client(), binary() | list(), stop_search_job_input(), proplists:proplist()) ->
    {ok, stop_search_job_output(), tuple()} |
    {error, any()} |
    {error, stop_search_job_errors(), tuple()}.
stop_search_job(Client, SearchJobIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/search-jobs/", aws_util:encode_uri(SearchJobIdentifier), "/actions/cancel"],
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

%% @doc This operation puts tags on the resource you indicate.
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

%% @doc This operation removes tags from the specified resource.
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
    Client1 = Client#{service => <<"backup-search">>},
    Host = build_host(<<"backup-search">>, Client1),
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
