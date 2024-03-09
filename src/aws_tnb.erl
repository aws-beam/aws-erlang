%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Telco Network Builder (TNB) is a network
%% automation service that helps you deploy and manage telecom networks.
%%
%% AWS TNB helps you with the lifecycle management of your telecommunication
%% network functions throughout planning, deployment, and post-deployment
%% activities.
-module(aws_tnb).

-export([cancel_sol_network_operation/3,
         cancel_sol_network_operation/4,
         create_sol_function_package/2,
         create_sol_function_package/3,
         create_sol_network_instance/2,
         create_sol_network_instance/3,
         create_sol_network_package/2,
         create_sol_network_package/3,
         delete_sol_function_package/3,
         delete_sol_function_package/4,
         delete_sol_network_instance/3,
         delete_sol_network_instance/4,
         delete_sol_network_package/3,
         delete_sol_network_package/4,
         get_sol_function_instance/2,
         get_sol_function_instance/4,
         get_sol_function_instance/5,
         get_sol_function_package/2,
         get_sol_function_package/4,
         get_sol_function_package/5,
         get_sol_function_package_content/3,
         get_sol_function_package_content/5,
         get_sol_function_package_content/6,
         get_sol_function_package_descriptor/3,
         get_sol_function_package_descriptor/5,
         get_sol_function_package_descriptor/6,
         get_sol_network_instance/2,
         get_sol_network_instance/4,
         get_sol_network_instance/5,
         get_sol_network_operation/2,
         get_sol_network_operation/4,
         get_sol_network_operation/5,
         get_sol_network_package/2,
         get_sol_network_package/4,
         get_sol_network_package/5,
         get_sol_network_package_content/3,
         get_sol_network_package_content/5,
         get_sol_network_package_content/6,
         get_sol_network_package_descriptor/2,
         get_sol_network_package_descriptor/4,
         get_sol_network_package_descriptor/5,
         instantiate_sol_network_instance/3,
         instantiate_sol_network_instance/4,
         list_sol_function_instances/1,
         list_sol_function_instances/3,
         list_sol_function_instances/4,
         list_sol_function_packages/1,
         list_sol_function_packages/3,
         list_sol_function_packages/4,
         list_sol_network_instances/1,
         list_sol_network_instances/3,
         list_sol_network_instances/4,
         list_sol_network_operations/1,
         list_sol_network_operations/3,
         list_sol_network_operations/4,
         list_sol_network_packages/1,
         list_sol_network_packages/3,
         list_sol_network_packages/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_sol_function_package_content/3,
         put_sol_function_package_content/4,
         put_sol_network_package_content/3,
         put_sol_network_package_content/4,
         tag_resource/3,
         tag_resource/4,
         terminate_sol_network_instance/3,
         terminate_sol_network_instance/4,
         untag_resource/3,
         untag_resource/4,
         update_sol_function_package/3,
         update_sol_function_package/4,
         update_sol_network_instance/3,
         update_sol_network_instance/4,
         update_sol_network_package/3,
         update_sol_network_package/4,
         validate_sol_function_package_content/3,
         validate_sol_function_package_content/4,
         validate_sol_network_package_content/3,
         validate_sol_network_package_content/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a network operation.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
cancel_sol_network_operation(Client, NsLcmOpOccId, Input) ->
    cancel_sol_network_operation(Client, NsLcmOpOccId, Input, []).
cancel_sol_network_operation(Client, NsLcmOpOccId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs/", aws_util:encode_uri(NsLcmOpOccId), "/cancel"],
    SuccessStatusCode = 202,
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

%% @doc Creates a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network. For more
%% information, see Function packages:
%% https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% Creating a function package is the first step for creating a network in
%% AWS TNB. This request creates an empty container with an ID. The next step
%% is to upload the actual CSAR zip file into that empty container. To upload
%% function package content, see PutSolFunctionPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html.
create_sol_function_package(Client, Input) ->
    create_sol_function_package(Client, Input, []).
create_sol_function_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/vnfpkgm/v1/vnf_packages"],
    SuccessStatusCode = 201,
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

%% @doc Creates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed. Creating a network instance is the
%% third step after creating a network package. For more information about
%% network instances, Network instances:
%% https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% Once you create a network instance, you can instantiate it. To instantiate
%% a network, see InstantiateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html.
create_sol_network_instance(Client, Input) ->
    create_sol_network_instance(Client, Input, []).
create_sol_network_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances"],
    SuccessStatusCode = 201,
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

%% @doc Creates a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on. For more information,
%% see Network instances:
%% https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% A network package consists of a network service descriptor (NSD) file
%% (required) and any additional files (optional), such as scripts specific
%% to your needs. For example, if you have multiple function packages in your
%% network package, you can use the NSD to define which network functions
%% should run in certain VPCs, subnets, or EKS clusters.
%%
%% This request creates an empty network package container with an ID. Once
%% you create a network package, you can upload the network package content
%% using PutSolNetworkPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html.
create_sol_network_package(Client, Input) ->
    create_sol_network_package(Client, Input, []).
create_sol_network_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nsd/v1/ns_descriptors"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
%%
%% To delete a function package, the package must be in a disabled state. To
%% disable a function package, see UpdateSolFunctionPackage:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html.
delete_sol_function_package(Client, VnfPkgId, Input) ->
    delete_sol_function_package(Client, VnfPkgId, Input, []).
delete_sol_function_package(Client, VnfPkgId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
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

%% @doc Deletes a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% To delete a network instance, the instance must be in a stopped or
%% terminated state. To terminate a network instance, see
%% TerminateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html.
delete_sol_network_instance(Client, NsInstanceId, Input) ->
    delete_sol_network_instance(Client, NsInstanceId, Input, []).
delete_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), ""],
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

%% @doc Deletes network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
%%
%% To delete a network package, the package must be in a disable state. To
%% disable a network package, see UpdateSolNetworkPackage:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html.
delete_sol_network_package(Client, NsdInfoId, Input) ->
    delete_sol_network_package(Client, NsdInfoId, Input, []).
delete_sol_network_package(Client, NsdInfoId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
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

%% @doc Gets the details of a network function instance, including the
%% instantation state and metadata from the function package descriptor in
%% the network function package.
%%
%% A network function instance is a function in a function package .
get_sol_function_instance(Client, VnfInstanceId)
  when is_map(Client) ->
    get_sol_function_instance(Client, VnfInstanceId, #{}, #{}).

get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap, []).

get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnflcm/v1/vnf_instances/", aws_util:encode_uri(VnfInstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of an individual function package, such as the
%% operational state and whether the package is in use.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network..
get_sol_function_package(Client, VnfPkgId)
  when is_map(Client) ->
    get_sol_function_package(Client, VnfPkgId, #{}, #{}).

get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap, []).

get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the contents of a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
get_sol_function_package_content(Client, VnfPkgId, Accept)
  when is_map(Client) ->
    get_sol_function_package_content(Client, VnfPkgId, Accept, #{}, #{}).

get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap, []).

get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets a function package descriptor in a function package.
%%
%% A function package descriptor is a .yaml file in a function package that
%% uses the TOSCA standard to describe how the network function in the
%% function package should run on your network.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
get_sol_function_package_descriptor(Client, VnfPkgId, Accept)
  when is_map(Client) ->
    get_sol_function_package_descriptor(Client, VnfPkgId, Accept, #{}, #{}).

get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap, []).

get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/vnfd"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets the details of the network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
get_sol_network_instance(Client, NsInstanceId)
  when is_map(Client) ->
    get_sol_network_instance(Client, NsInstanceId, #{}, #{}).

get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap, []).

get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a network operation, including the tasks involved
%% in the network operation and the status of the tasks.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
get_sol_network_operation(Client, NsLcmOpOccId)
  when is_map(Client) ->
    get_sol_network_operation(Client, NsLcmOpOccId, #{}, #{}).

get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap, []).

get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs/", aws_util:encode_uri(NsLcmOpOccId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
get_sol_network_package(Client, NsdInfoId)
  when is_map(Client) ->
    get_sol_network_package(Client, NsdInfoId, #{}, #{}).

get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap, []).

get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the contents of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
get_sol_network_package_content(Client, NsdInfoId, Accept)
  when is_map(Client) ->
    get_sol_network_package_content(Client, NsdInfoId, Accept, #{}, #{}).

get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap, []).

get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets the content of the network service descriptor.
%%
%% A network service descriptor is a .yaml file in a network package that
%% uses the TOSCA standard to describe the network functions you want to
%% deploy and the Amazon Web Services infrastructure you want to deploy the
%% network functions on.
get_sol_network_package_descriptor(Client, NsdInfoId)
  when is_map(Client) ->
    get_sol_network_package_descriptor(Client, NsdInfoId, #{}, #{}).

get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap, []).

get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Instantiates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% Before you can instantiate a network instance, you have to create a
%% network instance. For more information, see CreateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html.
instantiate_sol_network_instance(Client, NsInstanceId, Input) ->
    instantiate_sol_network_instance(Client, NsInstanceId, Input, []).
instantiate_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/instantiate"],
    SuccessStatusCode = 201,
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
                     {<<"dry_run">>, <<"dryRun">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists network function instances.
%%
%% A network function instance is a function in a function package .
list_sol_function_instances(Client)
  when is_map(Client) ->
    list_sol_function_instances(Client, #{}, #{}).

list_sol_function_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_function_instances(Client, QueryMap, HeadersMap, []).

list_sol_function_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnflcm/v1/vnf_instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about function packages.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
list_sol_function_packages(Client)
  when is_map(Client) ->
    list_sol_function_packages(Client, #{}, #{}).

list_sol_function_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_function_packages(Client, QueryMap, HeadersMap, []).

list_sol_function_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your network instances.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
list_sol_network_instances(Client)
  when is_map(Client) ->
    list_sol_network_instances(Client, #{}, #{}).

list_sol_network_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_instances(Client, QueryMap, HeadersMap, []).

list_sol_network_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details for a network operation, including when the operation
%% started and the status of the operation.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
list_sol_network_operations(Client)
  when is_map(Client) ->
    list_sol_network_operations(Client, #{}, #{}).

list_sol_network_operations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_operations(Client, QueryMap, HeadersMap, []).

list_sol_network_operations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists network packages.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
list_sol_network_packages(Client)
  when is_map(Client) ->
    list_sol_network_packages(Client, #{}, #{}).

list_sol_network_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_packages(Client, QueryMap, HeadersMap, []).

list_sol_network_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for AWS TNB resources.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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

%% @doc Uploads the contents of a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
put_sol_function_package_content(Client, VnfPkgId, Input) ->
    put_sol_function_package_content(Client, VnfPkgId, Input, []).
put_sol_function_package_content(Client, VnfPkgId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads the contents of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
put_sol_network_package_content(Client, NsdInfoId, Input) ->
    put_sol_network_package_content(Client, NsdInfoId, Input, []).
put_sol_network_package_content(Client, NsdInfoId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tags an AWS TNB resource.
%%
%% A tag is a label that you assign to an Amazon Web Services resource. Each
%% tag consists of a key and an optional value. You can use tags to search
%% and filter your resources or track your Amazon Web Services costs.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
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

%% @doc Terminates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% You must terminate a network instance before you can delete it.
terminate_sol_network_instance(Client, NsInstanceId, Input) ->
    terminate_sol_network_instance(Client, NsInstanceId, Input, []).
terminate_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/terminate"],
    SuccessStatusCode = 201,
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

%% @doc Untags an AWS TNB resource.
%%
%% A tag is a label that you assign to an Amazon Web Services resource. Each
%% tag consists of a key and an optional value. You can use tags to search
%% and filter your resources or track your Amazon Web Services costs.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
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

%% @doc Updates the operational state of function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
update_sol_function_package(Client, VnfPkgId, Input) ->
    update_sol_function_package(Client, VnfPkgId, Input, []).
update_sol_function_package(Client, VnfPkgId, Input0, Options0) ->
    Method = patch,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
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

%% @doc Update a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
update_sol_network_instance(Client, NsInstanceId, Input) ->
    update_sol_network_instance(Client, NsInstanceId, Input, []).
update_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/update"],
    SuccessStatusCode = 201,
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

%% @doc Updates the operational state of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
%%
%% A network service descriptor is a .yaml file in a network package that
%% uses the TOSCA standard to describe the network functions you want to
%% deploy and the Amazon Web Services infrastructure you want to deploy the
%% network functions on.
update_sol_network_package(Client, NsdInfoId, Input) ->
    update_sol_network_package(Client, NsdInfoId, Input, []).
update_sol_network_package(Client, NsdInfoId, Input0, Options0) ->
    Method = patch,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
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

%% @doc Validates function package content.
%%
%% This can be used as a dry run before uploading function package content
%% with PutSolFunctionPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
validate_sol_function_package_content(Client, VnfPkgId, Input) ->
    validate_sol_function_package_content(Client, VnfPkgId, Input, []).
validate_sol_function_package_content(Client, VnfPkgId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content/validate"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Validates network package content.
%%
%% This can be used as a dry run before uploading network package content
%% with PutSolNetworkPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
validate_sol_network_package_content(Client, NsdInfoId, Input) ->
    validate_sol_network_package_content(Client, NsdInfoId, Input, []).
validate_sol_network_package_content(Client, NsdInfoId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content/validate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
    Client1 = Client#{service => <<"tnb">>},
    Host = build_host(<<"tnb">>, Client1),
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
