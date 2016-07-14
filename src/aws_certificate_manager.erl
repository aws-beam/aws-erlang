%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Certificate Manager</fullname>
%%
%% Welcome to the AWS Certificate Manager (ACM) Command Reference. This guide
%% provides descriptions, syntax, and usage examples for each ACM command.
%% You can use AWS Certificate Manager to request ACM Certificates for your
%% AWS-based websites and applications. For general information about using
%% ACM and for more information about using the console, see the <a
%% href="http://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">AWS
%% Certificate Manager User Guide</a>. For more information about using the
%% ACM API, see the <a
%% href="http://docs.aws.amazon.com/acm/latest/APIReference/Welcome.html">AWS
%% Certificate Manager API Reference</a>.
-module(aws_certificate_manager).

-export([add_tags_to_certificate/2,
         add_tags_to_certificate/3,
         delete_certificate/2,
         delete_certificate/3,
         describe_certificate/2,
         describe_certificate/3,
         get_certificate/2,
         get_certificate/3,
         list_certificates/2,
         list_certificates/3,
         list_tags_for_certificate/2,
         list_tags_for_certificate/3,
         remove_tags_from_certificate/2,
         remove_tags_from_certificate/3,
         request_certificate/2,
         request_certificate/3,
         resend_validation_email/2,
         resend_validation_email/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an ACM Certificate. Tags are labels that you
%% can use to identify and organize your AWS resources. Each tag consists of
%% a <code>key</code> and an optional <code>value</code>. You specify the
%% certificate on input by its Amazon Resource Name (ARN). You specify the
%% tag by using a key-value pair.
%%
%% You can apply a tag to just one certificate if you want to identify a
%% specific characteristic of that certificate, or you can apply the same tag
%% to multiple certificates if you want to filter for a common relationship
%% among those certificates. Similarly, you can apply the same tag to
%% multiple resources if you want to specify a relationship among those
%% resources. For example, you can add the same tag to an ACM Certificate and
%% an Elastic Load Balancing load balancer to indicate that they are both
%% used by the same website. For more information, see <a
%% href="http://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging
%% ACM Certificates</a>.
%%
%% To remove one or more tags, use the <a>RemoveTagsFromCertificate</a>
%% action. To view all of the tags that have been applied to the certificate,
%% use the <a>ListTagsForCertificate</a> action.
add_tags_to_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_certificate(Client, Input, []).
add_tags_to_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToCertificate">>, Input, Options).

%% @doc Deletes an ACM Certificate and its associated private key. If this
%% action succeeds, the certificate no longer appears in the list of ACM
%% Certificates that can be displayed by calling the <a>ListCertificates</a>
%% action or be retrieved by calling the <a>GetCertificate</a> action. The
%% certificate will not be available for use by other AWS services.
%%
%% <note> You cannot delete an ACM Certificate that is being used by another
%% AWS service. To delete a certificate that is in use, the certificate
%% association must first be removed.
%%
%% </note>
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Returns a list of the fields contained in the specified ACM
%% Certificate. For example, this action returns the certificate status, a
%% flag that indicates whether the certificate is associated with any other
%% AWS service, and the date at which the certificate request was created.
%% You specify the ACM Certificate on input by its Amazon Resource Name
%% (ARN).
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Retrieves an ACM Certificate and certificate chain for the
%% certificate specified by an ARN. The chain is an ordered list of
%% certificates that contains the root certificate, intermediate certificates
%% of subordinate CAs, and the ACM Certificate. The certificate and
%% certificate chain are base64 encoded. If you want to decode the
%% certificate chain to see the individual certificate fields, you can use
%% OpenSSL.
%%
%% <note> Currently, ACM Certificates can be used only with Elastic Load
%% Balancing and Amazon CloudFront.
%%
%% </note>
get_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate(Client, Input, []).
get_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificate">>, Input, Options).

%% @doc Retrieves a list of ACM Certificates and the domain name for each.
%% You can optionally filter the list to return only the certificates that
%% match the specified status.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the tags that have been applied to the ACM Certificate. Use the
%% certificate ARN to specify the certificate. To add a tag to an ACM
%% Certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag,
%% use the <a>RemoveTagsFromCertificate</a> action.
list_tags_for_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_certificate(Client, Input, []).
list_tags_for_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForCertificate">>, Input, Options).

%% @doc Remove one or more tags from an ACM Certificate. A tag consists of a
%% key-value pair. If you do not specify the value portion of the tag when
%% calling this function, the tag will be removed regardless of value. If you
%% specify a value, the tag is removed only if it is associated with the
%% specified value.
%%
%% To add tags to a certificate, use the <a>AddTagsToCertificate</a> action.
%% To view all of the tags that have been applied to a specific ACM
%% Certificate, use the <a>ListTagsForCertificate</a> action.
remove_tags_from_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_certificate(Client, Input, []).
remove_tags_from_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromCertificate">>, Input, Options).

%% @doc Requests an ACM Certificate for use with other AWS services. To
%% request an ACM Certificate, you must specify the fully qualified domain
%% name (FQDN) for your site. You can also specify additional FQDNs if users
%% can reach your site by using other names. For each domain name you
%% specify, email is sent to the domain owner to request approval to issue
%% the certificate. After receiving approval from the domain owner, the ACM
%% Certificate is issued. For more information, see the <a
%% href="http://docs.aws.amazon.com/acm/latest/userguide/overview.html">AWS
%% Certificate Manager User Guide </a>.
request_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_certificate(Client, Input, []).
request_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCertificate">>, Input, Options).

%% @doc Resends the email that requests domain ownership validation. The
%% domain owner or an authorized representative must approve the ACM
%% Certificate before it can be issued. The certificate can be approved by
%% clicking a link in the mail to navigate to the Amazon certificate approval
%% website and then clicking <b>I Approve</b>. However, the validation email
%% can be blocked by spam filters. Therefore, if you do not receive the
%% original mail, you can request that the mail be resent within 72 hours of
%% requesting the ACM Certificate. If more than 72 hours have elapsed since
%% your original request or since your last attempt to resend validation
%% mail, you must request a new certificate.
resend_validation_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_validation_email(Client, Input, []).
resend_validation_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendValidationEmail">>, Input, Options).

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
    Client1 = Client#{service => <<"acm">>},
    Host = get_host(<<"acm">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CertificateManager.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
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
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
