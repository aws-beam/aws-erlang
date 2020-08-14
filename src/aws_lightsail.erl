%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lightsail is the easiest way to get started with Amazon Web
%% Services (AWS) for developers who need to build websites or web
%% applications. It includes everything you need to launch your project
%% quickly – instances (virtual private servers), managed databases,
%% SSD-based block storage, static IP addresses, load balancers, content
%% delivery network (CDN) distributions, DNS management of registered
%% domains, and snapshots (backups) – for a low, predictable monthly price.
%%
%% You can manage your Lightsail resources using the Lightsail console,
%% Lightsail API, AWS Command Line Interface (AWS CLI), or SDKs. For more
%% information about Lightsail concepts and tasks, see the <a
%% href="http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli">Lightsail
%% Dev Guide</a>.
%%
%% This API Reference provides detailed information about the actions, data
%% types, parameters, and errors of the Lightsail service. For more
%% information about the supported AWS Regions, endpoints, and service quotas
%% for the Lightsail service, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/lightsail.html">Amazon
%% Lightsail Endpoints and Quotas</a> in the <i>AWS General Reference</i>.
-module(aws_lightsail).

-export([allocate_static_ip/2,
         allocate_static_ip/3,
         attach_certificate_to_distribution/2,
         attach_certificate_to_distribution/3,
         attach_disk/2,
         attach_disk/3,
         attach_instances_to_load_balancer/2,
         attach_instances_to_load_balancer/3,
         attach_load_balancer_tls_certificate/2,
         attach_load_balancer_tls_certificate/3,
         attach_static_ip/2,
         attach_static_ip/3,
         close_instance_public_ports/2,
         close_instance_public_ports/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_certificate/2,
         create_certificate/3,
         create_cloud_formation_stack/2,
         create_cloud_formation_stack/3,
         create_contact_method/2,
         create_contact_method/3,
         create_disk/2,
         create_disk/3,
         create_disk_from_snapshot/2,
         create_disk_from_snapshot/3,
         create_disk_snapshot/2,
         create_disk_snapshot/3,
         create_distribution/2,
         create_distribution/3,
         create_domain/2,
         create_domain/3,
         create_domain_entry/2,
         create_domain_entry/3,
         create_instance_snapshot/2,
         create_instance_snapshot/3,
         create_instances/2,
         create_instances/3,
         create_instances_from_snapshot/2,
         create_instances_from_snapshot/3,
         create_key_pair/2,
         create_key_pair/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_load_balancer_tls_certificate/2,
         create_load_balancer_tls_certificate/3,
         create_relational_database/2,
         create_relational_database/3,
         create_relational_database_from_snapshot/2,
         create_relational_database_from_snapshot/3,
         create_relational_database_snapshot/2,
         create_relational_database_snapshot/3,
         delete_alarm/2,
         delete_alarm/3,
         delete_auto_snapshot/2,
         delete_auto_snapshot/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_contact_method/2,
         delete_contact_method/3,
         delete_disk/2,
         delete_disk/3,
         delete_disk_snapshot/2,
         delete_disk_snapshot/3,
         delete_distribution/2,
         delete_distribution/3,
         delete_domain/2,
         delete_domain/3,
         delete_domain_entry/2,
         delete_domain_entry/3,
         delete_instance/2,
         delete_instance/3,
         delete_instance_snapshot/2,
         delete_instance_snapshot/3,
         delete_key_pair/2,
         delete_key_pair/3,
         delete_known_host_keys/2,
         delete_known_host_keys/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_load_balancer_tls_certificate/2,
         delete_load_balancer_tls_certificate/3,
         delete_relational_database/2,
         delete_relational_database/3,
         delete_relational_database_snapshot/2,
         delete_relational_database_snapshot/3,
         detach_certificate_from_distribution/2,
         detach_certificate_from_distribution/3,
         detach_disk/2,
         detach_disk/3,
         detach_instances_from_load_balancer/2,
         detach_instances_from_load_balancer/3,
         detach_static_ip/2,
         detach_static_ip/3,
         disable_add_on/2,
         disable_add_on/3,
         download_default_key_pair/2,
         download_default_key_pair/3,
         enable_add_on/2,
         enable_add_on/3,
         export_snapshot/2,
         export_snapshot/3,
         get_active_names/2,
         get_active_names/3,
         get_alarms/2,
         get_alarms/3,
         get_auto_snapshots/2,
         get_auto_snapshots/3,
         get_blueprints/2,
         get_blueprints/3,
         get_bundles/2,
         get_bundles/3,
         get_certificates/2,
         get_certificates/3,
         get_cloud_formation_stack_records/2,
         get_cloud_formation_stack_records/3,
         get_contact_methods/2,
         get_contact_methods/3,
         get_disk/2,
         get_disk/3,
         get_disk_snapshot/2,
         get_disk_snapshot/3,
         get_disk_snapshots/2,
         get_disk_snapshots/3,
         get_disks/2,
         get_disks/3,
         get_distribution_bundles/2,
         get_distribution_bundles/3,
         get_distribution_latest_cache_reset/2,
         get_distribution_latest_cache_reset/3,
         get_distribution_metric_data/2,
         get_distribution_metric_data/3,
         get_distributions/2,
         get_distributions/3,
         get_domain/2,
         get_domain/3,
         get_domains/2,
         get_domains/3,
         get_export_snapshot_records/2,
         get_export_snapshot_records/3,
         get_instance/2,
         get_instance/3,
         get_instance_access_details/2,
         get_instance_access_details/3,
         get_instance_metric_data/2,
         get_instance_metric_data/3,
         get_instance_port_states/2,
         get_instance_port_states/3,
         get_instance_snapshot/2,
         get_instance_snapshot/3,
         get_instance_snapshots/2,
         get_instance_snapshots/3,
         get_instance_state/2,
         get_instance_state/3,
         get_instances/2,
         get_instances/3,
         get_key_pair/2,
         get_key_pair/3,
         get_key_pairs/2,
         get_key_pairs/3,
         get_load_balancer/2,
         get_load_balancer/3,
         get_load_balancer_metric_data/2,
         get_load_balancer_metric_data/3,
         get_load_balancer_tls_certificates/2,
         get_load_balancer_tls_certificates/3,
         get_load_balancers/2,
         get_load_balancers/3,
         get_operation/2,
         get_operation/3,
         get_operations/2,
         get_operations/3,
         get_operations_for_resource/2,
         get_operations_for_resource/3,
         get_regions/2,
         get_regions/3,
         get_relational_database/2,
         get_relational_database/3,
         get_relational_database_blueprints/2,
         get_relational_database_blueprints/3,
         get_relational_database_bundles/2,
         get_relational_database_bundles/3,
         get_relational_database_events/2,
         get_relational_database_events/3,
         get_relational_database_log_events/2,
         get_relational_database_log_events/3,
         get_relational_database_log_streams/2,
         get_relational_database_log_streams/3,
         get_relational_database_master_user_password/2,
         get_relational_database_master_user_password/3,
         get_relational_database_metric_data/2,
         get_relational_database_metric_data/3,
         get_relational_database_parameters/2,
         get_relational_database_parameters/3,
         get_relational_database_snapshot/2,
         get_relational_database_snapshot/3,
         get_relational_database_snapshots/2,
         get_relational_database_snapshots/3,
         get_relational_databases/2,
         get_relational_databases/3,
         get_static_ip/2,
         get_static_ip/3,
         get_static_ips/2,
         get_static_ips/3,
         import_key_pair/2,
         import_key_pair/3,
         is_vpc_peered/2,
         is_vpc_peered/3,
         open_instance_public_ports/2,
         open_instance_public_ports/3,
         peer_vpc/2,
         peer_vpc/3,
         put_alarm/2,
         put_alarm/3,
         put_instance_public_ports/2,
         put_instance_public_ports/3,
         reboot_instance/2,
         reboot_instance/3,
         reboot_relational_database/2,
         reboot_relational_database/3,
         release_static_ip/2,
         release_static_ip/3,
         reset_distribution_cache/2,
         reset_distribution_cache/3,
         send_contact_method_verification/2,
         send_contact_method_verification/3,
         start_instance/2,
         start_instance/3,
         start_relational_database/2,
         start_relational_database/3,
         stop_instance/2,
         stop_instance/3,
         stop_relational_database/2,
         stop_relational_database/3,
         tag_resource/2,
         tag_resource/3,
         test_alarm/2,
         test_alarm/3,
         unpeer_vpc/2,
         unpeer_vpc/3,
         untag_resource/2,
         untag_resource/3,
         update_distribution/2,
         update_distribution/3,
         update_distribution_bundle/2,
         update_distribution_bundle/3,
         update_domain_entry/2,
         update_domain_entry/3,
         update_load_balancer_attribute/2,
         update_load_balancer_attribute/3,
         update_relational_database/2,
         update_relational_database/3,
         update_relational_database_parameters/2,
         update_relational_database_parameters/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Allocates a static IP address.
allocate_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_static_ip(Client, Input, []).
allocate_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateStaticIp">>, Input, Options).

%% @doc Attaches an SSL/TLS certificate to your Amazon Lightsail content
%% delivery network (CDN) distribution.
%%
%% After the certificate is attached, your distribution accepts HTTPS traffic
%% for all of the domains that are associated with the certificate.
%%
%% Use the <code>CreateCertificate</code> action to create a certificate that
%% you can attach to your distribution.
%%
%% <important> Only certificates created in the <code>us-east-1</code> AWS
%% Region can be attached to Lightsail distributions. Lightsail distributions
%% are global resources that can reference an origin in any AWS Region, and
%% distribute its content globally. However, all distributions are located in
%% the <code>us-east-1</code> Region.
%%
%% </important>
attach_certificate_to_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_certificate_to_distribution(Client, Input, []).
attach_certificate_to_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachCertificateToDistribution">>, Input, Options).

%% @doc Attaches a block storage disk to a running or stopped Lightsail
%% instance and exposes it to the instance with the specified disk name.
%%
%% The <code>attach disk</code> operation supports tag-based access control
%% via resource tags applied to the resource identified by <code>disk
%% name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
attach_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_disk(Client, Input, []).
attach_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachDisk">>, Input, Options).

%% @doc Attaches one or more Lightsail instances to a load balancer.
%%
%% After some time, the instances are attached to the load balancer and the
%% health check status is available.
%%
%% The <code>attach instances to load balancer</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
attach_instances_to_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_instances_to_load_balancer(Client, Input, []).
attach_instances_to_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInstancesToLoadBalancer">>, Input, Options).

%% @doc Attaches a Transport Layer Security (TLS) certificate to your load
%% balancer. TLS is just an updated, more secure version of Secure Socket
%% Layer (SSL).
%%
%% Once you create and validate your certificate, you can attach it to your
%% load balancer. You can also use this API to rotate the certificates on
%% your account. Use the <code>AttachLoadBalancerTlsCertificate</code> action
%% with the non-attached certificate, and it will replace the existing one
%% and become the attached certificate.
%%
%% The <code>AttachLoadBalancerTlsCertificate</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
attach_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_tls_certificate(Client, Input, []).
attach_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Attaches a static IP address to a specific Amazon Lightsail instance.
attach_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_static_ip(Client, Input, []).
attach_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachStaticIp">>, Input, Options).

%% @doc Closes ports for a specific Amazon Lightsail instance.
%%
%% The <code>CloseInstancePublicPorts</code> action supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instanceName</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
close_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    close_instance_public_ports(Client, Input, []).
close_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloseInstancePublicPorts">>, Input, Options).

%% @doc Copies a manual snapshot of an instance or disk as another manual
%% snapshot, or copies an automatic snapshot of an instance or disk as a
%% manual snapshot. This operation can also be used to copy a manual or
%% automatic snapshot of an instance or a disk from one AWS Region to another
%% in Amazon Lightsail.
%%
%% When copying a <i>manual snapshot</i>, be sure to define the <code>source
%% region</code>, <code>source snapshot name</code>, and <code>target
%% snapshot name</code> parameters.
%%
%% When copying an <i>automatic snapshot</i>, be sure to define the
%% <code>source region</code>, <code>source resource name</code>,
%% <code>target snapshot name</code>, and either the <code>restore
%% date</code> or the <code>use latest restorable auto snapshot</code>
%% parameters.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates an SSL/TLS certificate for a Amazon Lightsail content
%% delivery network (CDN) distribution.
%%
%% After the certificate is created, use the
%% <code>AttachCertificateToDistribution</code> action to attach the
%% certificate to your distribution.
%%
%% <important> Only certificates created in the <code>us-east-1</code> AWS
%% Region can be attached to Lightsail distributions. Lightsail distributions
%% are global resources that can reference an origin in any AWS Region, and
%% distribute its content globally. However, all distributions are located in
%% the <code>us-east-1</code> Region.
%%
%% </important>
create_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate(Client, Input, []).
create_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificate">>, Input, Options).

%% @doc Creates an AWS CloudFormation stack, which creates a new Amazon EC2
%% instance from an exported Amazon Lightsail snapshot. This operation
%% results in a CloudFormation stack record that can be used to track the AWS
%% CloudFormation stack created. Use the <code>get cloud formation stack
%% records</code> operation to get a list of the CloudFormation stacks
%% created.
%%
%% <important> Wait until after your new Amazon EC2 instance is created
%% before running the <code>create cloud formation stack</code> operation
%% again with the same export snapshot record.
%%
%% </important>
create_cloud_formation_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cloud_formation_stack(Client, Input, []).
create_cloud_formation_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCloudFormationStack">>, Input, Options).

%% @doc Creates an email or SMS text message contact method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources. You can add one email address and one mobile phone
%% number contact method in each AWS Region. However, SMS text messaging is
%% not supported in some AWS Regions, and SMS text messages cannot be sent to
%% some countries/regions. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications">Notifications
%% in Amazon Lightsail</a>.
create_contact_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact_method(Client, Input, []).
create_contact_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContactMethod">>, Input, Options).

%% @doc Creates a block storage disk that can be attached to an Amazon
%% Lightsail instance in the same Availability Zone (e.g.,
%% <code>us-east-2a</code>).
%%
%% The <code>create disk</code> operation supports tag-based access control
%% via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk(Client, Input, []).
create_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDisk">>, Input, Options).

%% @doc Creates a block storage disk from a manual or automatic snapshot of a
%% disk. The resulting disk can be attached to an Amazon Lightsail instance
%% in the same Availability Zone (e.g., <code>us-east-2a</code>).
%%
%% The <code>create disk from snapshot</code> operation supports tag-based
%% access control via request tags and resource tags applied to the resource
%% identified by <code>disk snapshot name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_disk_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk_from_snapshot(Client, Input, []).
create_disk_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDiskFromSnapshot">>, Input, Options).

%% @doc Creates a snapshot of a block storage disk. You can use snapshots for
%% backups, to make copies of disks, and to save data before shutting down a
%% Lightsail instance.
%%
%% You can take a snapshot of an attached disk that is in use; however,
%% snapshots only capture data that has been written to your disk at the time
%% the snapshot command is issued. This may exclude any data that has been
%% cached by any applications or the operating system. If you can pause any
%% file systems on the disk long enough to take a snapshot, your snapshot
%% should be complete. Nevertheless, if you cannot pause all file writes to
%% the disk, you should unmount the disk from within the Lightsail instance,
%% issue the create disk snapshot command, and then remount the disk to
%% ensure a consistent and complete snapshot. You may remount and use your
%% disk while the snapshot status is pending.
%%
%% You can also use this operation to create a snapshot of an instance's
%% system volume. You might want to do this, for example, to recover data
%% from the system volume of a botched instance or to create a backup of the
%% system volume like you would for a block storage disk. To create a
%% snapshot of a system volume, just define the <code>instance name</code>
%% parameter when issuing the snapshot command, and a snapshot of the defined
%% instance's system volume will be created. After the snapshot is available,
%% you can create a block storage disk from the snapshot and attach it to a
%% running instance to access the data on the disk.
%%
%% The <code>create disk snapshot</code> operation supports tag-based access
%% control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_disk_snapshot(Client, Input, []).
create_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDiskSnapshot">>, Input, Options).

%% @doc Creates an Amazon Lightsail content delivery network (CDN)
%% distribution.
%%
%% A distribution is a globally distributed network of caching servers that
%% improve the performance of your website or web application hosted on a
%% Lightsail instance. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-content-delivery-networks">Content
%% delivery networks in Amazon Lightsail</a>.
create_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_distribution(Client, Input, []).
create_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDistribution">>, Input, Options).

%% @doc Creates a domain resource for the specified domain (e.g.,
%% example.com).
%%
%% The <code>create domain</code> operation supports tag-based access control
%% via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Creates one of the following entry records associated with the
%% domain: Address (A), canonical name (CNAME), mail exchanger (MX), name
%% server (NS), start of authority (SOA), service locator (SRV), or text
%% (TXT).
%%
%% The <code>create domain entry</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>domain name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain_entry(Client, Input, []).
create_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomainEntry">>, Input, Options).

%% @doc Creates a snapshot of a specific virtual private server, or
%% <i>instance</i>. You can use a snapshot to create a new instance that is
%% based on that snapshot.
%%
%% The <code>create instance snapshot</code> operation supports tag-based
%% access control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_snapshot(Client, Input, []).
create_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceSnapshot">>, Input, Options).

%% @doc Creates one or more Amazon Lightsail instances.
%%
%% The <code>create instances</code> operation supports tag-based access
%% control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instances(Client, Input, []).
create_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstances">>, Input, Options).

%% @doc Creates one or more new instances from a manual or automatic snapshot
%% of an instance.
%%
%% The <code>create instances from snapshot</code> operation supports
%% tag-based access control via request tags and resource tags applied to the
%% resource identified by <code>instance snapshot name</code>. For more
%% information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_instances_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instances_from_snapshot(Client, Input, []).
create_instances_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstancesFromSnapshot">>, Input, Options).

%% @doc Creates an SSH key pair.
%%
%% The <code>create key pair</code> operation supports tag-based access
%% control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key_pair(Client, Input, []).
create_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKeyPair">>, Input, Options).

%% @doc Creates a Lightsail load balancer. To learn more about deciding
%% whether to load balance your application, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing">Configure
%% your Lightsail instances for load balancing</a>. You can create up to 5
%% load balancers per AWS Region in your account.
%%
%% When you create a load balancer, you can specify a unique name and port
%% settings. To change additional load balancer settings, use the
%% <code>UpdateLoadBalancerAttribute</code> operation.
%%
%% The <code>create load balancer</code> operation supports tag-based access
%% control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates a Lightsail load balancer TLS certificate.
%%
%% TLS is just an updated, more secure version of Secure Socket Layer (SSL).
%%
%% The <code>CreateLoadBalancerTlsCertificate</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_tls_certificate(Client, Input, []).
create_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Creates a new database in Amazon Lightsail.
%%
%% The <code>create relational database</code> operation supports tag-based
%% access control via request tags. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database(Client, Input, []).
create_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabase">>, Input, Options).

%% @doc Creates a new database from an existing database snapshot in Amazon
%% Lightsail.
%%
%% You can create a new database from a snapshot in if something goes wrong
%% with your original database, or to change it to a different plan, such as
%% a high availability or standard plan.
%%
%% The <code>create relational database from snapshot</code> operation
%% supports tag-based access control via request tags and resource tags
%% applied to the resource identified by relationalDatabaseSnapshotName. For
%% more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_relational_database_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database_from_snapshot(Client, Input, []).
create_relational_database_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabaseFromSnapshot">>, Input, Options).

%% @doc Creates a snapshot of your database in Amazon Lightsail. You can use
%% snapshots for backups, to make copies of a database, and to save data
%% before deleting a database.
%%
%% The <code>create relational database snapshot</code> operation supports
%% tag-based access control via request tags. For more information, see the
%% <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
create_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relational_database_snapshot(Client, Input, []).
create_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Deletes an alarm.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric condition is met, the alarm can notify you by email, SMS
%% text message, and a banner displayed on the Amazon Lightsail console. For
%% more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms">Alarms
%% in Amazon Lightsail</a>.
delete_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alarm(Client, Input, []).
delete_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlarm">>, Input, Options).

%% @doc Deletes an automatic snapshot of an instance or disk. For more
%% information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots">Lightsail
%% Dev Guide</a>.
delete_auto_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_snapshot(Client, Input, []).
delete_auto_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoSnapshot">>, Input, Options).

%% @doc Deletes an SSL/TLS certificate for your Amazon Lightsail content
%% delivery network (CDN) distribution.
%%
%% Certificates that are currently attached to a distribution cannot be
%% deleted. Use the <code>DetachCertificateFromDistribution</code> action to
%% detach a certificate from a distribution.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes a contact method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources. You can add one email address and one mobile phone
%% number contact method in each AWS Region. However, SMS text messaging is
%% not supported in some AWS Regions, and SMS text messages cannot be sent to
%% some countries/regions. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications">Notifications
%% in Amazon Lightsail</a>.
delete_contact_method(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact_method(Client, Input, []).
delete_contact_method(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContactMethod">>, Input, Options).

%% @doc Deletes the specified block storage disk. The disk must be in the
%% <code>available</code> state (not attached to a Lightsail instance).
%%
%% <note> The disk may remain in the <code>deleting</code> state for several
%% minutes.
%%
%% </note> The <code>delete disk</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by <code>disk
%% name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_disk(Client, Input, []).
delete_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDisk">>, Input, Options).

%% @doc Deletes the specified disk snapshot.
%%
%% When you make periodic snapshots of a disk, the snapshots are incremental,
%% and only the blocks on the device that have changed since your last
%% snapshot are saved in the new snapshot. When you delete a snapshot, only
%% the data not needed for any other snapshot is removed. So regardless of
%% which prior snapshots have been deleted, all active snapshots will have
%% access to all the information needed to restore the disk.
%%
%% The <code>delete disk snapshot</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by <code>disk
%% snapshot name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_disk_snapshot(Client, Input, []).
delete_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDiskSnapshot">>, Input, Options).

%% @doc Deletes your Amazon Lightsail content delivery network (CDN)
%% distribution.
delete_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_distribution(Client, Input, []).
delete_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDistribution">>, Input, Options).

%% @doc Deletes the specified domain recordset and all of its domain records.
%%
%% The <code>delete domain</code> operation supports tag-based access control
%% via resource tags applied to the resource identified by <code>domain
%% name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Deletes a specific domain entry.
%%
%% The <code>delete domain entry</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>domain name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain_entry(Client, Input, []).
delete_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomainEntry">>, Input, Options).

%% @doc Deletes an Amazon Lightsail instance.
%%
%% The <code>delete instance</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instance name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance(Client, Input, []).
delete_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstance">>, Input, Options).

%% @doc Deletes a specific snapshot of a virtual private server (or
%% <i>instance</i>).
%%
%% The <code>delete instance snapshot</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% <code>instance snapshot name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_snapshot(Client, Input, []).
delete_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceSnapshot">>, Input, Options).

%% @doc Deletes a specific SSH key pair.
%%
%% The <code>delete key pair</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by <code>key
%% pair name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_key_pair(Client, Input, []).
delete_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyPair">>, Input, Options).

%% @doc Deletes the known host key or certificate used by the Amazon
%% Lightsail browser-based SSH or RDP clients to authenticate an instance.
%% This operation enables the Lightsail browser-based SSH or RDP clients to
%% connect to the instance after a host key mismatch.
%%
%% <important> Perform this operation only if you were expecting the host key
%% or certificate mismatch or if you are familiar with the new host key or
%% certificate on the instance. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection">Troubleshooting
%% connection issues when using the Amazon Lightsail browser-based SSH or RDP
%% client</a>.
%%
%% </important>
delete_known_host_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_known_host_keys(Client, Input, []).
delete_known_host_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKnownHostKeys">>, Input, Options).

%% @doc Deletes a Lightsail load balancer and all its associated SSL/TLS
%% certificates. Once the load balancer is deleted, you will need to create a
%% new load balancer, create a new certificate, and verify domain ownership
%% again.
%%
%% The <code>delete load balancer</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by <code>load
%% balancer name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes an SSL/TLS certificate associated with a Lightsail load
%% balancer.
%%
%% The <code>DeleteLoadBalancerTlsCertificate</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_load_balancer_tls_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_tls_certificate(Client, Input, []).
delete_load_balancer_tls_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerTlsCertificate">>, Input, Options).

%% @doc Deletes a database in Amazon Lightsail.
%%
%% The <code>delete relational database</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relational_database(Client, Input, []).
delete_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelationalDatabase">>, Input, Options).

%% @doc Deletes a database snapshot in Amazon Lightsail.
%%
%% The <code>delete relational database snapshot</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
delete_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relational_database_snapshot(Client, Input, []).
delete_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Detaches an SSL/TLS certificate from your Amazon Lightsail content
%% delivery network (CDN) distribution.
%%
%% After the certificate is detached, your distribution stops accepting
%% traffic for all of the domains that are associated with the certificate.
detach_certificate_from_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_certificate_from_distribution(Client, Input, []).
detach_certificate_from_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachCertificateFromDistribution">>, Input, Options).

%% @doc Detaches a stopped block storage disk from a Lightsail instance. Make
%% sure to unmount any file systems on the device within your operating
%% system before stopping the instance and detaching the disk.
%%
%% The <code>detach disk</code> operation supports tag-based access control
%% via resource tags applied to the resource identified by <code>disk
%% name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
detach_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_disk(Client, Input, []).
detach_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachDisk">>, Input, Options).

%% @doc Detaches the specified instances from a Lightsail load balancer.
%%
%% This operation waits until the instances are no longer needed before they
%% are detached from the load balancer.
%%
%% The <code>detach instances from load balancer</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
detach_instances_from_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_instances_from_load_balancer(Client, Input, []).
detach_instances_from_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachInstancesFromLoadBalancer">>, Input, Options).

%% @doc Detaches a static IP from the Amazon Lightsail instance to which it
%% is attached.
detach_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_static_ip(Client, Input, []).
detach_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachStaticIp">>, Input, Options).

%% @doc Disables an add-on for an Amazon Lightsail resource. For more
%% information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots">Lightsail
%% Dev Guide</a>.
disable_add_on(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_add_on(Client, Input, []).
disable_add_on(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAddOn">>, Input, Options).

%% @doc Downloads the default SSH key pair from the user's account.
download_default_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    download_default_key_pair(Client, Input, []).
download_default_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DownloadDefaultKeyPair">>, Input, Options).

%% @doc Enables or modifies an add-on for an Amazon Lightsail resource. For
%% more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots">Lightsail
%% Dev Guide</a>.
enable_add_on(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_add_on(Client, Input, []).
enable_add_on(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAddOn">>, Input, Options).

%% @doc Exports an Amazon Lightsail instance or block storage disk snapshot
%% to Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an
%% export snapshot record that can be used with the <code>create cloud
%% formation stack</code> operation to create new Amazon EC2 instances.
%%
%% Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images
%% (AMIs), and the instance system disk appears as an Amazon Elastic Block
%% Store (Amazon EBS) volume. Exported disk snapshots appear in Amazon EC2 as
%% Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services
%% Region in Amazon EC2 as the source Lightsail snapshot.
%%
%% <p/> The <code>export snapshot</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>source snapshot name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
%%
%% <note> Use the <code>get instance snapshots</code> or <code>get disk
%% snapshots</code> operations to get a list of snapshots that you can export
%% to Amazon EC2.
%%
%% </note>
export_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_snapshot(Client, Input, []).
export_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportSnapshot">>, Input, Options).

%% @doc Returns the names of all active (not deleted) resources.
get_active_names(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_active_names(Client, Input, []).
get_active_names(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetActiveNames">>, Input, Options).

%% @doc Returns information about the configured alarms. Specify an alarm
%% name in your request to return information about a specific alarm, or
%% specify a monitored resource name to return information about all alarms
%% for a specific resource.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric condition is met, the alarm can notify you by email, SMS
%% text message, and a banner displayed on the Amazon Lightsail console. For
%% more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms">Alarms
%% in Amazon Lightsail</a>.
get_alarms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_alarms(Client, Input, []).
get_alarms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAlarms">>, Input, Options).

%% @doc Returns the available automatic snapshots for an instance or disk.
%% For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots">Lightsail
%% Dev Guide</a>.
get_auto_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_snapshots(Client, Input, []).
get_auto_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoSnapshots">>, Input, Options).

%% @doc Returns the list of available instance images, or <i>blueprints</i>.
%% You can use a blueprint to create a new instance already running a
%% specific operating system, as well as a preinstalled app or development
%% stack. The software each instance is running depends on the blueprint
%% image you choose.
%%
%% <note> Use active blueprints when creating new instances. Inactive
%% blueprints are listed to support customers with existing instances and are
%% not necessarily available to create new instances. Blueprints are marked
%% inactive when they become outdated due to operating system updates or new
%% application releases.
%%
%% </note>
get_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprints(Client, Input, []).
get_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprints">>, Input, Options).

%% @doc Returns the list of bundles that are available for purchase. A bundle
%% describes the specs for your virtual private server (or <i>instance</i>).
get_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_bundles(Client, Input, []).
get_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBundles">>, Input, Options).

%% @doc Returns information about one or more Amazon Lightsail SSL/TLS
%% certificates.
%%
%% <note> To get a summary of a certificate, ommit
%% <code>includeCertificateDetails</code> from your request. The response
%% will include only the certificate Amazon Resource Name (ARN), certificate
%% name, domain name, and tags.
%%
%% </note>
get_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificates(Client, Input, []).
get_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificates">>, Input, Options).

%% @doc Returns the CloudFormation stack record created as a result of the
%% <code>create cloud formation stack</code> operation.
%%
%% An AWS CloudFormation stack is used to create a new Amazon EC2 instance
%% from an exported Lightsail snapshot.
get_cloud_formation_stack_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cloud_formation_stack_records(Client, Input, []).
get_cloud_formation_stack_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCloudFormationStackRecords">>, Input, Options).

%% @doc Returns information about the configured contact methods. Specify a
%% protocol in your request to return information about a specific contact
%% method.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources. You can add one email address and one mobile phone
%% number contact method in each AWS Region. However, SMS text messaging is
%% not supported in some AWS Regions, and SMS text messages cannot be sent to
%% some countries/regions. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications">Notifications
%% in Amazon Lightsail</a>.
get_contact_methods(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_methods(Client, Input, []).
get_contact_methods(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactMethods">>, Input, Options).

%% @doc Returns information about a specific block storage disk.
get_disk(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk(Client, Input, []).
get_disk(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDisk">>, Input, Options).

%% @doc Returns information about a specific block storage disk snapshot.
get_disk_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk_snapshot(Client, Input, []).
get_disk_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiskSnapshot">>, Input, Options).

%% @doc Returns information about all block storage disk snapshots in your
%% AWS account and region.
get_disk_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disk_snapshots(Client, Input, []).
get_disk_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiskSnapshots">>, Input, Options).

%% @doc Returns information about all block storage disks in your AWS account
%% and region.
get_disks(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_disks(Client, Input, []).
get_disks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDisks">>, Input, Options).

%% @doc Returns the list bundles that can be applied to you Amazon Lightsail
%% content delivery network (CDN) distributions.
%%
%% A distribution bundle specifies the monthly network transfer quota and
%% monthly cost of your dsitribution.
get_distribution_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_bundles(Client, Input, []).
get_distribution_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionBundles">>, Input, Options).

%% @doc Returns the timestamp and status of the last cache reset of a
%% specific Amazon Lightsail content delivery network (CDN) distribution.
get_distribution_latest_cache_reset(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_latest_cache_reset(Client, Input, []).
get_distribution_latest_cache_reset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionLatestCacheReset">>, Input, Options).

%% @doc Returns the data points of a specific metric for an Amazon Lightsail
%% content delivery network (CDN) distribution.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them. Monitor and collect metric data regularly to maintain
%% the reliability, availability, and performance of your resources.
get_distribution_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distribution_metric_data(Client, Input, []).
get_distribution_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributionMetricData">>, Input, Options).

%% @doc Returns information about one or more of your Amazon Lightsail
%% content delivery network (CDN) distributions.
get_distributions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_distributions(Client, Input, []).
get_distributions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDistributions">>, Input, Options).

%% @doc Returns information about a specific domain recordset.
get_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain(Client, Input, []).
get_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomain">>, Input, Options).

%% @doc Returns a list of all domains in the user's account.
get_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domains(Client, Input, []).
get_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomains">>, Input, Options).

%% @doc Returns the export snapshot record created as a result of the
%% <code>export snapshot</code> operation.
%%
%% An export snapshot record can be used to create a new Amazon EC2 instance
%% and its related resources with the <code>create cloud formation
%% stack</code> operation.
get_export_snapshot_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_export_snapshot_records(Client, Input, []).
get_export_snapshot_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExportSnapshotRecords">>, Input, Options).

%% @doc Returns information about a specific Amazon Lightsail instance, which
%% is a virtual private server.
get_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance(Client, Input, []).
get_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstance">>, Input, Options).

%% @doc Returns temporary SSH keys you can use to connect to a specific
%% virtual private server, or <i>instance</i>.
%%
%% The <code>get instance access details</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% <code>instance name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
get_instance_access_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_access_details(Client, Input, []).
get_instance_access_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceAccessDetails">>, Input, Options).

%% @doc Returns the data points for the specified Amazon Lightsail instance
%% metric, given an instance name.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them. Monitor and collect metric data regularly to maintain
%% the reliability, availability, and performance of your resources.
get_instance_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_metric_data(Client, Input, []).
get_instance_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceMetricData">>, Input, Options).

%% @doc Returns the firewall port states for a specific Amazon Lightsail
%% instance, the IP addresses allowed to connect to the instance through the
%% ports, and the protocol.
get_instance_port_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_port_states(Client, Input, []).
get_instance_port_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstancePortStates">>, Input, Options).

%% @doc Returns information about a specific instance snapshot.
get_instance_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_snapshot(Client, Input, []).
get_instance_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceSnapshot">>, Input, Options).

%% @doc Returns all instance snapshots for the user's account.
get_instance_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_snapshots(Client, Input, []).
get_instance_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceSnapshots">>, Input, Options).

%% @doc Returns the state of a specific instance. Works on one instance at a
%% time.
get_instance_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_state(Client, Input, []).
get_instance_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceState">>, Input, Options).

%% @doc Returns information about all Amazon Lightsail virtual private
%% servers, or <i>instances</i>.
get_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instances(Client, Input, []).
get_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstances">>, Input, Options).

%% @doc Returns information about a specific key pair.
get_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_pair(Client, Input, []).
get_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPair">>, Input, Options).

%% @doc Returns information about all key pairs in the user's account.
get_key_pairs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_key_pairs(Client, Input, []).
get_key_pairs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyPairs">>, Input, Options).

%% @doc Returns information about the specified Lightsail load balancer.
get_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer(Client, Input, []).
get_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancer">>, Input, Options).

%% @doc Returns information about health metrics for your Lightsail load
%% balancer.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them. Monitor and collect metric data regularly to maintain
%% the reliability, availability, and performance of your resources.
get_load_balancer_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer_metric_data(Client, Input, []).
get_load_balancer_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancerMetricData">>, Input, Options).

%% @doc Returns information about the TLS certificates that are associated
%% with the specified Lightsail load balancer.
%%
%% TLS is just an updated, more secure version of Secure Socket Layer (SSL).
%%
%% You can have a maximum of 2 certificates associated with a Lightsail load
%% balancer. One is active and the other is inactive.
get_load_balancer_tls_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancer_tls_certificates(Client, Input, []).
get_load_balancer_tls_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancerTlsCertificates">>, Input, Options).

%% @doc Returns information about all load balancers in an account.
get_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_load_balancers(Client, Input, []).
get_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLoadBalancers">>, Input, Options).

%% @doc Returns information about a specific operation. Operations include
%% events such as when you create an instance, allocate a static IP, attach a
%% static IP, and so on.
get_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation(Client, Input, []).
get_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperation">>, Input, Options).

%% @doc Returns information about all operations.
%%
%% Results are returned from oldest to newest, up to a maximum of 200.
%% Results can be paged by making each subsequent call to
%% <code>GetOperations</code> use the maximum (last)
%% <code>statusChangedAt</code> value from the previous request.
get_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operations(Client, Input, []).
get_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperations">>, Input, Options).

%% @doc Gets operations for a specific resource (e.g., an instance or a
%% static IP).
get_operations_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operations_for_resource(Client, Input, []).
get_operations_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperationsForResource">>, Input, Options).

%% @doc Returns a list of all valid regions for Amazon Lightsail. Use the
%% <code>include availability zones</code> parameter to also return the
%% Availability Zones in a region.
get_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_regions(Client, Input, []).
get_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRegions">>, Input, Options).

%% @doc Returns information about a specific database in Amazon Lightsail.
get_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database(Client, Input, []).
get_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabase">>, Input, Options).

%% @doc Returns a list of available database blueprints in Amazon Lightsail.
%% A blueprint describes the major engine version of a database.
%%
%% You can use a blueprint ID to create a new database that runs a specific
%% database engine.
get_relational_database_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_blueprints(Client, Input, []).
get_relational_database_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseBlueprints">>, Input, Options).

%% @doc Returns the list of bundles that are available in Amazon Lightsail. A
%% bundle describes the performance specifications for a database.
%%
%% You can use a bundle ID to create a new database with explicit performance
%% specifications.
get_relational_database_bundles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_bundles(Client, Input, []).
get_relational_database_bundles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseBundles">>, Input, Options).

%% @doc Returns a list of events for a specific database in Amazon Lightsail.
get_relational_database_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_events(Client, Input, []).
get_relational_database_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseEvents">>, Input, Options).

%% @doc Returns a list of log events for a database in Amazon Lightsail.
get_relational_database_log_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_log_events(Client, Input, []).
get_relational_database_log_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseLogEvents">>, Input, Options).

%% @doc Returns a list of available log streams for a specific database in
%% Amazon Lightsail.
get_relational_database_log_streams(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_log_streams(Client, Input, []).
get_relational_database_log_streams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseLogStreams">>, Input, Options).

%% @doc Returns the current, previous, or pending versions of the master user
%% password for a Lightsail database.
%%
%% The <code>GetRelationalDatabaseMasterUserPassword</code> operation
%% supports tag-based access control via resource tags applied to the
%% resource identified by relationalDatabaseName.
get_relational_database_master_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_master_user_password(Client, Input, []).
get_relational_database_master_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseMasterUserPassword">>, Input, Options).

%% @doc Returns the data points of the specified metric for a database in
%% Amazon Lightsail.
%%
%% Metrics report the utilization of your resources, and the error counts
%% generated by them. Monitor and collect metric data regularly to maintain
%% the reliability, availability, and performance of your resources.
get_relational_database_metric_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_metric_data(Client, Input, []).
get_relational_database_metric_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseMetricData">>, Input, Options).

%% @doc Returns all of the runtime parameters offered by the underlying
%% database software, or engine, for a specific database in Amazon Lightsail.
%%
%% In addition to the parameter names and values, this operation returns
%% other information about each parameter. This information includes whether
%% changes require a reboot, whether the parameter is modifiable, the allowed
%% values, and the data types.
get_relational_database_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_parameters(Client, Input, []).
get_relational_database_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseParameters">>, Input, Options).

%% @doc Returns information about a specific database snapshot in Amazon
%% Lightsail.
get_relational_database_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_snapshot(Client, Input, []).
get_relational_database_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseSnapshot">>, Input, Options).

%% @doc Returns information about all of your database snapshots in Amazon
%% Lightsail.
get_relational_database_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_database_snapshots(Client, Input, []).
get_relational_database_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabaseSnapshots">>, Input, Options).

%% @doc Returns information about all of your databases in Amazon Lightsail.
get_relational_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relational_databases(Client, Input, []).
get_relational_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationalDatabases">>, Input, Options).

%% @doc Returns information about a specific static IP.
get_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_static_ip(Client, Input, []).
get_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStaticIp">>, Input, Options).

%% @doc Returns information about all static IPs in the user's account.
get_static_ips(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_static_ips(Client, Input, []).
get_static_ips(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStaticIps">>, Input, Options).

%% @doc Imports a public SSH key from a specific key pair.
import_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key_pair(Client, Input, []).
import_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKeyPair">>, Input, Options).

%% @doc Returns a Boolean value indicating whether your Lightsail VPC is
%% peered.
is_vpc_peered(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_vpc_peered(Client, Input, []).
is_vpc_peered(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsVpcPeered">>, Input, Options).

%% @doc Opens ports for a specific Amazon Lightsail instance, and specifies
%% the IP addresses allowed to connect to the instance through the ports, and
%% the protocol.
%%
%% The <code>OpenInstancePublicPorts</code> action supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instanceName</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
open_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    open_instance_public_ports(Client, Input, []).
open_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OpenInstancePublicPorts">>, Input, Options).

%% @doc Tries to peer the Lightsail VPC with the user's default VPC.
peer_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    peer_vpc(Client, Input, []).
peer_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PeerVpc">>, Input, Options).

%% @doc Creates or updates an alarm, and associates it with the specified
%% metric.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric condition is met, the alarm can notify you by email, SMS
%% text message, and a banner displayed on the Amazon Lightsail console. For
%% more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms">Alarms
%% in Amazon Lightsail</a>.
%%
%% When this action creates an alarm, the alarm state is immediately set to
%% <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state
%% is set appropriately. Any actions associated with the new state are then
%% executed.
%%
%% When you update an existing alarm, its state is left unchanged, but the
%% update completely overwrites the previous configuration of the alarm. The
%% alarm is then evaluated with the updated configuration.
put_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_alarm(Client, Input, []).
put_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAlarm">>, Input, Options).

%% @doc Opens ports for a specific Amazon Lightsail instance, and specifies
%% the IP addresses allowed to connect to the instance through the ports, and
%% the protocol. This action also closes all currently open ports that are
%% not included in the request. Include all of the ports and the protocols
%% you want to open in your <code>PutInstancePublicPorts</code>request. Or
%% use the <code>OpenInstancePublicPorts</code> action to open ports without
%% closing currently open ports.
%%
%% The <code>PutInstancePublicPorts</code> action supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instanceName</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
put_instance_public_ports(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_instance_public_ports(Client, Input, []).
put_instance_public_ports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutInstancePublicPorts">>, Input, Options).

%% @doc Restarts a specific instance.
%%
%% The <code>reboot instance</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instance name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
reboot_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instance(Client, Input, []).
reboot_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstance">>, Input, Options).

%% @doc Restarts a specific database in Amazon Lightsail.
%%
%% The <code>reboot relational database</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
reboot_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_relational_database(Client, Input, []).
reboot_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootRelationalDatabase">>, Input, Options).

%% @doc Deletes a specific static IP from your account.
release_static_ip(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_static_ip(Client, Input, []).
release_static_ip(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseStaticIp">>, Input, Options).

%% @doc Deletes currently cached content from your Amazon Lightsail content
%% delivery network (CDN) distribution.
%%
%% After resetting the cache, the next time a content request is made, your
%% distribution pulls, serves, and caches it from the origin.
reset_distribution_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_distribution_cache(Client, Input, []).
reset_distribution_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetDistributionCache">>, Input, Options).

%% @doc Sends a verification request to an email contact method to ensure
%% it's owned by the requester. SMS contact methods don't need to be
%% verified.
%%
%% A contact method is used to send you notifications about your Amazon
%% Lightsail resources. You can add one email address and one mobile phone
%% number contact method in each AWS Region. However, SMS text messaging is
%% not supported in some AWS Regions, and SMS text messages cannot be sent to
%% some countries/regions. For more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications">Notifications
%% in Amazon Lightsail</a>.
%%
%% A verification request is sent to the contact method when you initially
%% create it. Use this action to send another verification request if a
%% previous verification request was deleted, or has expired.
%%
%% <important> Notifications are not sent to an email contact method until
%% after it is verified, and confirmed as valid.
%%
%% </important>
send_contact_method_verification(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_contact_method_verification(Client, Input, []).
send_contact_method_verification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendContactMethodVerification">>, Input, Options).

%% @doc Starts a specific Amazon Lightsail instance from a stopped state. To
%% restart an instance, use the <code>reboot instance</code> operation.
%%
%% <note> When you start a stopped instance, Lightsail assigns a new public
%% IP address to the instance. To use the same IP address after stopping and
%% starting an instance, create a static IP address and attach it to the
%% instance. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip">Lightsail
%% Dev Guide</a>.
%%
%% </note> The <code>start instance</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% <code>instance name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
start_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instance(Client, Input, []).
start_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstance">>, Input, Options).

%% @doc Starts a specific database from a stopped state in Amazon Lightsail.
%% To restart a database, use the <code>reboot relational database</code>
%% operation.
%%
%% The <code>start relational database</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
start_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_relational_database(Client, Input, []).
start_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRelationalDatabase">>, Input, Options).

%% @doc Stops a specific Amazon Lightsail instance that is currently running.
%%
%% <note> When you start a stopped instance, Lightsail assigns a new public
%% IP address to the instance. To use the same IP address after stopping and
%% starting an instance, create a static IP address and attach it to the
%% instance. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip">Lightsail
%% Dev Guide</a>.
%%
%% </note> The <code>stop instance</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>instance name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
stop_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instance(Client, Input, []).
stop_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstance">>, Input, Options).

%% @doc Stops a specific database that is currently running in Amazon
%% Lightsail.
%%
%% The <code>stop relational database</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
stop_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_relational_database(Client, Input, []).
stop_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRelationalDatabase">>, Input, Options).

%% @doc Adds one or more tags to the specified Amazon Lightsail resource.
%% Each resource can have a maximum of 50 tags. Each tag consists of a key
%% and an optional value. Tag keys must be unique per resource. For more
%% information about tags, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags">Lightsail
%% Dev Guide</a>.
%%
%% The <code>tag resource</code> operation supports tag-based access control
%% via request tags and resource tags applied to the resource identified by
%% <code>resource name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests an alarm by displaying a banner on the Amazon Lightsail
%% console. If a notification trigger is configured for the specified alarm,
%% the test also sends a notification to the notification protocol
%% (<code>Email</code> and/or <code>SMS</code>) configured for the alarm.
%%
%% An alarm is used to monitor a single metric for one of your resources.
%% When a metric condition is met, the alarm can notify you by email, SMS
%% text message, and a banner displayed on the Amazon Lightsail console. For
%% more information, see <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms">Alarms
%% in Amazon Lightsail</a>.
test_alarm(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_alarm(Client, Input, []).
test_alarm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestAlarm">>, Input, Options).

%% @doc Attempts to unpeer the Lightsail VPC from the user's default VPC.
unpeer_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    unpeer_vpc(Client, Input, []).
unpeer_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnpeerVpc">>, Input, Options).

%% @doc Deletes the specified set of tag keys and their values from the
%% specified Amazon Lightsail resource.
%%
%% The <code>untag resource</code> operation supports tag-based access
%% control via request tags and resource tags applied to the resource
%% identified by <code>resource name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing Amazon Lightsail content delivery network (CDN)
%% distribution.
%%
%% Use this action to update the configuration of your existing distribution
update_distribution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_distribution(Client, Input, []).
update_distribution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDistribution">>, Input, Options).

%% @doc Updates the bundle of your Amazon Lightsail content delivery network
%% (CDN) distribution.
%%
%% A distribution bundle specifies the monthly network transfer quota and
%% monthly cost of your dsitribution.
%%
%% Update your distribution's bundle if your distribution is going over its
%% monthly network transfer quota and is incurring an overage fee.
%%
%% You can update your distribution's bundle only one time within your
%% monthly AWS billing cycle. To determine if you can update your
%% distribution's bundle, use the <code>GetDistributions</code> action. The
%% <code>ableToUpdateBundle</code> parameter in the result will indicate
%% whether you can currently update your distribution's bundle.
update_distribution_bundle(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_distribution_bundle(Client, Input, []).
update_distribution_bundle(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDistributionBundle">>, Input, Options).

%% @doc Updates a domain recordset after it is created.
%%
%% The <code>update domain entry</code> operation supports tag-based access
%% control via resource tags applied to the resource identified by
%% <code>domain name</code>. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
update_domain_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_entry(Client, Input, []).
update_domain_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainEntry">>, Input, Options).

%% @doc Updates the specified attribute for a load balancer. You can only
%% update one attribute at a time.
%%
%% The <code>update load balancer attribute</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by <code>load balancer name</code>. For more information, see
%% the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
update_load_balancer_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_load_balancer_attribute(Client, Input, []).
update_load_balancer_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLoadBalancerAttribute">>, Input, Options).

%% @doc Allows the update of one or more attributes of a database in Amazon
%% Lightsail.
%%
%% Updates are applied immediately, or in cases where the updates could
%% result in an outage, are applied during the database's predefined
%% maintenance window.
%%
%% The <code>update relational database</code> operation supports tag-based
%% access control via resource tags applied to the resource identified by
%% relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
update_relational_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relational_database(Client, Input, []).
update_relational_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelationalDatabase">>, Input, Options).

%% @doc Allows the update of one or more parameters of a database in Amazon
%% Lightsail.
%%
%% Parameter updates don't cause outages; therefore, their application is not
%% subject to the preferred maintenance window. However, there are two ways
%% in which parameter updates are applied: <code>dynamic</code> or
%% <code>pending-reboot</code>. Parameters marked with a <code>dynamic</code>
%% apply type are applied immediately. Parameters marked with a
%% <code>pending-reboot</code> apply type are applied only after the database
%% is rebooted using the <code>reboot relational database</code> operation.
%%
%% The <code>update relational database parameters</code> operation supports
%% tag-based access control via resource tags applied to the resource
%% identified by relationalDatabaseName. For more information, see the <a
%% href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail
%% Dev Guide</a>.
update_relational_database_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relational_database_parameters(Client, Input, []).
update_relational_database_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelationalDatabaseParameters">>, Input, Options).

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
    Client1 = Client#{service => <<"lightsail">>},
    Host = get_host(<<"lightsail">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"Lightsail_20161128.">>/binary, Action/binary>>}
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
    {error, Error, {StatusCode, ResponseHeaders, Client}};
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
