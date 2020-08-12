%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Rekognition API reference.
-module(aws_rekognition).

-export([compare_faces/2,
         compare_faces/3,
         create_collection/2,
         create_collection/3,
         create_project/2,
         create_project/3,
         create_project_version/2,
         create_project_version/3,
         create_stream_processor/2,
         create_stream_processor/3,
         delete_collection/2,
         delete_collection/3,
         delete_faces/2,
         delete_faces/3,
         delete_project/2,
         delete_project/3,
         delete_project_version/2,
         delete_project_version/3,
         delete_stream_processor/2,
         delete_stream_processor/3,
         describe_collection/2,
         describe_collection/3,
         describe_project_versions/2,
         describe_project_versions/3,
         describe_projects/2,
         describe_projects/3,
         describe_stream_processor/2,
         describe_stream_processor/3,
         detect_custom_labels/2,
         detect_custom_labels/3,
         detect_faces/2,
         detect_faces/3,
         detect_labels/2,
         detect_labels/3,
         detect_moderation_labels/2,
         detect_moderation_labels/3,
         detect_text/2,
         detect_text/3,
         get_celebrity_info/2,
         get_celebrity_info/3,
         get_celebrity_recognition/2,
         get_celebrity_recognition/3,
         get_content_moderation/2,
         get_content_moderation/3,
         get_face_detection/2,
         get_face_detection/3,
         get_face_search/2,
         get_face_search/3,
         get_label_detection/2,
         get_label_detection/3,
         get_person_tracking/2,
         get_person_tracking/3,
         get_segment_detection/2,
         get_segment_detection/3,
         get_text_detection/2,
         get_text_detection/3,
         index_faces/2,
         index_faces/3,
         list_collections/2,
         list_collections/3,
         list_faces/2,
         list_faces/3,
         list_stream_processors/2,
         list_stream_processors/3,
         recognize_celebrities/2,
         recognize_celebrities/3,
         search_faces/2,
         search_faces/3,
         search_faces_by_image/2,
         search_faces_by_image/3,
         start_celebrity_recognition/2,
         start_celebrity_recognition/3,
         start_content_moderation/2,
         start_content_moderation/3,
         start_face_detection/2,
         start_face_detection/3,
         start_face_search/2,
         start_face_search/3,
         start_label_detection/2,
         start_label_detection/3,
         start_person_tracking/2,
         start_person_tracking/3,
         start_project_version/2,
         start_project_version/3,
         start_segment_detection/2,
         start_segment_detection/3,
         start_stream_processor/2,
         start_stream_processor/3,
         start_text_detection/2,
         start_text_detection/3,
         stop_project_version/2,
         stop_project_version/3,
         stop_stream_processor/2,
         stop_stream_processor/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Compares a face in the <i>source</i> input image with each of the 100
%% largest faces detected in the <i>target</i> input image.
%%
%% <note> If the source image contains multiple faces, the service detects
%% the largest face and compares it with each face detected in the target
%% image.
%%
%% </note> You pass the input and target images either as base64-encoded
%% image bytes or as references to images in an Amazon S3 bucket. If you use
%% the AWS CLI to call Amazon Rekognition operations, passing image bytes
%% isn't supported. The image must be formatted as a PNG or JPEG file.
%%
%% In response, the operation returns an array of face matches ordered by
%% similarity score in descending order. For each face match, the response
%% provides a bounding box of the face, facial landmarks, pose details
%% (pitch, role, and yaw), quality (brightness and sharpness), and confidence
%% value (indicating the level of confidence that the bounding box contains a
%% face). The response also provides a similarity score, which indicates how
%% closely the faces match.
%%
%% <note> By default, only faces with a similarity score of greater than or
%% equal to 80% are returned in the response. You can change this value by
%% specifying the <code>SimilarityThreshold</code> parameter.
%%
%% </note> <code>CompareFaces</code> also returns an array of faces that
%% don't match the source image. For each face, it returns a bounding box,
%% confidence value, landmarks, pose details, and quality. The response also
%% returns information about the face in the source image, including the
%% bounding box of the face and confidence value.
%%
%% The <code>QualityFilter</code> input parameter allows you to filter out
%% detected faces that don’t meet a required quality bar. The quality bar is
%% based on a variety of common use cases. Use <code>QualityFilter</code> to
%% set the quality bar by specifying <code>LOW</code>, <code>MEDIUM</code>,
%% or <code>HIGH</code>. If you do not want to filter detected faces, specify
%% <code>NONE</code>. The default value is <code>NONE</code>.
%%
%% <note> To use quality filtering, you need a collection associated with
%% version 3 of the face model or higher. To get the version of the face
%% model associated with a collection, call <a>DescribeCollection</a>.
%%
%% </note> If the image doesn't contain Exif metadata,
%% <code>CompareFaces</code> returns orientation information for the source
%% and target images. Use these values to display the images with the correct
%% image orientation.
%%
%% If no faces are detected in the source or target images,
%% <code>CompareFaces</code> returns an
%% <code>InvalidParameterException</code> error.
%%
%% <note> This is a stateless API operation. That is, data returned by this
%% operation doesn't persist.
%%
%% </note> For an example, see Comparing Faces in Images in the Amazon
%% Rekognition Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:CompareFaces</code> action.
compare_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    compare_faces(Client, Input, []).
compare_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CompareFaces">>, Input, Options).

%% @doc Creates a collection in an AWS Region. You can add faces to the
%% collection using the <a>IndexFaces</a> operation.
%%
%% For example, you might create collections, one for each of your
%% application users. A user can then index faces using the
%% <code>IndexFaces</code> operation and persist results in a specific
%% collection. Then, a user can search the collection for faces in the
%% user-specific container.
%%
%% When you create a collection, it is associated with the latest version of
%% the face model version.
%%
%% <note> Collection names are case-sensitive.
%%
%% </note> This operation requires permissions to perform the
%% <code>rekognition:CreateCollection</code> action.
create_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_collection(Client, Input, []).
create_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCollection">>, Input, Options).

%% @doc Creates a new Amazon Rekognition Custom Labels project. A project is
%% a logical grouping of resources (images, Labels, models) and operations
%% (training, evaluation and detection).
%%
%% This operation requires permissions to perform the
%% <code>rekognition:CreateProject</code> action.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Creates a new version of a model and begins training. Models are
%% managed as part of an Amazon Rekognition Custom Labels project. You can
%% specify one training dataset and one testing dataset. The response from
%% <code>CreateProjectVersion</code> is an Amazon Resource Name (ARN) for the
%% version of the model.
%%
%% Training takes a while to complete. You can get the current status by
%% calling <a>DescribeProjectVersions</a>.
%%
%% Once training has successfully completed, call
%% <a>DescribeProjectVersions</a> to get the training results and evaluate
%% the model.
%%
%% After evaluating the model, you start the model by calling
%% <a>StartProjectVersion</a>.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:CreateProjectVersion</code> action.
create_project_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project_version(Client, Input, []).
create_project_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProjectVersion">>, Input, Options).

%% @doc Creates an Amazon Rekognition stream processor that you can use to
%% detect and recognize faces in a streaming video.
%%
%% Amazon Rekognition Video is a consumer of live video from Amazon Kinesis
%% Video Streams. Amazon Rekognition Video sends analysis results to Amazon
%% Kinesis Data Streams.
%%
%% You provide as input a Kinesis video stream (<code>Input</code>) and a
%% Kinesis data stream (<code>Output</code>) stream. You also specify the
%% face recognition criteria in <code>Settings</code>. For example, the
%% collection containing faces that you want to recognize. Use
%% <code>Name</code> to assign an identifier for the stream processor. You
%% use <code>Name</code> to manage the stream processor. For example, you can
%% start processing the source video by calling <a>StartStreamProcessor</a>
%% with the <code>Name</code> field.
%%
%% After you have finished analyzing a streaming video, use
%% <a>StopStreamProcessor</a> to stop processing. You can delete the stream
%% processor by calling <a>DeleteStreamProcessor</a>.
create_stream_processor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stream_processor(Client, Input, []).
create_stream_processor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStreamProcessor">>, Input, Options).

%% @doc Deletes the specified collection. Note that this operation removes
%% all faces in the collection. For an example, see
%% <a>delete-collection-procedure</a>.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DeleteCollection</code> action.
delete_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_collection(Client, Input, []).
delete_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCollection">>, Input, Options).

%% @doc Deletes faces from a collection. You specify a collection ID and an
%% array of face IDs to remove from the collection.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DeleteFaces</code> action.
delete_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_faces(Client, Input, []).
delete_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFaces">>, Input, Options).

%% @doc Deletes an Amazon Rekognition Custom Labels project. To delete a
%% project you must first delete all models associated with the project. To
%% delete a model, see <a>DeleteProjectVersion</a>.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DeleteProject</code> action.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Deletes an Amazon Rekognition Custom Labels model.
%%
%% You can't delete a model if it is running or if it is training. To check
%% the status of a model, use the <code>Status</code> field returned from
%% <a>DescribeProjectVersions</a>. To stop a running model call
%% <a>StopProjectVersion</a>. If the model is training, wait until it
%% finishes.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DeleteProjectVersion</code> action.
delete_project_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project_version(Client, Input, []).
delete_project_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProjectVersion">>, Input, Options).

%% @doc Deletes the stream processor identified by <code>Name</code>. You
%% assign the value for <code>Name</code> when you create the stream
%% processor with <a>CreateStreamProcessor</a>. You might not be able to use
%% the same name for a stream processor for a few seconds after calling
%% <code>DeleteStreamProcessor</code>.
delete_stream_processor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stream_processor(Client, Input, []).
delete_stream_processor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStreamProcessor">>, Input, Options).

%% @doc Describes the specified collection. You can use
%% <code>DescribeCollection</code> to get information, such as the number of
%% faces indexed into a collection and the version of the model used by the
%% collection for face detection.
%%
%% For more information, see Describing a Collection in the Amazon
%% Rekognition Developer Guide.
describe_collection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_collection(Client, Input, []).
describe_collection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCollection">>, Input, Options).

%% @doc Lists and describes the models in an Amazon Rekognition Custom Labels
%% project. You can specify up to 10 model versions in
%% <code>ProjectVersionArns</code>. If you don't specify a value,
%% descriptions for all models are returned.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DescribeProjectVersions</code> action.
describe_project_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_project_versions(Client, Input, []).
describe_project_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProjectVersions">>, Input, Options).

%% @doc Lists and gets information about your Amazon Rekognition Custom
%% Labels projects.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DescribeProjects</code> action.
describe_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_projects(Client, Input, []).
describe_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProjects">>, Input, Options).

%% @doc Provides information about a stream processor created by
%% <a>CreateStreamProcessor</a>. You can get information about the input and
%% output streams, the input parameters for the face recognition being
%% performed, and the current status of the stream processor.
describe_stream_processor(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stream_processor(Client, Input, []).
describe_stream_processor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStreamProcessor">>, Input, Options).

%% @doc Detects custom labels in a supplied image by using an Amazon
%% Rekognition Custom Labels model.
%%
%% You specify which version of a model version to use by using the
%% <code>ProjectVersionArn</code> input parameter.
%%
%% You pass the input image as base64-encoded image bytes or as a reference
%% to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
%% Rekognition operations, passing image bytes is not supported. The image
%% must be either a PNG or JPEG formatted file.
%%
%% For each object that the model version detects on an image, the API
%% returns a (<code>CustomLabel</code>) object in an array
%% (<code>CustomLabels</code>). Each <code>CustomLabel</code> object provides
%% the label name (<code>Name</code>), the level of confidence that the image
%% contains the object (<code>Confidence</code>), and object location
%% information, if it exists, for the label on the image
%% (<code>Geometry</code>).
%%
%% During training model calculates a threshold value that determines if a
%% prediction for a label is true. By default,
%% <code>DetectCustomLabels</code> doesn't return labels whose confidence
%% value is below the model's calculated threshold value. To filter labels
%% that are returned, specify a value for <code>MinConfidence</code> that is
%% higher than the model's calculated threshold. You can get the model's
%% calculated threshold from the model's training results shown in the Amazon
%% Rekognition Custom Labels console. To get all labels, regardless of
%% confidence, specify a <code>MinConfidence</code> value of 0.
%%
%% You can also add the <code>MaxResults</code> parameter to limit the number
%% of labels returned.
%%
%% This is a stateless API operation. That is, the operation does not persist
%% any data.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DetectCustomLabels</code> action.
detect_custom_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_custom_labels(Client, Input, []).
detect_custom_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectCustomLabels">>, Input, Options).

%% @doc Detects faces within an image that is provided as input.
%%
%% <code>DetectFaces</code> detects the 100 largest faces in the image. For
%% each face detected, the operation returns face details. These details
%% include a bounding box of the face, a confidence value (that the bounding
%% box contains a face), and a fixed set of attributes such as facial
%% landmarks (for example, coordinates of eye and mouth), presence of beard,
%% sunglasses, and so on.
%%
%% The face-detection algorithm is most effective on frontal faces. For
%% non-frontal or obscured faces, the algorithm might not detect the faces or
%% might detect faces with lower confidence.
%%
%% You pass the input image either as base64-encoded image bytes or as a
%% reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
%% call Amazon Rekognition operations, passing image bytes is not supported.
%% The image must be either a PNG or JPEG formatted file.
%%
%% <note> This is a stateless API operation. That is, the operation does not
%% persist any data.
%%
%% </note> This operation requires permissions to perform the
%% <code>rekognition:DetectFaces</code> action.
detect_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_faces(Client, Input, []).
detect_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectFaces">>, Input, Options).

%% @doc Detects instances of real-world entities within an image (JPEG or
%% PNG) provided as input. This includes objects like flower, tree, and
%% table; events like wedding, graduation, and birthday party; and concepts
%% like landscape, evening, and nature.
%%
%% For an example, see Analyzing Images Stored in an Amazon S3 Bucket in the
%% Amazon Rekognition Developer Guide.
%%
%% <note> <code>DetectLabels</code> does not support the detection of
%% activities. However, activity detection is supported for label detection
%% in videos. For more information, see StartLabelDetection in the Amazon
%% Rekognition Developer Guide.
%%
%% </note> You pass the input image as base64-encoded image bytes or as a
%% reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
%% call Amazon Rekognition operations, passing image bytes is not supported.
%% The image must be either a PNG or JPEG formatted file.
%%
%% For each object, scene, and concept the API returns one or more labels.
%% Each label provides the object name, and the level of confidence that the
%% image contains the object. For example, suppose the input image has a
%% lighthouse, the sea, and a rock. The response includes all three labels,
%% one for each object.
%%
%% <code>{Name: lighthouse, Confidence: 98.4629}</code>
%%
%% <code>{Name: rock,Confidence: 79.2097}</code>
%%
%% <code> {Name: sea,Confidence: 75.061}</code>
%%
%% In the preceding example, the operation returns one label for each of the
%% three objects. The operation can also return multiple labels for the same
%% object in the image. For example, if the input image shows a flower (for
%% example, a tulip), the operation might return the following three labels.
%%
%% <code>{Name: flower,Confidence: 99.0562}</code>
%%
%% <code>{Name: plant,Confidence: 99.0562}</code>
%%
%% <code>{Name: tulip,Confidence: 99.0562}</code>
%%
%% In this example, the detection algorithm more precisely identifies the
%% flower as a tulip.
%%
%% In response, the API returns an array of labels. In addition, the response
%% also includes the orientation correction. Optionally, you can specify
%% <code>MinConfidence</code> to control the confidence threshold for the
%% labels returned. The default is 55%. You can also add the
%% <code>MaxLabels</code> parameter to limit the number of labels returned.
%%
%% <note> If the object detected is a person, the operation doesn't provide
%% the same facial details that the <a>DetectFaces</a> operation provides.
%%
%% </note> <code>DetectLabels</code> returns bounding boxes for instances of
%% common object labels in an array of <a>Instance</a> objects. An
%% <code>Instance</code> object contains a <a>BoundingBox</a> object, for the
%% location of the label on the image. It also includes the confidence by
%% which the bounding box was detected.
%%
%% <code>DetectLabels</code> also returns a hierarchical taxonomy of detected
%% labels. For example, a detected car might be assigned the label
%% <i>car</i>. The label <i>car</i> has two parent labels: <i>Vehicle</i>
%% (its parent) and <i>Transportation</i> (its grandparent). The response
%% returns the entire list of ancestors for a label. Each ancestor is a
%% unique label in the response. In the previous example, <i>Car</i>,
%% <i>Vehicle</i>, and <i>Transportation</i> are returned as unique labels in
%% the response.
%%
%% This is a stateless API operation. That is, the operation does not persist
%% any data.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:DetectLabels</code> action.
detect_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_labels(Client, Input, []).
detect_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectLabels">>, Input, Options).

%% @doc Detects unsafe content in a specified JPEG or PNG format image. Use
%% <code>DetectModerationLabels</code> to moderate images depending on your
%% requirements. For example, you might want to filter images that contain
%% nudity, but not images containing suggestive content.
%%
%% To filter images, use the labels returned by
%% <code>DetectModerationLabels</code> to determine which types of content
%% are appropriate.
%%
%% For information about moderation labels, see Detecting Unsafe Content in
%% the Amazon Rekognition Developer Guide.
%%
%% You pass the input image either as base64-encoded image bytes or as a
%% reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
%% call Amazon Rekognition operations, passing image bytes is not supported.
%% The image must be either a PNG or JPEG formatted file.
detect_moderation_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_moderation_labels(Client, Input, []).
detect_moderation_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectModerationLabels">>, Input, Options).

%% @doc Detects text in the input image and converts it into machine-readable
%% text.
%%
%% Pass the input image as base64-encoded image bytes or as a reference to an
%% image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
%% Rekognition operations, you must pass it as a reference to an image in an
%% Amazon S3 bucket. For the AWS CLI, passing image bytes is not supported.
%% The image must be either a .png or .jpeg formatted file.
%%
%% The <code>DetectText</code> operation returns text in an array of
%% <a>TextDetection</a> elements, <code>TextDetections</code>. Each
%% <code>TextDetection</code> element provides information about a single
%% word or line of text that was detected in the image.
%%
%% A word is one or more ISO basic latin script characters that are not
%% separated by spaces. <code>DetectText</code> can detect up to 50 words in
%% an image.
%%
%% A line is a string of equally spaced words. A line isn't necessarily a
%% complete sentence. For example, a driver's license number is detected as a
%% line. A line ends when there is no aligned text after it. Also, a line
%% ends when there is a large gap between words, relative to the length of
%% the words. This means, depending on the gap between words, Amazon
%% Rekognition may detect multiple lines in text aligned in the same
%% direction. Periods don't represent the end of a line. If a sentence spans
%% multiple lines, the <code>DetectText</code> operation returns multiple
%% lines.
%%
%% To determine whether a <code>TextDetection</code> element is a line of
%% text or a word, use the <code>TextDetection</code> object
%% <code>Type</code> field.
%%
%% To be detected, text must be within +/- 90 degrees orientation of the
%% horizontal axis.
%%
%% For more information, see DetectText in the Amazon Rekognition Developer
%% Guide.
detect_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_text(Client, Input, []).
detect_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectText">>, Input, Options).

%% @doc Gets the name and additional information about a celebrity based on
%% his or her Amazon Rekognition ID. The additional information is returned
%% as an array of URLs. If there is no additional information about the
%% celebrity, this list is empty.
%%
%% For more information, see Recognizing Celebrities in an Image in the
%% Amazon Rekognition Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:GetCelebrityInfo</code> action.
get_celebrity_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_celebrity_info(Client, Input, []).
get_celebrity_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCelebrityInfo">>, Input, Options).

%% @doc Gets the celebrity recognition results for a Amazon Rekognition Video
%% analysis started by <a>StartCelebrityRecognition</a>.
%%
%% Celebrity recognition in a video is an asynchronous operation. Analysis is
%% started by a call to <a>StartCelebrityRecognition</a> which returns a job
%% identifier (<code>JobId</code>). When the celebrity recognition operation
%% finishes, Amazon Rekognition Video publishes a completion status to the
%% Amazon Simple Notification Service topic registered in the initial call to
%% <code>StartCelebrityRecognition</code>. To get the results of the
%% celebrity recognition analysis, first check that the status value
%% published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <code>GetCelebrityDetection</code> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartCelebrityDetection</code>.
%%
%% For more information, see Working With Stored Videos in the Amazon
%% Rekognition Developer Guide.
%%
%% <code>GetCelebrityRecognition</code> returns detected celebrities and the
%% time(s) they are detected in an array (<code>Celebrities</code>) of
%% <a>CelebrityRecognition</a> objects. Each
%% <code>CelebrityRecognition</code> contains information about the celebrity
%% in a <a>CelebrityDetail</a> object and the time, <code>Timestamp</code>,
%% the celebrity was detected.
%%
%% <note> <code>GetCelebrityRecognition</code> only returns the default
%% facial attributes (<code>BoundingBox</code>, <code>Confidence</code>,
%% <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The
%% other facial attributes listed in the <code>Face</code> object of the
%% following response syntax are not returned. For more information, see
%% FaceDetail in the Amazon Rekognition Developer Guide.
%%
%% </note> By default, the <code>Celebrities</code> array is sorted by time
%% (milliseconds from the start of the video). You can also sort the array by
%% celebrity by specifying the value <code>ID</code> in the
%% <code>SortBy</code> input parameter.
%%
%% The <code>CelebrityDetail</code> object includes the celebrity identifer
%% and additional information urls. If you don't store the additional
%% information urls, you can get them later by calling
%% <a>GetCelebrityInfo</a> with the celebrity identifer.
%%
%% No information is returned for faces not recognized as celebrities.
%%
%% Use MaxResults parameter to limit the number of labels returned. If there
%% are more results than specified in <code>MaxResults</code>, the value of
%% <code>NextToken</code> in the operation response contains a pagination
%% token for getting the next set of results. To get the next page of
%% results, call <code>GetCelebrityDetection</code> and populate the
%% <code>NextToken</code> request parameter with the token value returned
%% from the previous call to <code>GetCelebrityRecognition</code>.
get_celebrity_recognition(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_celebrity_recognition(Client, Input, []).
get_celebrity_recognition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCelebrityRecognition">>, Input, Options).

%% @doc Gets the unsafe content analysis results for a Amazon Rekognition
%% Video analysis started by <a>StartContentModeration</a>.
%%
%% Unsafe content analysis of a video is an asynchronous operation. You start
%% analysis by calling <a>StartContentModeration</a> which returns a job
%% identifier (<code>JobId</code>). When analysis finishes, Amazon
%% Rekognition Video publishes a completion status to the Amazon Simple
%% Notification Service topic registered in the initial call to
%% <code>StartContentModeration</code>. To get the results of the unsafe
%% content analysis, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <code>GetContentModeration</code> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartContentModeration</code>.
%%
%% For more information, see Working with Stored Videos in the Amazon
%% Rekognition Devlopers Guide.
%%
%% <code>GetContentModeration</code> returns detected unsafe content labels,
%% and the time they are detected, in an array,
%% <code>ModerationLabels</code>, of <a>ContentModerationDetection</a>
%% objects.
%%
%% By default, the moderated labels are returned sorted by time, in
%% milliseconds from the start of the video. You can also sort them by
%% moderated label by specifying <code>NAME</code> for the
%% <code>SortBy</code> input parameter.
%%
%% Since video analysis can return a large number of results, use the
%% <code>MaxResults</code> parameter to limit the number of labels returned
%% in a single call to <code>GetContentModeration</code>. If there are more
%% results than specified in <code>MaxResults</code>, the value of
%% <code>NextToken</code> in the operation response contains a pagination
%% token for getting the next set of results. To get the next page of
%% results, call <code>GetContentModeration</code> and populate the
%% <code>NextToken</code> request parameter with the value of
%% <code>NextToken</code> returned from the previous call to
%% <code>GetContentModeration</code>.
%%
%% For more information, see Detecting Unsafe Content in the Amazon
%% Rekognition Developer Guide.
get_content_moderation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_content_moderation(Client, Input, []).
get_content_moderation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContentModeration">>, Input, Options).

%% @doc Gets face detection results for a Amazon Rekognition Video analysis
%% started by <a>StartFaceDetection</a>.
%%
%% Face detection with Amazon Rekognition Video is an asynchronous operation.
%% You start face detection by calling <a>StartFaceDetection</a> which
%% returns a job identifier (<code>JobId</code>). When the face detection
%% operation finishes, Amazon Rekognition Video publishes a completion status
%% to the Amazon Simple Notification Service topic registered in the initial
%% call to <code>StartFaceDetection</code>. To get the results of the face
%% detection operation, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetFaceDetection</a> and pass the job identifier (<code>JobId</code>)
%% from the initial call to <code>StartFaceDetection</code>.
%%
%% <code>GetFaceDetection</code> returns an array of detected faces
%% (<code>Faces</code>) sorted by the time the faces were detected.
%%
%% Use MaxResults parameter to limit the number of labels returned. If there
%% are more results than specified in <code>MaxResults</code>, the value of
%% <code>NextToken</code> in the operation response contains a pagination
%% token for getting the next set of results. To get the next page of
%% results, call <code>GetFaceDetection</code> and populate the
%% <code>NextToken</code> request parameter with the token value returned
%% from the previous call to <code>GetFaceDetection</code>.
get_face_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_face_detection(Client, Input, []).
get_face_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFaceDetection">>, Input, Options).

%% @doc Gets the face search results for Amazon Rekognition Video face search
%% started by <a>StartFaceSearch</a>. The search returns faces in a
%% collection that match the faces of persons detected in a video. It also
%% includes the time(s) that faces are matched in the video.
%%
%% Face search in a video is an asynchronous operation. You start face search
%% by calling to <a>StartFaceSearch</a> which returns a job identifier
%% (<code>JobId</code>). When the search operation finishes, Amazon
%% Rekognition Video publishes a completion status to the Amazon Simple
%% Notification Service topic registered in the initial call to
%% <code>StartFaceSearch</code>. To get the search results, first check that
%% the status value published to the Amazon SNS topic is
%% <code>SUCCEEDED</code>. If so, call <code>GetFaceSearch</code> and pass
%% the job identifier (<code>JobId</code>) from the initial call to
%% <code>StartFaceSearch</code>.
%%
%% For more information, see Searching Faces in a Collection in the Amazon
%% Rekognition Developer Guide.
%%
%% The search results are retured in an array, <code>Persons</code>, of
%% <a>PersonMatch</a> objects. Each<code>PersonMatch</code> element contains
%% details about the matching faces in the input collection, person
%% information (facial attributes, bounding boxes, and person identifer) for
%% the matched person, and the time the person was matched in the video.
%%
%% <note> <code>GetFaceSearch</code> only returns the default facial
%% attributes (<code>BoundingBox</code>, <code>Confidence</code>,
%% <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The
%% other facial attributes listed in the <code>Face</code> object of the
%% following response syntax are not returned. For more information, see
%% FaceDetail in the Amazon Rekognition Developer Guide.
%%
%% </note> By default, the <code>Persons</code> array is sorted by the time,
%% in milliseconds from the start of the video, persons are matched. You can
%% also sort by persons by specifying <code>INDEX</code> for the
%% <code>SORTBY</code> input parameter.
get_face_search(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_face_search(Client, Input, []).
get_face_search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFaceSearch">>, Input, Options).

%% @doc Gets the label detection results of a Amazon Rekognition Video
%% analysis started by <a>StartLabelDetection</a>.
%%
%% The label detection operation is started by a call to
%% <a>StartLabelDetection</a> which returns a job identifier
%% (<code>JobId</code>). When the label detection operation finishes, Amazon
%% Rekognition publishes a completion status to the Amazon Simple
%% Notification Service topic registered in the initial call to
%% <code>StartlabelDetection</code>. To get the results of the label
%% detection operation, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetLabelDetection</a> and pass the job identifier (<code>JobId</code>)
%% from the initial call to <code>StartLabelDetection</code>.
%%
%% <code>GetLabelDetection</code> returns an array of detected labels
%% (<code>Labels</code>) sorted by the time the labels were detected. You can
%% also sort by the label name by specifying <code>NAME</code> for the
%% <code>SortBy</code> input parameter.
%%
%% The labels returned include the label name, the percentage confidence in
%% the accuracy of the detected label, and the time the label was detected in
%% the video.
%%
%% The returned labels also include bounding box information for common
%% objects, a hierarchical taxonomy of detected labels, and the version of
%% the label model used for detection.
%%
%% Use MaxResults parameter to limit the number of labels returned. If there
%% are more results than specified in <code>MaxResults</code>, the value of
%% <code>NextToken</code> in the operation response contains a pagination
%% token for getting the next set of results. To get the next page of
%% results, call <code>GetlabelDetection</code> and populate the
%% <code>NextToken</code> request parameter with the token value returned
%% from the previous call to <code>GetLabelDetection</code>.
get_label_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_label_detection(Client, Input, []).
get_label_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLabelDetection">>, Input, Options).

%% @doc Gets the path tracking results of a Amazon Rekognition Video analysis
%% started by <a>StartPersonTracking</a>.
%%
%% The person path tracking operation is started by a call to
%% <code>StartPersonTracking</code> which returns a job identifier
%% (<code>JobId</code>). When the operation finishes, Amazon Rekognition
%% Video publishes a completion status to the Amazon Simple Notification
%% Service topic registered in the initial call to
%% <code>StartPersonTracking</code>.
%%
%% To get the results of the person path tracking operation, first check that
%% the status value published to the Amazon SNS topic is
%% <code>SUCCEEDED</code>. If so, call <a>GetPersonTracking</a> and pass the
%% job identifier (<code>JobId</code>) from the initial call to
%% <code>StartPersonTracking</code>.
%%
%% <code>GetPersonTracking</code> returns an array, <code>Persons</code>, of
%% tracked persons and the time(s) their paths were tracked in the video.
%%
%% <note> <code>GetPersonTracking</code> only returns the default facial
%% attributes (<code>BoundingBox</code>, <code>Confidence</code>,
%% <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The
%% other facial attributes listed in the <code>Face</code> object of the
%% following response syntax are not returned.
%%
%% For more information, see FaceDetail in the Amazon Rekognition Developer
%% Guide.
%%
%% </note> By default, the array is sorted by the time(s) a person's path is
%% tracked in the video. You can sort by tracked persons by specifying
%% <code>INDEX</code> for the <code>SortBy</code> input parameter.
%%
%% Use the <code>MaxResults</code> parameter to limit the number of items
%% returned. If there are more results than specified in
%% <code>MaxResults</code>, the value of <code>NextToken</code> in the
%% operation response contains a pagination token for getting the next set of
%% results. To get the next page of results, call
%% <code>GetPersonTracking</code> and populate the <code>NextToken</code>
%% request parameter with the token value returned from the previous call to
%% <code>GetPersonTracking</code>.
get_person_tracking(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_person_tracking(Client, Input, []).
get_person_tracking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPersonTracking">>, Input, Options).

%% @doc Gets the segment detection results of a Amazon Rekognition Video
%% analysis started by <a>StartSegmentDetection</a>.
%%
%% Segment detection with Amazon Rekognition Video is an asynchronous
%% operation. You start segment detection by calling
%% <a>StartSegmentDetection</a> which returns a job identifier
%% (<code>JobId</code>). When the segment detection operation finishes,
%% Amazon Rekognition publishes a completion status to the Amazon Simple
%% Notification Service topic registered in the initial call to
%% <code>StartSegmentDetection</code>. To get the results of the segment
%% detection operation, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. if so, call
%% <code>GetSegmentDetection</code> and pass the job identifier
%% (<code>JobId</code>) from the initial call of
%% <code>StartSegmentDetection</code>.
%%
%% <code>GetSegmentDetection</code> returns detected segments in an array
%% (<code>Segments</code>) of <a>SegmentDetection</a> objects.
%% <code>Segments</code> is sorted by the segment types specified in the
%% <code>SegmentTypes</code> input parameter of
%% <code>StartSegmentDetection</code>. Each element of the array includes the
%% detected segment, the precentage confidence in the acuracy of the detected
%% segment, the type of the segment, and the frame in which the segment was
%% detected.
%%
%% Use <code>SelectedSegmentTypes</code> to find out the type of segment
%% detection requested in the call to <code>StartSegmentDetection</code>.
%%
%% Use the <code>MaxResults</code> parameter to limit the number of segment
%% detections returned. If there are more results than specified in
%% <code>MaxResults</code>, the value of <code>NextToken</code> in the
%% operation response contains a pagination token for getting the next set of
%% results. To get the next page of results, call
%% <code>GetSegmentDetection</code> and populate the <code>NextToken</code>
%% request parameter with the token value returned from the previous call to
%% <code>GetSegmentDetection</code>.
%%
%% For more information, see Detecting Video Segments in Stored Video in the
%% Amazon Rekognition Developer Guide.
get_segment_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_segment_detection(Client, Input, []).
get_segment_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSegmentDetection">>, Input, Options).

%% @doc Gets the text detection results of a Amazon Rekognition Video
%% analysis started by <a>StartTextDetection</a>.
%%
%% Text detection with Amazon Rekognition Video is an asynchronous operation.
%% You start text detection by calling <a>StartTextDetection</a> which
%% returns a job identifier (<code>JobId</code>) When the text detection
%% operation finishes, Amazon Rekognition publishes a completion status to
%% the Amazon Simple Notification Service topic registered in the initial
%% call to <code>StartTextDetection</code>. To get the results of the text
%% detection operation, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. if so, call
%% <code>GetTextDetection</code> and pass the job identifier
%% (<code>JobId</code>) from the initial call of
%% <code>StartLabelDetection</code>.
%%
%% <code>GetTextDetection</code> returns an array of detected text
%% (<code>TextDetections</code>) sorted by the time the text was detected, up
%% to 50 words per frame of video.
%%
%% Each element of the array includes the detected text, the precentage
%% confidence in the acuracy of the detected text, the time the text was
%% detected, bounding box information for where the text was located, and
%% unique identifiers for words and their lines.
%%
%% Use MaxResults parameter to limit the number of text detections returned.
%% If there are more results than specified in <code>MaxResults</code>, the
%% value of <code>NextToken</code> in the operation response contains a
%% pagination token for getting the next set of results. To get the next page
%% of results, call <code>GetTextDetection</code> and populate the
%% <code>NextToken</code> request parameter with the token value returned
%% from the previous call to <code>GetTextDetection</code>.
get_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_text_detection(Client, Input, []).
get_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTextDetection">>, Input, Options).

%% @doc Detects faces in the input image and adds them to the specified
%% collection.
%%
%% Amazon Rekognition doesn't save the actual faces that are detected.
%% Instead, the underlying detection algorithm first detects the faces in the
%% input image. For each face, the algorithm extracts facial features into a
%% feature vector, and stores it in the backend database. Amazon Rekognition
%% uses feature vectors when it performs face match and search operations
%% using the <a>SearchFaces</a> and <a>SearchFacesByImage</a> operations.
%%
%% For more information, see Adding Faces to a Collection in the Amazon
%% Rekognition Developer Guide.
%%
%% To get the number of faces in a collection, call
%% <a>DescribeCollection</a>.
%%
%% If you're using version 1.0 of the face detection model,
%% <code>IndexFaces</code> indexes the 15 largest faces in the input image.
%% Later versions of the face detection model index the 100 largest faces in
%% the input image.
%%
%% If you're using version 4 or later of the face model, image orientation
%% information is not returned in the <code>OrientationCorrection</code>
%% field.
%%
%% To determine which version of the model you're using, call
%% <a>DescribeCollection</a> and supply the collection ID. You can also get
%% the model version from the value of <code>FaceModelVersion</code> in the
%% response from <code>IndexFaces</code>
%%
%% For more information, see Model Versioning in the Amazon Rekognition
%% Developer Guide.
%%
%% If you provide the optional <code>ExternalImageId</code> for the input
%% image you provided, Amazon Rekognition associates this ID with all faces
%% that it detects. When you call the <a>ListFaces</a> operation, the
%% response returns the external ID. You can use this external image ID to
%% create a client-side index to associate the faces with each image. You can
%% then use the index to find all faces in an image.
%%
%% You can specify the maximum number of faces to index with the
%% <code>MaxFaces</code> input parameter. This is useful when you want to
%% index the largest faces in an image and don't want to index smaller faces,
%% such as those belonging to people standing in the background.
%%
%% The <code>QualityFilter</code> input parameter allows you to filter out
%% detected faces that don’t meet a required quality bar. The quality bar is
%% based on a variety of common use cases. By default,
%% <code>IndexFaces</code> chooses the quality bar that's used to filter
%% faces. You can also explicitly choose the quality bar. Use
%% <code>QualityFilter</code>, to set the quality bar by specifying
%% <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>. If you do not
%% want to filter detected faces, specify <code>NONE</code>.
%%
%% <note> To use quality filtering, you need a collection associated with
%% version 3 of the face model or higher. To get the version of the face
%% model associated with a collection, call <a>DescribeCollection</a>.
%%
%% </note> Information about faces detected in an image, but not indexed, is
%% returned in an array of <a>UnindexedFace</a> objects,
%% <code>UnindexedFaces</code>. Faces aren't indexed for reasons such as:
%%
%% <ul> <li> The number of faces detected exceeds the value of the
%% <code>MaxFaces</code> request parameter.
%%
%% </li> <li> The face is too small compared to the image dimensions.
%%
%% </li> <li> The face is too blurry.
%%
%% </li> <li> The image is too dark.
%%
%% </li> <li> The face has an extreme pose.
%%
%% </li> <li> The face doesn’t have enough detail to be suitable for face
%% search.
%%
%% </li> </ul> In response, the <code>IndexFaces</code> operation returns an
%% array of metadata for all detected faces, <code>FaceRecords</code>. This
%% includes:
%%
%% <ul> <li> The bounding box, <code>BoundingBox</code>, of the detected
%% face.
%%
%% </li> <li> A confidence value, <code>Confidence</code>, which indicates
%% the confidence that the bounding box contains a face.
%%
%% </li> <li> A face ID, <code>FaceId</code>, assigned by the service for
%% each face that's detected and stored.
%%
%% </li> <li> An image ID, <code>ImageId</code>, assigned by the service for
%% the input image.
%%
%% </li> </ul> If you request all facial attributes (by using the
%% <code>detectionAttributes</code> parameter), Amazon Rekognition returns
%% detailed facial attributes, such as facial landmarks (for example,
%% location of eye and mouth) and other facial attributes. If you provide the
%% same image, specify the same collection, and use the same external ID in
%% the <code>IndexFaces</code> operation, Amazon Rekognition doesn't save
%% duplicate face metadata.
%%
%% <p/> The input image is passed either as base64-encoded image bytes, or as
%% a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
%% call Amazon Rekognition operations, passing image bytes isn't supported.
%% The image must be formatted as a PNG or JPEG file.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:IndexFaces</code> action.
index_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    index_faces(Client, Input, []).
index_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IndexFaces">>, Input, Options).

%% @doc Returns list of collection IDs in your account. If the result is
%% truncated, the response also provides a <code>NextToken</code> that you
%% can use in the subsequent request to fetch the next set of collection IDs.
%%
%% For an example, see Listing Collections in the Amazon Rekognition
%% Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:ListCollections</code> action.
list_collections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_collections(Client, Input, []).
list_collections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCollections">>, Input, Options).

%% @doc Returns metadata for faces in the specified collection. This metadata
%% includes information such as the bounding box coordinates, the confidence
%% (that the bounding box contains a face), and face ID. For an example, see
%% Listing Faces in a Collection in the Amazon Rekognition Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:ListFaces</code> action.
list_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_faces(Client, Input, []).
list_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFaces">>, Input, Options).

%% @doc Gets a list of stream processors that you have created with
%% <a>CreateStreamProcessor</a>.
list_stream_processors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stream_processors(Client, Input, []).
list_stream_processors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStreamProcessors">>, Input, Options).

%% @doc Returns an array of celebrities recognized in the input image. For
%% more information, see Recognizing Celebrities in the Amazon Rekognition
%% Developer Guide.
%%
%% <code>RecognizeCelebrities</code> returns the 100 largest faces in the
%% image. It lists recognized celebrities in the <code>CelebrityFaces</code>
%% array and unrecognized faces in the <code>UnrecognizedFaces</code> array.
%% <code>RecognizeCelebrities</code> doesn't return celebrities whose faces
%% aren't among the largest 100 faces in the image.
%%
%% For each celebrity recognized, <code>RecognizeCelebrities</code> returns a
%% <code>Celebrity</code> object. The <code>Celebrity</code> object contains
%% the celebrity name, ID, URL links to additional information, match
%% confidence, and a <code>ComparedFace</code> object that you can use to
%% locate the celebrity's face on the image.
%%
%% Amazon Rekognition doesn't retain information about which images a
%% celebrity has been recognized in. Your application must store this
%% information and use the <code>Celebrity</code> ID property as a unique
%% identifier for the celebrity. If you don't store the celebrity name or
%% additional information URLs returned by <code>RecognizeCelebrities</code>,
%% you will need the ID to identify the celebrity in a call to the
%% <a>GetCelebrityInfo</a> operation.
%%
%% You pass the input image either as base64-encoded image bytes or as a
%% reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
%% call Amazon Rekognition operations, passing image bytes is not supported.
%% The image must be either a PNG or JPEG formatted file.
%%
%% For an example, see Recognizing Celebrities in an Image in the Amazon
%% Rekognition Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:RecognizeCelebrities</code> operation.
recognize_celebrities(Client, Input)
  when is_map(Client), is_map(Input) ->
    recognize_celebrities(Client, Input, []).
recognize_celebrities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecognizeCelebrities">>, Input, Options).

%% @doc For a given input face ID, searches for matching faces in the
%% collection the face belongs to. You get a face ID when you add a face to
%% the collection using the <a>IndexFaces</a> operation. The operation
%% compares the features of the input face with faces in the specified
%% collection.
%%
%% <note> You can also search faces without indexing faces by using the
%% <code>SearchFacesByImage</code> operation.
%%
%% </note> The operation response returns an array of faces that match,
%% ordered by similarity score with the highest similarity first. More
%% specifically, it is an array of metadata for each face match that is
%% found. Along with the metadata, the response also includes a
%% <code>confidence</code> value for each face match, indicating the
%% confidence that the specific face matches the input face.
%%
%% For an example, see Searching for a Face Using Its Face ID in the Amazon
%% Rekognition Developer Guide.
%%
%% This operation requires permissions to perform the
%% <code>rekognition:SearchFaces</code> action.
search_faces(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_faces(Client, Input, []).
search_faces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFaces">>, Input, Options).

%% @doc For a given input image, first detects the largest face in the image,
%% and then searches the specified collection for matching faces. The
%% operation compares the features of the input face with faces in the
%% specified collection.
%%
%% <note> To search for all faces in an input image, you might first call the
%% <a>IndexFaces</a> operation, and then use the face IDs returned in
%% subsequent calls to the <a>SearchFaces</a> operation.
%%
%% You can also call the <code>DetectFaces</code> operation and use the
%% bounding boxes in the response to make face crops, which then you can pass
%% in to the <code>SearchFacesByImage</code> operation.
%%
%% </note> You pass the input image either as base64-encoded image bytes or
%% as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI
%% to call Amazon Rekognition operations, passing image bytes is not
%% supported. The image must be either a PNG or JPEG formatted file.
%%
%% The response returns an array of faces that match, ordered by similarity
%% score with the highest similarity first. More specifically, it is an array
%% of metadata for each face match found. Along with the metadata, the
%% response also includes a <code>similarity</code> indicating how similar
%% the face is to the input face. In the response, the operation also returns
%% the bounding box (and a confidence level that the bounding box contains a
%% face) of the face that Amazon Rekognition used for the input image.
%%
%% For an example, Searching for a Face Using an Image in the Amazon
%% Rekognition Developer Guide.
%%
%% The <code>QualityFilter</code> input parameter allows you to filter out
%% detected faces that don’t meet a required quality bar. The quality bar is
%% based on a variety of common use cases. Use <code>QualityFilter</code> to
%% set the quality bar for filtering by specifying <code>LOW</code>,
%% <code>MEDIUM</code>, or <code>HIGH</code>. If you do not want to filter
%% detected faces, specify <code>NONE</code>. The default value is
%% <code>NONE</code>.
%%
%% <note> To use quality filtering, you need a collection associated with
%% version 3 of the face model or higher. To get the version of the face
%% model associated with a collection, call <a>DescribeCollection</a>.
%%
%% </note> This operation requires permissions to perform the
%% <code>rekognition:SearchFacesByImage</code> action.
search_faces_by_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_faces_by_image(Client, Input, []).
search_faces_by_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFacesByImage">>, Input, Options).

%% @doc Starts asynchronous recognition of celebrities in a stored video.
%%
%% Amazon Rekognition Video can detect celebrities in a video must be stored
%% in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and
%% the filename of the video. <code>StartCelebrityRecognition</code> returns
%% a job identifier (<code>JobId</code>) which you use to get the results of
%% the analysis. When celebrity recognition analysis is finished, Amazon
%% Rekognition Video publishes a completion status to the Amazon Simple
%% Notification Service topic that you specify in
%% <code>NotificationChannel</code>. To get the results of the celebrity
%% recognition analysis, first check that the status value published to the
%% Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetCelebrityRecognition</a> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartCelebrityRecognition</code>.
%%
%% For more information, see Recognizing Celebrities in the Amazon
%% Rekognition Developer Guide.
start_celebrity_recognition(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_celebrity_recognition(Client, Input, []).
start_celebrity_recognition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCelebrityRecognition">>, Input, Options).

%% @doc Starts asynchronous detection of unsafe content in a stored video.
%%
%% Amazon Rekognition Video can moderate content in a video stored in an
%% Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the
%% filename of the video. <code>StartContentModeration</code> returns a job
%% identifier (<code>JobId</code>) which you use to get the results of the
%% analysis. When unsafe content analysis is finished, Amazon Rekognition
%% Video publishes a completion status to the Amazon Simple Notification
%% Service topic that you specify in <code>NotificationChannel</code>.
%%
%% To get the results of the unsafe content analysis, first check that the
%% status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
%% If so, call <a>GetContentModeration</a> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartContentModeration</code>.
%%
%% For more information, see Detecting Unsafe Content in the Amazon
%% Rekognition Developer Guide.
start_content_moderation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_content_moderation(Client, Input, []).
start_content_moderation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartContentModeration">>, Input, Options).

%% @doc Starts asynchronous detection of faces in a stored video.
%%
%% Amazon Rekognition Video can detect faces in a video stored in an Amazon
%% S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of
%% the video. <code>StartFaceDetection</code> returns a job identifier
%% (<code>JobId</code>) that you use to get the results of the operation.
%% When face detection is finished, Amazon Rekognition Video publishes a
%% completion status to the Amazon Simple Notification Service topic that you
%% specify in <code>NotificationChannel</code>. To get the results of the
%% face detection operation, first check that the status value published to
%% the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetFaceDetection</a> and pass the job identifier (<code>JobId</code>)
%% from the initial call to <code>StartFaceDetection</code>.
%%
%% For more information, see Detecting Faces in a Stored Video in the Amazon
%% Rekognition Developer Guide.
start_face_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_face_detection(Client, Input, []).
start_face_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFaceDetection">>, Input, Options).

%% @doc Starts the asynchronous search for faces in a collection that match
%% the faces of persons detected in a stored video.
%%
%% The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to
%% specify the bucket name and the filename of the video.
%% <code>StartFaceSearch</code> returns a job identifier (<code>JobId</code>)
%% which you use to get the search results once the search has completed.
%% When searching is finished, Amazon Rekognition Video publishes a
%% completion status to the Amazon Simple Notification Service topic that you
%% specify in <code>NotificationChannel</code>. To get the search results,
%% first check that the status value published to the Amazon SNS topic is
%% <code>SUCCEEDED</code>. If so, call <a>GetFaceSearch</a> and pass the job
%% identifier (<code>JobId</code>) from the initial call to
%% <code>StartFaceSearch</code>. For more information, see
%% <a>procedure-person-search-videos</a>.
start_face_search(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_face_search(Client, Input, []).
start_face_search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFaceSearch">>, Input, Options).

%% @doc Starts asynchronous detection of labels in a stored video.
%%
%% Amazon Rekognition Video can detect labels in a video. Labels are
%% instances of real-world entities. This includes objects like flower, tree,
%% and table; events like wedding, graduation, and birthday party; concepts
%% like landscape, evening, and nature; and activities like a person getting
%% out of a car or a person skiing.
%%
%% The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to
%% specify the bucket name and the filename of the video.
%% <code>StartLabelDetection</code> returns a job identifier
%% (<code>JobId</code>) which you use to get the results of the operation.
%% When label detection is finished, Amazon Rekognition Video publishes a
%% completion status to the Amazon Simple Notification Service topic that you
%% specify in <code>NotificationChannel</code>.
%%
%% To get the results of the label detection operation, first check that the
%% status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
%% If so, call <a>GetLabelDetection</a> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartLabelDetection</code>.
%%
%% <p/>
start_label_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_label_detection(Client, Input, []).
start_label_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLabelDetection">>, Input, Options).

%% @doc Starts the asynchronous tracking of a person's path in a stored
%% video.
%%
%% Amazon Rekognition Video can track the path of people in a video stored in
%% an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the
%% filename of the video. <code>StartPersonTracking</code> returns a job
%% identifier (<code>JobId</code>) which you use to get the results of the
%% operation. When label detection is finished, Amazon Rekognition publishes
%% a completion status to the Amazon Simple Notification Service topic that
%% you specify in <code>NotificationChannel</code>.
%%
%% To get the results of the person detection operation, first check that the
%% status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
%% If so, call <a>GetPersonTracking</a> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartPersonTracking</code>.
start_person_tracking(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_person_tracking(Client, Input, []).
start_person_tracking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPersonTracking">>, Input, Options).

%% @doc Starts the running of the version of a model. Starting a model takes
%% a while to complete. To check the current state of the model, use
%% <a>DescribeProjectVersions</a>.
%%
%% Once the model is running, you can detect custom labels in new images by
%% calling <a>DetectCustomLabels</a>.
%%
%% <note> You are charged for the amount of time that the model is running.
%% To stop a running model, call <a>StopProjectVersion</a>.
%%
%% </note> This operation requires permissions to perform the
%% <code>rekognition:StartProjectVersion</code> action.
start_project_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_project_version(Client, Input, []).
start_project_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartProjectVersion">>, Input, Options).

%% @doc Starts asynchronous detection of segment detection in a stored video.
%%
%% Amazon Rekognition Video can detect segments in a video stored in an
%% Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the
%% filename of the video. <code>StartSegmentDetection</code> returns a job
%% identifier (<code>JobId</code>) which you use to get the results of the
%% operation. When segment detection is finished, Amazon Rekognition Video
%% publishes a completion status to the Amazon Simple Notification Service
%% topic that you specify in <code>NotificationChannel</code>.
%%
%% You can use the <code>Filters</code> (<a>StartSegmentDetectionFilters</a>)
%% input parameter to specify the minimum detection confidence returned in
%% the response. Within <code>Filters</code>, use <code>ShotFilter</code>
%% (<a>StartShotDetectionFilter</a>) to filter detected shots. Use
%% <code>TechnicalCueFilter</code> (<a>StartTechnicalCueDetectionFilter</a>)
%% to filter technical cues.
%%
%% To get the results of the segment detection operation, first check that
%% the status value published to the Amazon SNS topic is
%% <code>SUCCEEDED</code>. if so, call <a>GetSegmentDetection</a> and pass
%% the job identifier (<code>JobId</code>) from the initial call to
%% <code>StartSegmentDetection</code>.
%%
%% For more information, see Detecting Video Segments in Stored Video in the
%% Amazon Rekognition Developer Guide.
start_segment_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_segment_detection(Client, Input, []).
start_segment_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSegmentDetection">>, Input, Options).

%% @doc Starts processing a stream processor. You create a stream processor
%% by calling <a>CreateStreamProcessor</a>. To tell
%% <code>StartStreamProcessor</code> which stream processor to start, use the
%% value of the <code>Name</code> field specified in the call to
%% <code>CreateStreamProcessor</code>.
start_stream_processor(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_stream_processor(Client, Input, []).
start_stream_processor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartStreamProcessor">>, Input, Options).

%% @doc Starts asynchronous detection of text in a stored video.
%%
%% Amazon Rekognition Video can detect text in a video stored in an Amazon S3
%% bucket. Use <a>Video</a> to specify the bucket name and the filename of
%% the video. <code>StartTextDetection</code> returns a job identifier
%% (<code>JobId</code>) which you use to get the results of the operation.
%% When text detection is finished, Amazon Rekognition Video publishes a
%% completion status to the Amazon Simple Notification Service topic that you
%% specify in <code>NotificationChannel</code>.
%%
%% To get the results of the text detection operation, first check that the
%% status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
%% if so, call <a>GetTextDetection</a> and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartTextDetection</code>.
start_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_text_detection(Client, Input, []).
start_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTextDetection">>, Input, Options).

%% @doc Stops a running model. The operation might take a while to complete.
%% To check the current status, call <a>DescribeProjectVersions</a>.
stop_project_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_project_version(Client, Input, []).
stop_project_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopProjectVersion">>, Input, Options).

%% @doc Stops a running stream processor that was created by
%% <a>CreateStreamProcessor</a>.
stop_stream_processor(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_stream_processor(Client, Input, []).
stop_stream_processor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopStreamProcessor">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"rekognition">>},
    Host = get_host(<<"rekognition">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"RekognitionService.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
