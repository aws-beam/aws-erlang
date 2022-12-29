%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the AWS RoboMaker API
%% operations.
-module(aws_robomaker).

-export([batch_delete_worlds/2,
         batch_delete_worlds/3,
         batch_describe_simulation_job/2,
         batch_describe_simulation_job/3,
         cancel_deployment_job/2,
         cancel_deployment_job/3,
         cancel_simulation_job/2,
         cancel_simulation_job/3,
         cancel_simulation_job_batch/2,
         cancel_simulation_job_batch/3,
         cancel_world_export_job/2,
         cancel_world_export_job/3,
         cancel_world_generation_job/2,
         cancel_world_generation_job/3,
         create_deployment_job/2,
         create_deployment_job/3,
         create_fleet/2,
         create_fleet/3,
         create_robot/2,
         create_robot/3,
         create_robot_application/2,
         create_robot_application/3,
         create_robot_application_version/2,
         create_robot_application_version/3,
         create_simulation_application/2,
         create_simulation_application/3,
         create_simulation_application_version/2,
         create_simulation_application_version/3,
         create_simulation_job/2,
         create_simulation_job/3,
         create_world_export_job/2,
         create_world_export_job/3,
         create_world_generation_job/2,
         create_world_generation_job/3,
         create_world_template/2,
         create_world_template/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_robot/2,
         delete_robot/3,
         delete_robot_application/2,
         delete_robot_application/3,
         delete_simulation_application/2,
         delete_simulation_application/3,
         delete_world_template/2,
         delete_world_template/3,
         deregister_robot/2,
         deregister_robot/3,
         describe_deployment_job/2,
         describe_deployment_job/3,
         describe_fleet/2,
         describe_fleet/3,
         describe_robot/2,
         describe_robot/3,
         describe_robot_application/2,
         describe_robot_application/3,
         describe_simulation_application/2,
         describe_simulation_application/3,
         describe_simulation_job/2,
         describe_simulation_job/3,
         describe_simulation_job_batch/2,
         describe_simulation_job_batch/3,
         describe_world/2,
         describe_world/3,
         describe_world_export_job/2,
         describe_world_export_job/3,
         describe_world_generation_job/2,
         describe_world_generation_job/3,
         describe_world_template/2,
         describe_world_template/3,
         get_world_template_body/2,
         get_world_template_body/3,
         list_deployment_jobs/2,
         list_deployment_jobs/3,
         list_fleets/2,
         list_fleets/3,
         list_robot_applications/2,
         list_robot_applications/3,
         list_robots/2,
         list_robots/3,
         list_simulation_applications/2,
         list_simulation_applications/3,
         list_simulation_job_batches/2,
         list_simulation_job_batches/3,
         list_simulation_jobs/2,
         list_simulation_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_world_export_jobs/2,
         list_world_export_jobs/3,
         list_world_generation_jobs/2,
         list_world_generation_jobs/3,
         list_world_templates/2,
         list_world_templates/3,
         list_worlds/2,
         list_worlds/3,
         register_robot/2,
         register_robot/3,
         restart_simulation_job/2,
         restart_simulation_job/3,
         start_simulation_job_batch/2,
         start_simulation_job_batch/3,
         sync_deployment_job/2,
         sync_deployment_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_robot_application/2,
         update_robot_application/3,
         update_simulation_application/2,
         update_simulation_application/3,
         update_world_template/2,
         update_world_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more worlds in a batch operation.
batch_delete_worlds(Client, Input) ->
    batch_delete_worlds(Client, Input, []).
batch_delete_worlds(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchDeleteWorlds"],
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

%% @doc Describes one or more simulation jobs.
batch_describe_simulation_job(Client, Input) ->
    batch_describe_simulation_job(Client, Input, []).
batch_describe_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchDescribeSimulationJob"],
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

%% @doc Cancels the specified deployment job.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
cancel_deployment_job(Client, Input) ->
    cancel_deployment_job(Client, Input, []).
cancel_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelDeploymentJob"],
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

%% @doc Cancels the specified simulation job.
cancel_simulation_job(Client, Input) ->
    cancel_simulation_job(Client, Input, []).
cancel_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelSimulationJob"],
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

%% @doc Cancels a simulation job batch.
%%
%% When you cancel a simulation job batch, you are also cancelling all of the
%% active simulation jobs created as part of the batch.
cancel_simulation_job_batch(Client, Input) ->
    cancel_simulation_job_batch(Client, Input, []).
cancel_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelSimulationJobBatch"],
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

%% @doc Cancels the specified export job.
cancel_world_export_job(Client, Input) ->
    cancel_world_export_job(Client, Input, []).
cancel_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelWorldExportJob"],
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

%% @doc Cancels the specified world generator job.
cancel_world_generation_job(Client, Input) ->
    cancel_world_generation_job(Client, Input, []).
cancel_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cancelWorldGenerationJob"],
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

%% @doc Deploys a specific version of a robot application to robots in a
%% fleet.
%%
%% This API is no longer supported and will throw an error if used.
%%
%% The robot application must have a numbered `applicationVersion' for
%% consistency reasons. To create a new version, use
%% `CreateRobotApplicationVersion' or see Creating a Robot Application
%% Version.
%%
%% After 90 days, deployment jobs expire and will be deleted. They will no
%% longer be accessible.
create_deployment_job(Client, Input) ->
    create_deployment_job(Client, Input, []).
create_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createDeploymentJob"],
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

%% @doc Creates a fleet, a logical group of robots running the same robot
%% application.
%%
%% This API is no longer supported and will throw an error if used.
create_fleet(Client, Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createFleet"],
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

%% @doc Creates a robot.
%%
%% This API is no longer supported and will throw an error if used.
create_robot(Client, Input) ->
    create_robot(Client, Input, []).
create_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobot"],
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

%% @doc Creates a robot application.
create_robot_application(Client, Input) ->
    create_robot_application(Client, Input, []).
create_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobotApplication"],
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

%% @doc Creates a version of a robot application.
create_robot_application_version(Client, Input) ->
    create_robot_application_version(Client, Input, []).
create_robot_application_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createRobotApplicationVersion"],
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

%% @doc Creates a simulation application.
create_simulation_application(Client, Input) ->
    create_simulation_application(Client, Input, []).
create_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationApplication"],
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

%% @doc Creates a simulation application with a specific revision id.
create_simulation_application_version(Client, Input) ->
    create_simulation_application_version(Client, Input, []).
create_simulation_application_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationApplicationVersion"],
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

%% @doc Creates a simulation job.
%%
%% After 90 days, simulation jobs expire and will be deleted. They will no
%% longer be accessible.
create_simulation_job(Client, Input) ->
    create_simulation_job(Client, Input, []).
create_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSimulationJob"],
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

%% @doc Creates a world export job.
create_world_export_job(Client, Input) ->
    create_world_export_job(Client, Input, []).
create_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldExportJob"],
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

%% @doc Creates worlds using the specified template.
create_world_generation_job(Client, Input) ->
    create_world_generation_job(Client, Input, []).
create_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldGenerationJob"],
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

%% @doc Creates a world template.
create_world_template(Client, Input) ->
    create_world_template(Client, Input, []).
create_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createWorldTemplate"],
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

%% @doc Deletes a fleet.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
delete_fleet(Client, Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteFleet"],
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

%% @doc Deletes a robot.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
delete_robot(Client, Input) ->
    delete_robot(Client, Input, []).
delete_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteRobot"],
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

%% @doc Deletes a robot application.
delete_robot_application(Client, Input) ->
    delete_robot_application(Client, Input, []).
delete_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteRobotApplication"],
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

%% @doc Deletes a simulation application.
delete_simulation_application(Client, Input) ->
    delete_simulation_application(Client, Input, []).
delete_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSimulationApplication"],
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

%% @doc Deletes a world template.
delete_world_template(Client, Input) ->
    delete_world_template(Client, Input, []).
delete_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteWorldTemplate"],
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

%% @doc Deregisters a robot.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
deregister_robot(Client, Input) ->
    deregister_robot(Client, Input, []).
deregister_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deregisterRobot"],
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

%% @doc Describes a deployment job.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
describe_deployment_job(Client, Input) ->
    describe_deployment_job(Client, Input, []).
describe_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDeploymentJob"],
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

%% @doc Describes a fleet.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
describe_fleet(Client, Input) ->
    describe_fleet(Client, Input, []).
describe_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeFleet"],
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

%% @doc Describes a robot.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
describe_robot(Client, Input) ->
    describe_robot(Client, Input, []).
describe_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeRobot"],
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

%% @doc Describes a robot application.
describe_robot_application(Client, Input) ->
    describe_robot_application(Client, Input, []).
describe_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeRobotApplication"],
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

%% @doc Describes a simulation application.
describe_simulation_application(Client, Input) ->
    describe_simulation_application(Client, Input, []).
describe_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationApplication"],
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

%% @doc Describes a simulation job.
describe_simulation_job(Client, Input) ->
    describe_simulation_job(Client, Input, []).
describe_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationJob"],
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

%% @doc Describes a simulation job batch.
describe_simulation_job_batch(Client, Input) ->
    describe_simulation_job_batch(Client, Input, []).
describe_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSimulationJobBatch"],
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

%% @doc Describes a world.
describe_world(Client, Input) ->
    describe_world(Client, Input, []).
describe_world(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorld"],
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

%% @doc Describes a world export job.
describe_world_export_job(Client, Input) ->
    describe_world_export_job(Client, Input, []).
describe_world_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldExportJob"],
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

%% @doc Describes a world generation job.
describe_world_generation_job(Client, Input) ->
    describe_world_generation_job(Client, Input, []).
describe_world_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldGenerationJob"],
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

%% @doc Describes a world template.
describe_world_template(Client, Input) ->
    describe_world_template(Client, Input, []).
describe_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWorldTemplate"],
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

%% @doc Gets the world template body.
get_world_template_body(Client, Input) ->
    get_world_template_body(Client, Input, []).
get_world_template_body(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getWorldTemplateBody"],
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

%% @doc Returns a list of deployment jobs for a fleet.
%%
%% You can optionally provide filters to retrieve specific deployment jobs.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
list_deployment_jobs(Client, Input) ->
    list_deployment_jobs(Client, Input, []).
list_deployment_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDeploymentJobs"],
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

%% @doc Returns a list of fleets.
%%
%% You can optionally provide filters to retrieve specific fleets.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
list_fleets(Client, Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listFleets"],
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

%% @doc Returns a list of robot application.
%%
%% You can optionally provide filters to retrieve specific robot
%% applications.
list_robot_applications(Client, Input) ->
    list_robot_applications(Client, Input, []).
list_robot_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRobotApplications"],
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

%% @doc Returns a list of robots.
%%
%% You can optionally provide filters to retrieve specific robots.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
list_robots(Client, Input) ->
    list_robots(Client, Input, []).
list_robots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listRobots"],
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

%% @doc Returns a list of simulation applications.
%%
%% You can optionally provide filters to retrieve specific simulation
%% applications.
list_simulation_applications(Client, Input) ->
    list_simulation_applications(Client, Input, []).
list_simulation_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationApplications"],
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

%% @doc Returns a list simulation job batches.
%%
%% You can optionally provide filters to retrieve specific simulation batch
%% jobs.
list_simulation_job_batches(Client, Input) ->
    list_simulation_job_batches(Client, Input, []).
list_simulation_job_batches(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationJobBatches"],
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

%% @doc Returns a list of simulation jobs.
%%
%% You can optionally provide filters to retrieve specific simulation jobs.
list_simulation_jobs(Client, Input) ->
    list_simulation_jobs(Client, Input, []).
list_simulation_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSimulationJobs"],
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

%% @doc Lists all tags on a AWS RoboMaker resource.
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

%% @doc Lists world export jobs.
list_world_export_jobs(Client, Input) ->
    list_world_export_jobs(Client, Input, []).
list_world_export_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldExportJobs"],
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

%% @doc Lists world generator jobs.
list_world_generation_jobs(Client, Input) ->
    list_world_generation_jobs(Client, Input, []).
list_world_generation_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldGenerationJobs"],
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

%% @doc Lists world templates.
list_world_templates(Client, Input) ->
    list_world_templates(Client, Input, []).
list_world_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorldTemplates"],
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

%% @doc Lists worlds.
list_worlds(Client, Input) ->
    list_worlds(Client, Input, []).
list_worlds(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWorlds"],
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

%% @doc Registers a robot with a fleet.
%%
%% This API is no longer supported and will throw an error if used.
register_robot(Client, Input) ->
    register_robot(Client, Input, []).
register_robot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/registerRobot"],
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

%% @doc Restarts a running simulation job.
restart_simulation_job(Client, Input) ->
    restart_simulation_job(Client, Input, []).
restart_simulation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restartSimulationJob"],
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

%% @doc Starts a new simulation job batch.
%%
%% The batch is defined using one or more `SimulationJobRequest' objects.
start_simulation_job_batch(Client, Input) ->
    start_simulation_job_batch(Client, Input, []).
start_simulation_job_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startSimulationJobBatch"],
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

%% @doc Syncrhonizes robots in a fleet to the latest deployment.
%%
%% This is helpful if robots were added after a deployment.
%%
%% This API will no longer be supported as of May 2, 2022. Use it to remove
%% resources that were created for Deployment Service.
sync_deployment_job(Client, Input) ->
    sync_deployment_job(Client, Input, []).
sync_deployment_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/syncDeploymentJob"],
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

%% @doc Adds or edits tags for a AWS RoboMaker resource.
%%
%% Each tag consists of a tag key and a tag value. Tag keys and tag values
%% are both required, but tag values can be empty strings.
%%
%% For information about the rules that apply to tag keys and tag values, see
%% User-Defined Tag Restrictions in the AWS Billing and Cost Management User
%% Guide.
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

%% @doc Removes the specified tags from the specified AWS RoboMaker resource.
%%
%% To remove a tag, specify the tag key. To change the tag value of an
%% existing tag key, use `TagResource' .
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a robot application.
update_robot_application(Client, Input) ->
    update_robot_application(Client, Input, []).
update_robot_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateRobotApplication"],
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

%% @doc Updates a simulation application.
update_simulation_application(Client, Input) ->
    update_simulation_application(Client, Input, []).
update_simulation_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSimulationApplication"],
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

%% @doc Updates a world template.
update_world_template(Client, Input) ->
    update_world_template(Client, Input, []).
update_world_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateWorldTemplate"],
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
    Client1 = Client#{service => <<"robomaker">>},
    Host = build_host(<<"robomaker">>, Client1),
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
