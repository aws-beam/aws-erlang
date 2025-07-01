%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the AWS HealthImaging API Reference.
%%
%% For an introduction to the service, see What is AWS HealthImaging?:
%% https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html in
%% the AWS HealthImaging Developer Guide.
-module(aws_medical_imaging).

-export([copy_image_set/4,
         copy_image_set/5,
         create_datastore/2,
         create_datastore/3,
         delete_datastore/3,
         delete_datastore/4,
         delete_image_set/4,
         delete_image_set/5,
         get_d_i_c_o_m_import_job/3,
         get_d_i_c_o_m_import_job/5,
         get_d_i_c_o_m_import_job/6,
         get_datastore/2,
         get_datastore/4,
         get_datastore/5,
         get_image_frame/4,
         get_image_frame/5,
         get_image_set/4,
         get_image_set/5,
         get_image_set_metadata/4,
         get_image_set_metadata/5,
         list_d_i_c_o_m_import_jobs/2,
         list_d_i_c_o_m_import_jobs/4,
         list_d_i_c_o_m_import_jobs/5,
         list_datastores/1,
         list_datastores/3,
         list_datastores/4,
         list_image_set_versions/4,
         list_image_set_versions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         search_image_sets/3,
         search_image_sets/4,
         start_d_i_c_o_m_import_job/3,
         start_d_i_c_o_m_import_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_image_set_metadata/4,
         update_image_set_metadata/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_image_set_metadata_request() :: #{
%%   <<"versionId">> => string()
%% }
-type get_image_set_metadata_request() :: #{binary() => any()}.


%% Example:
%% metadata_copies() :: #{
%%   <<"copiableAttributes">> => string()
%% }
-type metadata_copies() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% start_d_i_c_o_m_import_job_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"dataAccessRoleArn">> := string(),
%%   <<"inputOwnerAccountId">> => string(),
%%   <<"inputS3Uri">> := string(),
%%   <<"jobName">> => string(),
%%   <<"outputS3Uri">> := string()
%% }
-type start_d_i_c_o_m_import_job_request() :: #{binary() => any()}.


%% Example:
%% search_image_sets_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"searchCriteria">> => search_criteria()
%% }
-type search_image_sets_request() :: #{binary() => any()}.


%% Example:
%% overrides() :: #{
%%   <<"forced">> => [boolean()]
%% }
-type overrides() :: #{binary() => any()}.


%% Example:
%% image_sets_metadata_summary() :: #{
%%   <<"DICOMTags">> => d_i_c_o_m_tags(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"imageSetId">> => string(),
%%   <<"isPrimary">> => [boolean()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"version">> => [integer()]
%% }
-type image_sets_metadata_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% copy_image_set_request() :: #{
%%   <<"copyImageSetInformation">> := copy_image_set_information(),
%%   <<"force">> => [boolean()],
%%   <<"promoteToPrimary">> => [boolean()]
%% }
-type copy_image_set_request() :: #{binary() => any()}.


%% Example:
%% copy_source_image_set_information() :: #{
%%   <<"DICOMCopies">> => metadata_copies(),
%%   <<"latestVersionId">> => string()
%% }
-type copy_source_image_set_information() :: #{binary() => any()}.


%% Example:
%% copy_source_image_set_properties() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"imageSetArn">> => string(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"imageSetWorkflowStatus">> => list(any()),
%%   <<"latestVersionId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type copy_source_image_set_properties() :: #{binary() => any()}.

%% Example:
%% get_datastore_request() :: #{}
-type get_datastore_request() :: #{}.


%% Example:
%% list_image_set_versions_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_image_set_versions_request() :: #{binary() => any()}.


%% Example:
%% d_i_c_o_m_import_job_summary() :: #{
%%   <<"dataAccessRoleArn">> => string(),
%%   <<"datastoreId">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"message">> => string(),
%%   <<"submittedAt">> => non_neg_integer()
%% }
-type d_i_c_o_m_import_job_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% image_set_properties() :: #{
%%   <<"ImageSetWorkflowStatus">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deletedAt">> => non_neg_integer(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"isPrimary">> => [boolean()],
%%   <<"message">> => string(),
%%   <<"overrides">> => overrides(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"versionId">> => string()
%% }
-type image_set_properties() :: #{binary() => any()}.


%% Example:
%% image_frame_information() :: #{
%%   <<"imageFrameId">> => string()
%% }
-type image_frame_information() :: #{binary() => any()}.


%% Example:
%% search_filter() :: #{
%%   <<"operator">> => list(any()),
%%   <<"values">> => list(list()())
%% }
-type search_filter() :: #{binary() => any()}.

%% Example:
%% get_d_i_c_o_m_import_job_request() :: #{}
-type get_d_i_c_o_m_import_job_request() :: #{}.


%% Example:
%% get_image_set_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"datastoreId">> => string(),
%%   <<"deletedAt">> => non_neg_integer(),
%%   <<"imageSetArn">> => string(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"imageSetWorkflowStatus">> => list(any()),
%%   <<"isPrimary">> => [boolean()],
%%   <<"message">> => string(),
%%   <<"overrides">> => overrides(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"versionId">> => string()
%% }
-type get_image_set_response() :: #{binary() => any()}.


%% Example:
%% delete_datastore_response() :: #{
%%   <<"datastoreId">> => string(),
%%   <<"datastoreStatus">> => list(any())
%% }
-type delete_datastore_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_image_set_request() :: #{
%%   <<"versionId">> => string()
%% }
-type get_image_set_request() :: #{binary() => any()}.


%% Example:
%% search_image_sets_response() :: #{
%%   <<"imageSetsMetadataSummaries">> => list(image_sets_metadata_summary()()),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => sort()
%% }
-type search_image_sets_response() :: #{binary() => any()}.


%% Example:
%% update_image_set_metadata_request() :: #{
%%   <<"force">> => [boolean()],
%%   <<"latestVersionId">> := string(),
%%   <<"updateImageSetMetadataUpdates">> := list()
%% }
-type update_image_set_metadata_request() :: #{binary() => any()}.


%% Example:
%% copy_image_set_response() :: #{
%%   <<"datastoreId">> => string(),
%%   <<"destinationImageSetProperties">> => copy_destination_image_set_properties(),
%%   <<"sourceImageSetProperties">> => copy_source_image_set_properties()
%% }
-type copy_image_set_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_datastore_response() :: #{
%%   <<"datastoreProperties">> => datastore_properties()
%% }
-type get_datastore_response() :: #{binary() => any()}.


%% Example:
%% list_datastores_response() :: #{
%%   <<"datastoreSummaries">> => list(datastore_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_datastores_response() :: #{binary() => any()}.


%% Example:
%% start_d_i_c_o_m_import_job_response() :: #{
%%   <<"datastoreId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"submittedAt">> => non_neg_integer()
%% }
-type start_d_i_c_o_m_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_image_frame_request() :: #{
%%   <<"imageFrameInformation">> := image_frame_information()
%% }
-type get_image_frame_request() :: #{binary() => any()}.


%% Example:
%% d_i_c_o_m_import_job_properties() :: #{
%%   <<"dataAccessRoleArn">> => string(),
%%   <<"datastoreId">> => string(),
%%   <<"endedAt">> => non_neg_integer(),
%%   <<"inputS3Uri">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobName">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"message">> => string(),
%%   <<"outputS3Uri">> => string(),
%%   <<"submittedAt">> => non_neg_integer()
%% }
-type d_i_c_o_m_import_job_properties() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_datastores_request() :: #{
%%   <<"datastoreStatus">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_datastores_request() :: #{binary() => any()}.


%% Example:
%% datastore_properties() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"datastoreArn">> => string(),
%%   <<"datastoreId">> => string(),
%%   <<"datastoreName">> => string(),
%%   <<"datastoreStatus">> => list(any()),
%%   <<"kmsKeyArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type datastore_properties() :: #{binary() => any()}.


%% Example:
%% sort() :: #{
%%   <<"sortField">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type sort() :: #{binary() => any()}.


%% Example:
%% d_i_c_o_m_tags() :: #{
%%   <<"DICOMAccessionNumber">> => string(),
%%   <<"DICOMNumberOfStudyRelatedInstances">> => integer(),
%%   <<"DICOMNumberOfStudyRelatedSeries">> => integer(),
%%   <<"DICOMPatientBirthDate">> => string(),
%%   <<"DICOMPatientId">> => string(),
%%   <<"DICOMPatientName">> => string(),
%%   <<"DICOMPatientSex">> => string(),
%%   <<"DICOMSeriesBodyPart">> => string(),
%%   <<"DICOMSeriesInstanceUID">> => string(),
%%   <<"DICOMSeriesModality">> => string(),
%%   <<"DICOMSeriesNumber">> => integer(),
%%   <<"DICOMStudyDate">> => string(),
%%   <<"DICOMStudyDescription">> => string(),
%%   <<"DICOMStudyId">> => string(),
%%   <<"DICOMStudyInstanceUID">> => string(),
%%   <<"DICOMStudyTime">> => string()
%% }
-type d_i_c_o_m_tags() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% copy_destination_image_set_properties() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"imageSetArn">> => string(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"imageSetWorkflowStatus">> => list(any()),
%%   <<"latestVersionId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type copy_destination_image_set_properties() :: #{binary() => any()}.


%% Example:
%% datastore_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"datastoreArn">> => string(),
%%   <<"datastoreId">> => string(),
%%   <<"datastoreName">> => string(),
%%   <<"datastoreStatus">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type datastore_summary() :: #{binary() => any()}.


%% Example:
%% d_i_c_o_m_updates() :: #{
%%   <<"removableAttributes">> => binary(),
%%   <<"updatableAttributes">> => binary()
%% }
-type d_i_c_o_m_updates() :: #{binary() => any()}.


%% Example:
%% list_image_set_versions_response() :: #{
%%   <<"imageSetPropertiesList">> => list(image_set_properties()()),
%%   <<"nextToken">> => string()
%% }
-type list_image_set_versions_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% copy_destination_image_set() :: #{
%%   <<"imageSetId">> => string(),
%%   <<"latestVersionId">> => string()
%% }
-type copy_destination_image_set() :: #{binary() => any()}.


%% Example:
%% list_d_i_c_o_m_import_jobs_request() :: #{
%%   <<"jobStatus">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_d_i_c_o_m_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_image_set_request() :: #{}
-type delete_image_set_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% create_datastore_request() :: #{
%%   <<"clientToken">> := string(),
%%   <<"datastoreName">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_datastore_request() :: #{binary() => any()}.


%% Example:
%% get_image_set_metadata_response() :: #{
%%   <<"contentEncoding">> => [string()],
%%   <<"contentType">> => [string()],
%%   <<"imageSetMetadataBlob">> => binary()
%% }
-type get_image_set_metadata_response() :: #{binary() => any()}.


%% Example:
%% update_image_set_metadata_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"datastoreId">> => string(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"imageSetWorkflowStatus">> => list(any()),
%%   <<"latestVersionId">> => string(),
%%   <<"message">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_image_set_metadata_response() :: #{binary() => any()}.


%% Example:
%% d_i_c_o_m_study_date_and_time() :: #{
%%   <<"DICOMStudyDate">> => string(),
%%   <<"DICOMStudyTime">> => string()
%% }
-type d_i_c_o_m_study_date_and_time() :: #{binary() => any()}.


%% Example:
%% create_datastore_response() :: #{
%%   <<"datastoreId">> => string(),
%%   <<"datastoreStatus">> => list(any())
%% }
-type create_datastore_response() :: #{binary() => any()}.


%% Example:
%% copy_image_set_information() :: #{
%%   <<"destinationImageSet">> => copy_destination_image_set(),
%%   <<"sourceImageSet">> => copy_source_image_set_information()
%% }
-type copy_image_set_information() :: #{binary() => any()}.


%% Example:
%% delete_image_set_response() :: #{
%%   <<"datastoreId">> => string(),
%%   <<"imageSetId">> => string(),
%%   <<"imageSetState">> => list(any()),
%%   <<"imageSetWorkflowStatus">> => list(any())
%% }
-type delete_image_set_response() :: #{binary() => any()}.


%% Example:
%% search_criteria() :: #{
%%   <<"filters">> => list(search_filter()()),
%%   <<"sort">> => sort()
%% }
-type search_criteria() :: #{binary() => any()}.


%% Example:
%% get_image_frame_response() :: #{
%%   <<"contentType">> => [string()],
%%   <<"imageFrameBlob">> => binary()
%% }
-type get_image_frame_response() :: #{binary() => any()}.


%% Example:
%% list_d_i_c_o_m_import_jobs_response() :: #{
%%   <<"jobSummaries">> => list(d_i_c_o_m_import_job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_d_i_c_o_m_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_datastore_request() :: #{}
-type delete_datastore_request() :: #{}.


%% Example:
%% get_d_i_c_o_m_import_job_response() :: #{
%%   <<"jobProperties">> => d_i_c_o_m_import_job_properties()
%% }
-type get_d_i_c_o_m_import_job_response() :: #{binary() => any()}.

-type copy_image_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_image_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_d_i_c_o_m_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_datastore_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_image_frame_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_image_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_image_set_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_d_i_c_o_m_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_datastores_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_image_set_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_image_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_d_i_c_o_m_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_image_set_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Copy an image set.
-spec copy_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), copy_image_set_request()) ->
    {ok, copy_image_set_response(), tuple()} |
    {error, any()} |
    {error, copy_image_set_errors(), tuple()}.
copy_image_set(Client, DatastoreId, SourceImageSetId, Input) ->
    copy_image_set(Client, DatastoreId, SourceImageSetId, Input, []).

-spec copy_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), copy_image_set_request(), proplists:proplist()) ->
    {ok, copy_image_set_response(), tuple()} |
    {error, any()} |
    {error, copy_image_set_errors(), tuple()}.
copy_image_set(Client, DatastoreId, SourceImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(SourceImageSetId), "/copyImageSet"],
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
                     {<<"force">>, <<"force">>},
                     {<<"promoteToPrimary">>, <<"promoteToPrimary">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a data store.
-spec create_datastore(aws_client:aws_client(), create_datastore_request()) ->
    {ok, create_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_datastore_errors(), tuple()}.
create_datastore(Client, Input) ->
    create_datastore(Client, Input, []).

-spec create_datastore(aws_client:aws_client(), create_datastore_request(), proplists:proplist()) ->
    {ok, create_datastore_response(), tuple()} |
    {error, any()} |
    {error, create_datastore_errors(), tuple()}.
create_datastore(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datastore"],
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

%% @doc Delete a data store.
%%
%% Before a data store can be deleted, you must first delete all image sets
%% within it.
-spec delete_datastore(aws_client:aws_client(), binary() | list(), delete_datastore_request()) ->
    {ok, delete_datastore_response(), tuple()} |
    {error, any()} |
    {error, delete_datastore_errors(), tuple()}.
delete_datastore(Client, DatastoreId, Input) ->
    delete_datastore(Client, DatastoreId, Input, []).

-spec delete_datastore(aws_client:aws_client(), binary() | list(), delete_datastore_request(), proplists:proplist()) ->
    {ok, delete_datastore_response(), tuple()} |
    {error, any()} |
    {error, delete_datastore_errors(), tuple()}.
delete_datastore(Client, DatastoreId, Input0, Options0) ->
    Method = delete,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), ""],
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

%% @doc Delete an image set.
-spec delete_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_image_set_request()) ->
    {ok, delete_image_set_response(), tuple()} |
    {error, any()} |
    {error, delete_image_set_errors(), tuple()}.
delete_image_set(Client, DatastoreId, ImageSetId, Input) ->
    delete_image_set(Client, DatastoreId, ImageSetId, Input, []).

-spec delete_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_image_set_request(), proplists:proplist()) ->
    {ok, delete_image_set_response(), tuple()} |
    {error, any()} |
    {error, delete_image_set_errors(), tuple()}.
delete_image_set(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/deleteImageSet"],
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

%% @doc Get the import job properties to learn more about the job or job
%% progress.
%%
%% The `jobStatus' refers to the execution of the import job. Therefore,
%% an import job can return a `jobStatus' as `COMPLETED' even if
%% validation issues are discovered during the import process. If a
%% `jobStatus' returns as `COMPLETED', we still recommend you review
%% the output manifests written to S3, as they provide details on the success
%% or failure of individual P10 object imports.
-spec get_d_i_c_o_m_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_d_i_c_o_m_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_d_i_c_o_m_import_job_errors(), tuple()}.
get_d_i_c_o_m_import_job(Client, DatastoreId, JobId)
  when is_map(Client) ->
    get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, #{}, #{}).

-spec get_d_i_c_o_m_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_d_i_c_o_m_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_d_i_c_o_m_import_job_errors(), tuple()}.
get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap, []).

-spec get_d_i_c_o_m_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_d_i_c_o_m_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_d_i_c_o_m_import_job_errors(), tuple()}.
get_d_i_c_o_m_import_job(Client, DatastoreId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/getDICOMImportJob/datastore/", aws_util:encode_uri(DatastoreId), "/job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get data store properties.
-spec get_datastore(aws_client:aws_client(), binary() | list()) ->
    {ok, get_datastore_response(), tuple()} |
    {error, any()} |
    {error, get_datastore_errors(), tuple()}.
get_datastore(Client, DatastoreId)
  when is_map(Client) ->
    get_datastore(Client, DatastoreId, #{}, #{}).

-spec get_datastore(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_datastore_response(), tuple()} |
    {error, any()} |
    {error, get_datastore_errors(), tuple()}.
get_datastore(Client, DatastoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_datastore(Client, DatastoreId, QueryMap, HeadersMap, []).

-spec get_datastore(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_datastore_response(), tuple()} |
    {error, any()} |
    {error, get_datastore_errors(), tuple()}.
get_datastore(Client, DatastoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an image frame (pixel data) for an image set.
-spec get_image_frame(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_frame_request()) ->
    {ok, get_image_frame_response(), tuple()} |
    {error, any()} |
    {error, get_image_frame_errors(), tuple()}.
get_image_frame(Client, DatastoreId, ImageSetId, Input) ->
    get_image_frame(Client, DatastoreId, ImageSetId, Input, []).

-spec get_image_frame(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_frame_request(), proplists:proplist()) ->
    {ok, get_image_frame_response(), tuple()} |
    {error, any()} |
    {error, get_image_frame_errors(), tuple()}.
get_image_frame(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageFrame"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Get image set properties.
-spec get_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_set_request()) ->
    {ok, get_image_set_response(), tuple()} |
    {error, any()} |
    {error, get_image_set_errors(), tuple()}.
get_image_set(Client, DatastoreId, ImageSetId, Input) ->
    get_image_set(Client, DatastoreId, ImageSetId, Input, []).

-spec get_image_set(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_set_request(), proplists:proplist()) ->
    {ok, get_image_set_response(), tuple()} |
    {error, any()} |
    {error, get_image_set_errors(), tuple()}.
get_image_set(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageSet"],
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
                     {<<"version">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get metadata attributes for an image set.
-spec get_image_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_set_metadata_request()) ->
    {ok, get_image_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_image_set_metadata_errors(), tuple()}.
get_image_set_metadata(Client, DatastoreId, ImageSetId, Input) ->
    get_image_set_metadata(Client, DatastoreId, ImageSetId, Input, []).

-spec get_image_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), get_image_set_metadata_request(), proplists:proplist()) ->
    {ok, get_image_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_image_set_metadata_errors(), tuple()}.
get_image_set_metadata(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/getImageSetMetadata"],
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
                     {<<"version">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Encoding">>, <<"contentEncoding">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc List import jobs created for a specific data store.
-spec list_d_i_c_o_m_import_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_d_i_c_o_m_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_d_i_c_o_m_import_jobs_errors(), tuple()}.
list_d_i_c_o_m_import_jobs(Client, DatastoreId)
  when is_map(Client) ->
    list_d_i_c_o_m_import_jobs(Client, DatastoreId, #{}, #{}).

-spec list_d_i_c_o_m_import_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_d_i_c_o_m_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_d_i_c_o_m_import_jobs_errors(), tuple()}.
list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap, []).

-spec list_d_i_c_o_m_import_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_d_i_c_o_m_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_d_i_c_o_m_import_jobs_errors(), tuple()}.
list_d_i_c_o_m_import_jobs(Client, DatastoreId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listDICOMImportJobs/datastore/", aws_util:encode_uri(DatastoreId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"jobStatus">>, maps:get(<<"jobStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List data stores.
-spec list_datastores(aws_client:aws_client()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client)
  when is_map(Client) ->
    list_datastores(Client, #{}, #{}).

-spec list_datastores(aws_client:aws_client(), map(), map()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datastores(Client, QueryMap, HeadersMap, []).

-spec list_datastores(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_datastores_response(), tuple()} |
    {error, any()} |
    {error, list_datastores_errors(), tuple()}.
list_datastores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastore"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"datastoreStatus">>, maps:get(<<"datastoreStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List image set versions.
-spec list_image_set_versions(aws_client:aws_client(), binary() | list(), binary() | list(), list_image_set_versions_request()) ->
    {ok, list_image_set_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_set_versions_errors(), tuple()}.
list_image_set_versions(Client, DatastoreId, ImageSetId, Input) ->
    list_image_set_versions(Client, DatastoreId, ImageSetId, Input, []).

-spec list_image_set_versions(aws_client:aws_client(), binary() | list(), binary() | list(), list_image_set_versions_request(), proplists:proplist()) ->
    {ok, list_image_set_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_set_versions_errors(), tuple()}.
list_image_set_versions(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/listImageSetVersions"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all tags associated with a medical imaging resource.
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

%% @doc Search image sets based on defined input attributes.
%%
%% `SearchImageSets' accepts a single search query parameter and returns
%% a paginated response of all image sets that have the matching criteria.
%% All date range queries must be input as `(lowerBound, upperBound)'.
%%
%% By default, `SearchImageSets' uses the `updatedAt' field for
%% sorting in descending order from newest to oldest.
-spec search_image_sets(aws_client:aws_client(), binary() | list(), search_image_sets_request()) ->
    {ok, search_image_sets_response(), tuple()} |
    {error, any()} |
    {error, search_image_sets_errors(), tuple()}.
search_image_sets(Client, DatastoreId, Input) ->
    search_image_sets(Client, DatastoreId, Input, []).

-spec search_image_sets(aws_client:aws_client(), binary() | list(), search_image_sets_request(), proplists:proplist()) ->
    {ok, search_image_sets_response(), tuple()} |
    {error, any()} |
    {error, search_image_sets_errors(), tuple()}.
search_image_sets(Client, DatastoreId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/searchImageSets"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Start importing bulk data into an `ACTIVE' data store.
%%
%% The import job imports DICOM P10 files found in the S3 prefix specified by
%% the `inputS3Uri' parameter. The import job stores processing results
%% in the file specified by the `outputS3Uri' parameter.
-spec start_d_i_c_o_m_import_job(aws_client:aws_client(), binary() | list(), start_d_i_c_o_m_import_job_request()) ->
    {ok, start_d_i_c_o_m_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_d_i_c_o_m_import_job_errors(), tuple()}.
start_d_i_c_o_m_import_job(Client, DatastoreId, Input) ->
    start_d_i_c_o_m_import_job(Client, DatastoreId, Input, []).

-spec start_d_i_c_o_m_import_job(aws_client:aws_client(), binary() | list(), start_d_i_c_o_m_import_job_request(), proplists:proplist()) ->
    {ok, start_d_i_c_o_m_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_d_i_c_o_m_import_job_errors(), tuple()}.
start_d_i_c_o_m_import_job(Client, DatastoreId, Input0, Options0) ->
    Method = post,
    Path = ["/startDICOMImportJob/datastore/", aws_util:encode_uri(DatastoreId), ""],
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

%% @doc Adds a user-specifed key and value tag to a medical imaging resource.
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

%% @doc Removes tags from a medical imaging resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update image set metadata attributes.
-spec update_image_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_image_set_metadata_request()) ->
    {ok, update_image_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_image_set_metadata_errors(), tuple()}.
update_image_set_metadata(Client, DatastoreId, ImageSetId, Input) ->
    update_image_set_metadata(Client, DatastoreId, ImageSetId, Input, []).

-spec update_image_set_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), update_image_set_metadata_request(), proplists:proplist()) ->
    {ok, update_image_set_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_image_set_metadata_errors(), tuple()}.
update_image_set_metadata(Client, DatastoreId, ImageSetId, Input0, Options0) ->
    Method = post,
    Path = ["/datastore/", aws_util:encode_uri(DatastoreId), "/imageSet/", aws_util:encode_uri(ImageSetId), "/updateImageSetMetadata"],
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
                     {<<"force">>, <<"force">>},
                     {<<"latestVersion">>, <<"latestVersionId">>}
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
    Client1 = Client#{service => <<"medical-imaging">>},
    Host = build_host(<<"medical-imaging">>, Client1),
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
