%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs for creating and managing SageMaker geospatial
%% resources.
-module(aws_sagemaker_geospatial).

-export([delete_earth_observation_job/3,
         delete_earth_observation_job/4,
         delete_vector_enrichment_job/3,
         delete_vector_enrichment_job/4,
         export_earth_observation_job/2,
         export_earth_observation_job/3,
         export_vector_enrichment_job/2,
         export_vector_enrichment_job/3,
         get_earth_observation_job/2,
         get_earth_observation_job/4,
         get_earth_observation_job/5,
         get_raster_data_collection/2,
         get_raster_data_collection/4,
         get_raster_data_collection/5,
         get_tile/7,
         get_tile/9,
         get_tile/10,
         get_vector_enrichment_job/2,
         get_vector_enrichment_job/4,
         get_vector_enrichment_job/5,
         list_earth_observation_jobs/2,
         list_earth_observation_jobs/3,
         list_raster_data_collections/1,
         list_raster_data_collections/3,
         list_raster_data_collections/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vector_enrichment_jobs/2,
         list_vector_enrichment_jobs/3,
         search_raster_data_collection/2,
         search_raster_data_collection/3,
         start_earth_observation_job/2,
         start_earth_observation_job/3,
         start_vector_enrichment_job/2,
         start_vector_enrichment_job/3,
         stop_earth_observation_job/2,
         stop_earth_observation_job/3,
         stop_vector_enrichment_job/2,
         stop_vector_enrichment_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% view_off_nadir_input() :: #{
%%   <<"LowerBound">> => [float()],
%%   <<"UpperBound">> => [float()]
%% }
-type view_off_nadir_input() :: #{binary() => any()}.


%% Example:
%% zonal_statistics_config_input() :: #{
%%   <<"Statistics">> => list(string()),
%%   <<"TargetBands">> => list([string()]()),
%%   <<"ZoneS3Path">> => string(),
%%   <<"ZoneS3PathKmsKeyId">> => string()
%% }
-type zonal_statistics_config_input() :: #{binary() => any()}.


%% Example:
%% operation() :: #{
%%   <<"Equation">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"OutputType">> => string()
%% }
-type operation() :: #{binary() => any()}.


%% Example:
%% output_band() :: #{
%%   <<"BandName">> => [string()],
%%   <<"OutputDataType">> => string()
%% }
-type output_band() :: #{binary() => any()}.


%% Example:
%% view_sun_elevation_input() :: #{
%%   <<"LowerBound">> => [float()],
%%   <<"UpperBound">> => [float()]
%% }
-type view_sun_elevation_input() :: #{binary() => any()}.


%% Example:
%% get_earth_observation_job_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"ErrorDetails">> => earth_observation_job_error_details(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExportErrorDetails">> => export_error_details(),
%%   <<"ExportStatus">> => string(),
%%   <<"InputConfig">> => input_config_output(),
%%   <<"JobConfig">> => list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> => [string()],
%%   <<"OutputBands">> => list(output_band()),
%%   <<"Status">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_earth_observation_job_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% reverse_geocoding_config() :: #{
%%   <<"XAttributeName">> => [string()],
%%   <<"YAttributeName">> => [string()]
%% }
-type reverse_geocoding_config() :: #{binary() => any()}.


%% Example:
%% user_defined() :: #{
%%   <<"Unit">> => string(),
%%   <<"Value">> => [float()]
%% }
-type user_defined() :: #{binary() => any()}.


%% Example:
%% stack_config_input() :: #{
%%   <<"OutputResolution">> => output_resolution_stack_input(),
%%   <<"TargetBands">> => list([string()]())
%% }
-type stack_config_input() :: #{binary() => any()}.


%% Example:
%% property_filters() :: #{
%%   <<"LogicalOperator">> => string(),
%%   <<"Properties">> => list(property_filter())
%% }
-type property_filters() :: #{binary() => any()}.


%% Example:
%% polygon_geometry_input() :: #{
%%   <<"Coordinates">> => list(list(list([float()]())())())
%% }
-type polygon_geometry_input() :: #{binary() => any()}.


%% Example:
%% list_raster_data_collections_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RasterDataCollectionSummaries">> := list(raster_data_collection_metadata())
%% }
-type list_raster_data_collections_output() :: #{binary() => any()}.


%% Example:
%% geometry() :: #{
%%   <<"Coordinates">> => list(list(list([float()]())())()),
%%   <<"Type">> => [string()]
%% }
-type geometry() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_earth_observation_job_output() :: #{
%%   <<"EarthObservationJobSummaries">> := list(list_earth_observation_job_output_config()),
%%   <<"NextToken">> => string()
%% }
-type list_earth_observation_job_output() :: #{binary() => any()}.


%% Example:
%% export_s3_data_input() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type export_s3_data_input() :: #{binary() => any()}.


%% Example:
%% start_earth_observation_job_output() :: #{
%%   <<"Arn">> := [string()],
%%   <<"CreationTime">> := [non_neg_integer()],
%%   <<"DurationInSeconds">> := [integer()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"InputConfig">> => input_config_output(),
%%   <<"JobConfig">> := list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := [string()],
%%   <<"Status">> := string(),
%%   <<"Tags">> => map()
%% }
-type start_earth_observation_job_output() :: #{binary() => any()}.


%% Example:
%% properties() :: #{
%%   <<"EoCloudCover">> => [float()],
%%   <<"LandsatCloudCoverLand">> => [float()],
%%   <<"Platform">> => [string()],
%%   <<"ViewOffNadir">> => [float()],
%%   <<"ViewSunAzimuth">> => [float()],
%%   <<"ViewSunElevation">> => [float()]
%% }
-type properties() :: #{binary() => any()}.


%% Example:
%% export_vector_enrichment_job_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"ClientToken">> => [string()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"OutputConfig">> := export_vector_enrichment_job_output_config()
%% }
-type export_vector_enrichment_job_input() :: #{binary() => any()}.


%% Example:
%% start_vector_enrichment_job_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"InputConfig">> := vector_enrichment_job_input_config(),
%%   <<"JobConfig">> := list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := [string()],
%%   <<"Tags">> => map()
%% }
-type start_vector_enrichment_job_input() :: #{binary() => any()}.

%% Example:
%% delete_vector_enrichment_job_input() :: #{}
-type delete_vector_enrichment_job_input() :: #{}.


%% Example:
%% cloud_removal_config_input() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"InterpolationValue">> => [string()],
%%   <<"TargetBands">> => list([string()]())
%% }
-type cloud_removal_config_input() :: #{binary() => any()}.


%% Example:
%% raster_data_collection_query_output() :: #{
%%   <<"AreaOfInterest">> => list(),
%%   <<"PropertyFilters">> => property_filters(),
%%   <<"RasterDataCollectionArn">> => string(),
%%   <<"RasterDataCollectionName">> => [string()],
%%   <<"TimeRangeFilter">> => time_range_filter_output()
%% }
-type raster_data_collection_query_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% time_range_filter_input() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type time_range_filter_input() :: #{binary() => any()}.


%% Example:
%% custom_indices_input() :: #{
%%   <<"Operations">> => list(operation())
%% }
-type custom_indices_input() :: #{binary() => any()}.

%% Example:
%% get_raster_data_collection_input() :: #{}
-type get_raster_data_collection_input() :: #{}.


%% Example:
%% list_earth_observation_job_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => [string()],
%%   <<"SortOrder">> => string(),
%%   <<"StatusEquals">> => string()
%% }
-type list_earth_observation_job_input() :: #{binary() => any()}.


%% Example:
%% export_earth_observation_job_output() :: #{
%%   <<"Arn">> := string(),
%%   <<"CreationTime">> := [non_neg_integer()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"ExportSourceImages">> => [boolean()],
%%   <<"ExportStatus">> := string(),
%%   <<"OutputConfig">> := output_config_input()
%% }
-type export_earth_observation_job_output() :: #{binary() => any()}.

%% Example:
%% delete_earth_observation_job_input() :: #{}
-type delete_earth_observation_job_input() :: #{}.


%% Example:
%% asset_value() :: #{
%%   <<"Href">> => [string()]
%% }
-type asset_value() :: #{binary() => any()}.


%% Example:
%% landsat_cloud_cover_land_input() :: #{
%%   <<"LowerBound">> => [float()],
%%   <<"UpperBound">> => [float()]
%% }
-type landsat_cloud_cover_land_input() :: #{binary() => any()}.


%% Example:
%% list_vector_enrichment_job_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VectorEnrichmentJobSummaries">> := list(list_vector_enrichment_job_output_config())
%% }
-type list_vector_enrichment_job_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% time_range_filter_output() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type time_range_filter_output() :: #{binary() => any()}.


%% Example:
%% temporal_statistics_config_input() :: #{
%%   <<"GroupBy">> => string(),
%%   <<"Statistics">> => list(string()),
%%   <<"TargetBands">> => list([string()]())
%% }
-type temporal_statistics_config_input() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_tile_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ImageAssets">> := list([string()]()),
%%   <<"ImageMask">> => [boolean()],
%%   <<"OutputDataType">> => string(),
%%   <<"OutputFormat">> => [string()],
%%   <<"PropertyFilters">> => [string()],
%%   <<"Target">> := string(),
%%   <<"TimeRangeFilter">> => [string()]
%% }
-type get_tile_input() :: #{binary() => any()}.


%% Example:
%% vector_enrichment_job_input_config() :: #{
%%   <<"DataSourceConfig">> => list(),
%%   <<"DocumentType">> => string()
%% }
-type vector_enrichment_job_input_config() :: #{binary() => any()}.


%% Example:
%% earth_observation_job_error_details() :: #{
%%   <<"Message">> => [string()],
%%   <<"Type">> => string()
%% }
-type earth_observation_job_error_details() :: #{binary() => any()}.


%% Example:
%% start_earth_observation_job_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"InputConfig">> := input_config_input(),
%%   <<"JobConfig">> := list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := [string()],
%%   <<"Tags">> => map()
%% }
-type start_earth_observation_job_input() :: #{binary() => any()}.


%% Example:
%% list_earth_observation_job_output_config() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"Name">> => [string()],
%%   <<"OperationType">> => [string()],
%%   <<"Status">> => string(),
%%   <<"Tags">> => map()
%% }
-type list_earth_observation_job_output_config() :: #{binary() => any()}.


%% Example:
%% search_raster_data_collection_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"RasterDataCollectionQuery">> := raster_data_collection_query_with_band_filter_input()
%% }
-type search_raster_data_collection_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% item_source() :: #{
%%   <<"Assets">> => map(),
%%   <<"DateTime">> => [non_neg_integer()],
%%   <<"Geometry">> => geometry(),
%%   <<"Id">> => [string()],
%%   <<"Properties">> => properties()
%% }
-type item_source() :: #{binary() => any()}.


%% Example:
%% input_config_input() :: #{
%%   <<"PreviousEarthObservationJobArn">> => string(),
%%   <<"RasterDataCollectionQuery">> => raster_data_collection_query_input()
%% }
-type input_config_input() :: #{binary() => any()}.


%% Example:
%% eo_cloud_cover_input() :: #{
%%   <<"LowerBound">> => [float()],
%%   <<"UpperBound">> => [float()]
%% }
-type eo_cloud_cover_input() :: #{binary() => any()}.


%% Example:
%% export_vector_enrichment_job_output_config() :: #{
%%   <<"S3Data">> => vector_enrichment_job_s3_data()
%% }
-type export_vector_enrichment_job_output_config() :: #{binary() => any()}.

%% Example:
%% delete_earth_observation_job_output() :: #{}
-type delete_earth_observation_job_output() :: #{}.


%% Example:
%% vector_enrichment_job_error_details() :: #{
%%   <<"ErrorMessage">> => [string()],
%%   <<"ErrorType">> => string()
%% }
-type vector_enrichment_job_error_details() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Maximum">> => [float()],
%%   <<"Minimum">> => [float()],
%%   <<"Name">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% resampling_config_input() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"OutputResolution">> => output_resolution_resampling_input(),
%%   <<"TargetBands">> => list([string()]())
%% }
-type resampling_config_input() :: #{binary() => any()}.


%% Example:
%% get_tile_output() :: #{
%%   <<"BinaryFile">> => binary()
%% }
-type get_tile_output() :: #{binary() => any()}.

%% Example:
%% get_vector_enrichment_job_input() :: #{}
-type get_vector_enrichment_job_input() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% platform_input() :: #{
%%   <<"ComparisonOperator">> => string(),
%%   <<"Value">> => [string()]
%% }
-type platform_input() :: #{binary() => any()}.


%% Example:
%% export_earth_observation_job_input() :: #{
%%   <<"Arn">> := string(),
%%   <<"ClientToken">> => [string()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"ExportSourceImages">> => [boolean()],
%%   <<"OutputConfig">> := output_config_input()
%% }
-type export_earth_observation_job_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% property_filter() :: #{
%%   <<"Property">> => list()
%% }
-type property_filter() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_raster_data_collections_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_raster_data_collections_input() :: #{binary() => any()}.

%% Example:
%% delete_vector_enrichment_job_output() :: #{}
-type delete_vector_enrichment_job_output() :: #{}.

%% Example:
%% land_cover_segmentation_config_input() :: #{}
-type land_cover_segmentation_config_input() :: #{}.


%% Example:
%% geo_mosaic_config_input() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"TargetBands">> => list([string()]())
%% }
-type geo_mosaic_config_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_vector_enrichment_job_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => [string()],
%%   <<"SortOrder">> => string(),
%%   <<"StatusEquals">> => [string()]
%% }
-type list_vector_enrichment_job_input() :: #{binary() => any()}.


%% Example:
%% stop_vector_enrichment_job_input() :: #{
%%   <<"Arn">> := string()
%% }
-type stop_vector_enrichment_job_input() :: #{binary() => any()}.


%% Example:
%% output_resolution_resampling_input() :: #{
%%   <<"UserDefined">> => user_defined()
%% }
-type output_resolution_resampling_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% vector_enrichment_job_s3_data() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type vector_enrichment_job_s3_data() :: #{binary() => any()}.


%% Example:
%% input_config_output() :: #{
%%   <<"PreviousEarthObservationJobArn">> => string(),
%%   <<"RasterDataCollectionQuery">> => raster_data_collection_query_output()
%% }
-type input_config_output() :: #{binary() => any()}.


%% Example:
%% raster_data_collection_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => [string()],
%%   <<"DescriptionPageUrl">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"SupportedFilters">> => list(filter()),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type raster_data_collection_metadata() :: #{binary() => any()}.


%% Example:
%% raster_data_collection_query_with_band_filter_input() :: #{
%%   <<"AreaOfInterest">> => list(),
%%   <<"BandFilter">> => list([string()]()),
%%   <<"PropertyFilters">> => property_filters(),
%%   <<"TimeRangeFilter">> => time_range_filter_input()
%% }
-type raster_data_collection_query_with_band_filter_input() :: #{binary() => any()}.


%% Example:
%% start_vector_enrichment_job_output() :: #{
%%   <<"Arn">> := string(),
%%   <<"CreationTime">> := [non_neg_integer()],
%%   <<"DurationInSeconds">> := [integer()],
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"InputConfig">> := vector_enrichment_job_input_config(),
%%   <<"JobConfig">> := list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> := [string()],
%%   <<"Status">> := string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> := string()
%% }
-type start_vector_enrichment_job_output() :: #{binary() => any()}.


%% Example:
%% export_error_details() :: #{
%%   <<"ExportResults">> => export_error_details_output(),
%%   <<"ExportSourceImages">> => export_error_details_output()
%% }
-type export_error_details() :: #{binary() => any()}.


%% Example:
%% search_raster_data_collection_output() :: #{
%%   <<"ApproximateResultCount">> => [integer()],
%%   <<"Items">> => list(item_source()),
%%   <<"NextToken">> => string()
%% }
-type search_raster_data_collection_output() :: #{binary() => any()}.

%% Example:
%% cloud_masking_config_input() :: #{}
-type cloud_masking_config_input() :: #{}.

%% Example:
%% stop_vector_enrichment_job_output() :: #{}
-type stop_vector_enrichment_job_output() :: #{}.


%% Example:
%% map_matching_config() :: #{
%%   <<"IdAttributeName">> => [string()],
%%   <<"TimestampAttributeName">> => [string()],
%%   <<"XAttributeName">> => [string()],
%%   <<"YAttributeName">> => [string()]
%% }
-type map_matching_config() :: #{binary() => any()}.


%% Example:
%% list_vector_enrichment_job_output_config() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"Name">> => [string()],
%%   <<"Status">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type list_vector_enrichment_job_output_config() :: #{binary() => any()}.


%% Example:
%% get_raster_data_collection_output() :: #{
%%   <<"Arn">> := string(),
%%   <<"Description">> := [string()],
%%   <<"DescriptionPageUrl">> := [string()],
%%   <<"ImageSourceBands">> := list([string()]()),
%%   <<"Name">> := [string()],
%%   <<"SupportedFilters">> := list(filter()),
%%   <<"Tags">> => map(),
%%   <<"Type">> := string()
%% }
-type get_raster_data_collection_output() :: #{binary() => any()}.


%% Example:
%% get_vector_enrichment_job_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"DurationInSeconds">> => [integer()],
%%   <<"ErrorDetails">> => vector_enrichment_job_error_details(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExportErrorDetails">> => vector_enrichment_job_export_error_details(),
%%   <<"ExportStatus">> => string(),
%%   <<"InputConfig">> => vector_enrichment_job_input_config(),
%%   <<"JobConfig">> => list(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> => [string()],
%%   <<"Status">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type get_vector_enrichment_job_output() :: #{binary() => any()}.


%% Example:
%% multi_polygon_geometry_input() :: #{
%%   <<"Coordinates">> => list(list(list(list([float()]())())())())
%% }
-type multi_polygon_geometry_input() :: #{binary() => any()}.


%% Example:
%% export_error_details_output() :: #{
%%   <<"Message">> => [string()],
%%   <<"Type">> => string()
%% }
-type export_error_details_output() :: #{binary() => any()}.


%% Example:
%% output_resolution_stack_input() :: #{
%%   <<"Predefined">> => string(),
%%   <<"UserDefined">> => user_defined()
%% }
-type output_resolution_stack_input() :: #{binary() => any()}.


%% Example:
%% raster_data_collection_query_input() :: #{
%%   <<"AreaOfInterest">> => list(),
%%   <<"PropertyFilters">> => property_filters(),
%%   <<"RasterDataCollectionArn">> => string(),
%%   <<"TimeRangeFilter">> => time_range_filter_input()
%% }
-type raster_data_collection_query_input() :: #{binary() => any()}.


%% Example:
%% export_vector_enrichment_job_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExportStatus">> => string(),
%%   <<"OutputConfig">> => export_vector_enrichment_job_output_config()
%% }
-type export_vector_enrichment_job_output() :: #{binary() => any()}.


%% Example:
%% output_config_input() :: #{
%%   <<"S3Data">> => export_s3_data_input()
%% }
-type output_config_input() :: #{binary() => any()}.

%% Example:
%% get_earth_observation_job_input() :: #{}
-type get_earth_observation_job_input() :: #{}.

%% Example:
%% stop_earth_observation_job_output() :: #{}
-type stop_earth_observation_job_output() :: #{}.


%% Example:
%% view_sun_azimuth_input() :: #{
%%   <<"LowerBound">> => [float()],
%%   <<"UpperBound">> => [float()]
%% }
-type view_sun_azimuth_input() :: #{binary() => any()}.


%% Example:
%% stop_earth_observation_job_input() :: #{
%%   <<"Arn">> := string()
%% }
-type stop_earth_observation_job_input() :: #{binary() => any()}.


%% Example:
%% band_math_config_input() :: #{
%%   <<"CustomIndices">> => custom_indices_input(),
%%   <<"PredefinedIndices">> => list([string()]())
%% }
-type band_math_config_input() :: #{binary() => any()}.


%% Example:
%% vector_enrichment_job_export_error_details() :: #{
%%   <<"Message">> => [string()],
%%   <<"Type">> => string()
%% }
-type vector_enrichment_job_export_error_details() :: #{binary() => any()}.

-type delete_earth_observation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_vector_enrichment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type export_earth_observation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type export_vector_enrichment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_earth_observation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_raster_data_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_tile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_vector_enrichment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_earth_observation_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_raster_data_collections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_vector_enrichment_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_raster_data_collection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_earth_observation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_vector_enrichment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_earth_observation_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_vector_enrichment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
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

%%====================================================================
%% API
%%====================================================================

%% @doc Use this operation to delete an Earth Observation job.
-spec delete_earth_observation_job(aws_client:aws_client(), binary() | list(), delete_earth_observation_job_input()) ->
    {ok, delete_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, delete_earth_observation_job_errors(), tuple()}.
delete_earth_observation_job(Client, Arn, Input) ->
    delete_earth_observation_job(Client, Arn, Input, []).

-spec delete_earth_observation_job(aws_client:aws_client(), binary() | list(), delete_earth_observation_job_input(), proplists:proplist()) ->
    {ok, delete_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, delete_earth_observation_job_errors(), tuple()}.
delete_earth_observation_job(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/earth-observation-jobs/", aws_util:encode_uri(Arn), ""],
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

%% @doc Use this operation to delete a Vector Enrichment job.
-spec delete_vector_enrichment_job(aws_client:aws_client(), binary() | list(), delete_vector_enrichment_job_input()) ->
    {ok, delete_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_enrichment_job_errors(), tuple()}.
delete_vector_enrichment_job(Client, Arn, Input) ->
    delete_vector_enrichment_job(Client, Arn, Input, []).

-spec delete_vector_enrichment_job(aws_client:aws_client(), binary() | list(), delete_vector_enrichment_job_input(), proplists:proplist()) ->
    {ok, delete_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, delete_vector_enrichment_job_errors(), tuple()}.
delete_vector_enrichment_job(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/vector-enrichment-jobs/", aws_util:encode_uri(Arn), ""],
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

%% @doc Use this operation to export results of an Earth Observation job and
%% optionally source images used as input to the EOJ to an Amazon S3
%% location.
-spec export_earth_observation_job(aws_client:aws_client(), export_earth_observation_job_input()) ->
    {ok, export_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, export_earth_observation_job_errors(), tuple()}.
export_earth_observation_job(Client, Input) ->
    export_earth_observation_job(Client, Input, []).

-spec export_earth_observation_job(aws_client:aws_client(), export_earth_observation_job_input(), proplists:proplist()) ->
    {ok, export_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, export_earth_observation_job_errors(), tuple()}.
export_earth_observation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/export-earth-observation-job"],
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

%% @doc Use this operation to copy results of a Vector Enrichment job to an
%% Amazon S3 location.
-spec export_vector_enrichment_job(aws_client:aws_client(), export_vector_enrichment_job_input()) ->
    {ok, export_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, export_vector_enrichment_job_errors(), tuple()}.
export_vector_enrichment_job(Client, Input) ->
    export_vector_enrichment_job(Client, Input, []).

-spec export_vector_enrichment_job(aws_client:aws_client(), export_vector_enrichment_job_input(), proplists:proplist()) ->
    {ok, export_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, export_vector_enrichment_job_errors(), tuple()}.
export_vector_enrichment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/export-vector-enrichment-jobs"],
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

%% @doc Get the details for a previously initiated Earth Observation job.
-spec get_earth_observation_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, get_earth_observation_job_errors(), tuple()}.
get_earth_observation_job(Client, Arn)
  when is_map(Client) ->
    get_earth_observation_job(Client, Arn, #{}, #{}).

-spec get_earth_observation_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, get_earth_observation_job_errors(), tuple()}.
get_earth_observation_job(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_earth_observation_job(Client, Arn, QueryMap, HeadersMap, []).

-spec get_earth_observation_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, get_earth_observation_job_errors(), tuple()}.
get_earth_observation_job(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/earth-observation-jobs/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this operation to get details of a specific raster data
%% collection.
-spec get_raster_data_collection(aws_client:aws_client(), binary() | list()) ->
    {ok, get_raster_data_collection_output(), tuple()} |
    {error, any()} |
    {error, get_raster_data_collection_errors(), tuple()}.
get_raster_data_collection(Client, Arn)
  when is_map(Client) ->
    get_raster_data_collection(Client, Arn, #{}, #{}).

-spec get_raster_data_collection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_raster_data_collection_output(), tuple()} |
    {error, any()} |
    {error, get_raster_data_collection_errors(), tuple()}.
get_raster_data_collection(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_raster_data_collection(Client, Arn, QueryMap, HeadersMap, []).

-spec get_raster_data_collection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_raster_data_collection_output(), tuple()} |
    {error, any()} |
    {error, get_raster_data_collection_errors(), tuple()}.
get_raster_data_collection(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/raster-data-collection/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a web mercator tile for the given Earth Observation job.
-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_tile_output(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, X, Y, Z, Arn, ImageAssets, Target)
  when is_map(Client) ->
    get_tile(Client, X, Y, Z, Arn, ImageAssets, Target, #{}, #{}).

-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_tile_output(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, X, Y, Z, Arn, ImageAssets, Target, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tile(Client, X, Y, Z, Arn, ImageAssets, Target, QueryMap, HeadersMap, []).

-spec get_tile(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_tile_output(), tuple()} |
    {error, any()} |
    {error, get_tile_errors(), tuple()}.
get_tile(Client, X, Y, Z, Arn, ImageAssets, Target, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tile/", aws_util:encode_uri(Z), "/", aws_util:encode_uri(X), "/", aws_util:encode_uri(Y), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Arn">>, Arn},
        {<<"ExecutionRoleArn">>, maps:get(<<"ExecutionRoleArn">>, QueryMap, undefined)},
        {<<"ImageAssets">>, ImageAssets},
        {<<"ImageMask">>, maps:get(<<"ImageMask">>, QueryMap, undefined)},
        {<<"OutputDataType">>, maps:get(<<"OutputDataType">>, QueryMap, undefined)},
        {<<"OutputFormat">>, maps:get(<<"OutputFormat">>, QueryMap, undefined)},
        {<<"PropertyFilters">>, maps:get(<<"PropertyFilters">>, QueryMap, undefined)},
        {<<"Target">>, Target},
        {<<"TimeRangeFilter">>, maps:get(<<"TimeRangeFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details of a Vector Enrichment Job for a given job Amazon
%% Resource Name (ARN).
-spec get_vector_enrichment_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, get_vector_enrichment_job_errors(), tuple()}.
get_vector_enrichment_job(Client, Arn)
  when is_map(Client) ->
    get_vector_enrichment_job(Client, Arn, #{}, #{}).

-spec get_vector_enrichment_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, get_vector_enrichment_job_errors(), tuple()}.
get_vector_enrichment_job(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_vector_enrichment_job(Client, Arn, QueryMap, HeadersMap, []).

-spec get_vector_enrichment_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, get_vector_enrichment_job_errors(), tuple()}.
get_vector_enrichment_job(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/vector-enrichment-jobs/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use this operation to get a list of the Earth Observation jobs
%% associated with the calling Amazon Web Services account.
-spec list_earth_observation_jobs(aws_client:aws_client(), list_earth_observation_job_input()) ->
    {ok, list_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, list_earth_observation_jobs_errors(), tuple()}.
list_earth_observation_jobs(Client, Input) ->
    list_earth_observation_jobs(Client, Input, []).

-spec list_earth_observation_jobs(aws_client:aws_client(), list_earth_observation_job_input(), proplists:proplist()) ->
    {ok, list_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, list_earth_observation_jobs_errors(), tuple()}.
list_earth_observation_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-earth-observation-jobs"],
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

%% @doc Use this operation to get raster data collections.
-spec list_raster_data_collections(aws_client:aws_client()) ->
    {ok, list_raster_data_collections_output(), tuple()} |
    {error, any()} |
    {error, list_raster_data_collections_errors(), tuple()}.
list_raster_data_collections(Client)
  when is_map(Client) ->
    list_raster_data_collections(Client, #{}, #{}).

-spec list_raster_data_collections(aws_client:aws_client(), map(), map()) ->
    {ok, list_raster_data_collections_output(), tuple()} |
    {error, any()} |
    {error, list_raster_data_collections_errors(), tuple()}.
list_raster_data_collections(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_raster_data_collections(Client, QueryMap, HeadersMap, []).

-spec list_raster_data_collections(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_raster_data_collections_output(), tuple()} |
    {error, any()} |
    {error, list_raster_data_collections_errors(), tuple()}.
list_raster_data_collections(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/raster-data-collections"],
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

%% @doc Lists the tags attached to the resource.
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

%% @doc Retrieves a list of vector enrichment jobs.
-spec list_vector_enrichment_jobs(aws_client:aws_client(), list_vector_enrichment_job_input()) ->
    {ok, list_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, list_vector_enrichment_jobs_errors(), tuple()}.
list_vector_enrichment_jobs(Client, Input) ->
    list_vector_enrichment_jobs(Client, Input, []).

-spec list_vector_enrichment_jobs(aws_client:aws_client(), list_vector_enrichment_job_input(), proplists:proplist()) ->
    {ok, list_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, list_vector_enrichment_jobs_errors(), tuple()}.
list_vector_enrichment_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-vector-enrichment-jobs"],
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

%% @doc Allows you run image query on a specific raster data collection to
%% get a list of the satellite imagery matching the selected filters.
-spec search_raster_data_collection(aws_client:aws_client(), search_raster_data_collection_input()) ->
    {ok, search_raster_data_collection_output(), tuple()} |
    {error, any()} |
    {error, search_raster_data_collection_errors(), tuple()}.
search_raster_data_collection(Client, Input) ->
    search_raster_data_collection(Client, Input, []).

-spec search_raster_data_collection(aws_client:aws_client(), search_raster_data_collection_input(), proplists:proplist()) ->
    {ok, search_raster_data_collection_output(), tuple()} |
    {error, any()} |
    {error, search_raster_data_collection_errors(), tuple()}.
search_raster_data_collection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/search-raster-data-collection"],
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

%% @doc Use this operation to create an Earth observation job.
-spec start_earth_observation_job(aws_client:aws_client(), start_earth_observation_job_input()) ->
    {ok, start_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, start_earth_observation_job_errors(), tuple()}.
start_earth_observation_job(Client, Input) ->
    start_earth_observation_job(Client, Input, []).

-spec start_earth_observation_job(aws_client:aws_client(), start_earth_observation_job_input(), proplists:proplist()) ->
    {ok, start_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, start_earth_observation_job_errors(), tuple()}.
start_earth_observation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/earth-observation-jobs"],
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

%% @doc Creates a Vector Enrichment job for the supplied job type.
%%
%% Currently, there are two supported job types: reverse geocoding and map
%% matching.
-spec start_vector_enrichment_job(aws_client:aws_client(), start_vector_enrichment_job_input()) ->
    {ok, start_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, start_vector_enrichment_job_errors(), tuple()}.
start_vector_enrichment_job(Client, Input) ->
    start_vector_enrichment_job(Client, Input, []).

-spec start_vector_enrichment_job(aws_client:aws_client(), start_vector_enrichment_job_input(), proplists:proplist()) ->
    {ok, start_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, start_vector_enrichment_job_errors(), tuple()}.
start_vector_enrichment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vector-enrichment-jobs"],
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

%% @doc Use this operation to stop an existing earth observation job.
-spec stop_earth_observation_job(aws_client:aws_client(), stop_earth_observation_job_input()) ->
    {ok, stop_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, stop_earth_observation_job_errors(), tuple()}.
stop_earth_observation_job(Client, Input) ->
    stop_earth_observation_job(Client, Input, []).

-spec stop_earth_observation_job(aws_client:aws_client(), stop_earth_observation_job_input(), proplists:proplist()) ->
    {ok, stop_earth_observation_job_output(), tuple()} |
    {error, any()} |
    {error, stop_earth_observation_job_errors(), tuple()}.
stop_earth_observation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/earth-observation-jobs/stop"],
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

%% @doc Stops the Vector Enrichment job for a given job ARN.
-spec stop_vector_enrichment_job(aws_client:aws_client(), stop_vector_enrichment_job_input()) ->
    {ok, stop_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, stop_vector_enrichment_job_errors(), tuple()}.
stop_vector_enrichment_job(Client, Input) ->
    stop_vector_enrichment_job(Client, Input, []).

-spec stop_vector_enrichment_job(aws_client:aws_client(), stop_vector_enrichment_job_input(), proplists:proplist()) ->
    {ok, stop_vector_enrichment_job_output(), tuple()} |
    {error, any()} |
    {error, stop_vector_enrichment_job_errors(), tuple()}.
stop_vector_enrichment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vector-enrichment-jobs/stop"],
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

%% @doc The resource you want to tag.
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
    Method = put,
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

%% @doc The resource you want to untag.
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
    Client1 = Client#{service => <<"sagemaker-geospatial">>},
    Host = build_host(<<"sagemaker-geospatial">>, Client1),
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
