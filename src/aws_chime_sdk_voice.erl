%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_chime_sdk_voice).

-export([associate_phone_numbers_with_voice_connector/3,
         associate_phone_numbers_with_voice_connector/4,
         associate_phone_numbers_with_voice_connector_group/3,
         associate_phone_numbers_with_voice_connector_group/4,
         batch_delete_phone_number/2,
         batch_delete_phone_number/3,
         batch_update_phone_number/2,
         batch_update_phone_number/3,
         create_phone_number_order/2,
         create_phone_number_order/3,
         create_proxy_session/3,
         create_proxy_session/4,
         create_sip_media_application/2,
         create_sip_media_application/3,
         create_sip_media_application_call/3,
         create_sip_media_application_call/4,
         create_sip_rule/2,
         create_sip_rule/3,
         create_voice_connector/2,
         create_voice_connector/3,
         create_voice_connector_group/2,
         create_voice_connector_group/3,
         delete_phone_number/3,
         delete_phone_number/4,
         delete_proxy_session/4,
         delete_proxy_session/5,
         delete_sip_media_application/3,
         delete_sip_media_application/4,
         delete_sip_rule/3,
         delete_sip_rule/4,
         delete_voice_connector/3,
         delete_voice_connector/4,
         delete_voice_connector_emergency_calling_configuration/3,
         delete_voice_connector_emergency_calling_configuration/4,
         delete_voice_connector_group/3,
         delete_voice_connector_group/4,
         delete_voice_connector_origination/3,
         delete_voice_connector_origination/4,
         delete_voice_connector_proxy/3,
         delete_voice_connector_proxy/4,
         delete_voice_connector_streaming_configuration/3,
         delete_voice_connector_streaming_configuration/4,
         delete_voice_connector_termination/3,
         delete_voice_connector_termination/4,
         delete_voice_connector_termination_credentials/3,
         delete_voice_connector_termination_credentials/4,
         disassociate_phone_numbers_from_voice_connector/3,
         disassociate_phone_numbers_from_voice_connector/4,
         disassociate_phone_numbers_from_voice_connector_group/3,
         disassociate_phone_numbers_from_voice_connector_group/4,
         get_global_settings/1,
         get_global_settings/3,
         get_global_settings/4,
         get_phone_number/2,
         get_phone_number/4,
         get_phone_number/5,
         get_phone_number_order/2,
         get_phone_number_order/4,
         get_phone_number_order/5,
         get_phone_number_settings/1,
         get_phone_number_settings/3,
         get_phone_number_settings/4,
         get_proxy_session/3,
         get_proxy_session/5,
         get_proxy_session/6,
         get_sip_media_application/2,
         get_sip_media_application/4,
         get_sip_media_application/5,
         get_sip_media_application_alexa_skill_configuration/2,
         get_sip_media_application_alexa_skill_configuration/4,
         get_sip_media_application_alexa_skill_configuration/5,
         get_sip_media_application_logging_configuration/2,
         get_sip_media_application_logging_configuration/4,
         get_sip_media_application_logging_configuration/5,
         get_sip_rule/2,
         get_sip_rule/4,
         get_sip_rule/5,
         get_voice_connector/2,
         get_voice_connector/4,
         get_voice_connector/5,
         get_voice_connector_emergency_calling_configuration/2,
         get_voice_connector_emergency_calling_configuration/4,
         get_voice_connector_emergency_calling_configuration/5,
         get_voice_connector_group/2,
         get_voice_connector_group/4,
         get_voice_connector_group/5,
         get_voice_connector_logging_configuration/2,
         get_voice_connector_logging_configuration/4,
         get_voice_connector_logging_configuration/5,
         get_voice_connector_origination/2,
         get_voice_connector_origination/4,
         get_voice_connector_origination/5,
         get_voice_connector_proxy/2,
         get_voice_connector_proxy/4,
         get_voice_connector_proxy/5,
         get_voice_connector_streaming_configuration/2,
         get_voice_connector_streaming_configuration/4,
         get_voice_connector_streaming_configuration/5,
         get_voice_connector_termination/2,
         get_voice_connector_termination/4,
         get_voice_connector_termination/5,
         get_voice_connector_termination_health/2,
         get_voice_connector_termination_health/4,
         get_voice_connector_termination_health/5,
         list_available_voice_connector_regions/1,
         list_available_voice_connector_regions/3,
         list_available_voice_connector_regions/4,
         list_phone_number_orders/1,
         list_phone_number_orders/3,
         list_phone_number_orders/4,
         list_phone_numbers/1,
         list_phone_numbers/3,
         list_phone_numbers/4,
         list_proxy_sessions/2,
         list_proxy_sessions/4,
         list_proxy_sessions/5,
         list_sip_media_applications/1,
         list_sip_media_applications/3,
         list_sip_media_applications/4,
         list_sip_rules/1,
         list_sip_rules/3,
         list_sip_rules/4,
         list_supported_phone_number_countries/2,
         list_supported_phone_number_countries/4,
         list_supported_phone_number_countries/5,
         list_voice_connector_groups/1,
         list_voice_connector_groups/3,
         list_voice_connector_groups/4,
         list_voice_connector_termination_credentials/2,
         list_voice_connector_termination_credentials/4,
         list_voice_connector_termination_credentials/5,
         list_voice_connectors/1,
         list_voice_connectors/3,
         list_voice_connectors/4,
         put_sip_media_application_alexa_skill_configuration/3,
         put_sip_media_application_alexa_skill_configuration/4,
         put_sip_media_application_logging_configuration/3,
         put_sip_media_application_logging_configuration/4,
         put_voice_connector_emergency_calling_configuration/3,
         put_voice_connector_emergency_calling_configuration/4,
         put_voice_connector_logging_configuration/3,
         put_voice_connector_logging_configuration/4,
         put_voice_connector_origination/3,
         put_voice_connector_origination/4,
         put_voice_connector_proxy/3,
         put_voice_connector_proxy/4,
         put_voice_connector_streaming_configuration/3,
         put_voice_connector_streaming_configuration/4,
         put_voice_connector_termination/3,
         put_voice_connector_termination/4,
         put_voice_connector_termination_credentials/3,
         put_voice_connector_termination_credentials/4,
         restore_phone_number/3,
         restore_phone_number/4,
         search_available_phone_numbers/1,
         search_available_phone_numbers/3,
         search_available_phone_numbers/4,
         update_global_settings/2,
         update_global_settings/3,
         update_phone_number/3,
         update_phone_number/4,
         update_phone_number_settings/2,
         update_phone_number_settings/3,
         update_proxy_session/4,
         update_proxy_session/5,
         update_sip_media_application/3,
         update_sip_media_application/4,
         update_sip_media_application_call/4,
         update_sip_media_application_call/5,
         update_sip_rule/3,
         update_sip_rule/4,
         update_voice_connector/3,
         update_voice_connector/4,
         update_voice_connector_group/3,
         update_voice_connector_group/4,
         validate_e911_address/2,
         validate_e911_address/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================


associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input) ->
    associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input, []).
associate_phone_numbers_with_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,
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


associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
associate_phone_numbers_with_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=associate-phone-numbers"],
    SuccessStatusCode = 200,
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


batch_delete_phone_number(Client, Input) ->
    batch_delete_phone_number(Client, Input, []).
batch_delete_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-delete"],
    SuccessStatusCode = 200,
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


batch_update_phone_number(Client, Input) ->
    batch_update_phone_number(Client, Input, []).
batch_update_phone_number(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers?operation=batch-update"],
    SuccessStatusCode = 200,
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


create_phone_number_order(Client, Input) ->
    create_phone_number_order(Client, Input, []).
create_phone_number_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 201,
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


create_proxy_session(Client, VoiceConnectorId, Input) ->
    create_proxy_session(Client, VoiceConnectorId, Input, []).
create_proxy_session(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 201,
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


create_sip_media_application(Client, Input) ->
    create_sip_media_application(Client, Input, []).
create_sip_media_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications"],
    SuccessStatusCode = 201,
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


create_sip_media_application_call(Client, SipMediaApplicationId, Input) ->
    create_sip_media_application_call(Client, SipMediaApplicationId, Input, []).
create_sip_media_application_call(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls"],
    SuccessStatusCode = 201,
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


create_sip_rule(Client, Input) ->
    create_sip_rule(Client, Input, []).
create_sip_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sip-rules"],
    SuccessStatusCode = 201,
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


create_voice_connector(Client, Input) ->
    create_voice_connector(Client, Input, []).
create_voice_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors"],
    SuccessStatusCode = 201,
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


create_voice_connector_group(Client, Input) ->
    create_voice_connector_group(Client, Input, []).
create_voice_connector_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 201,
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


delete_phone_number(Client, PhoneNumberId, Input) ->
    delete_phone_number(Client, PhoneNumberId, Input, []).
delete_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = delete,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 204,
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


delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
delete_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 204,
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


delete_sip_media_application(Client, SipMediaApplicationId, Input) ->
    delete_sip_media_application(Client, SipMediaApplicationId, Input, []).
delete_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 204,
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


delete_sip_rule(Client, SipRuleId, Input) ->
    delete_sip_rule(Client, SipRuleId, Input, []).
delete_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = delete,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 204,
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


delete_voice_connector(Client, VoiceConnectorId, Input) ->
    delete_voice_connector(Client, VoiceConnectorId, Input, []).
delete_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 204,
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


delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 204,
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


delete_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    delete_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
delete_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 204,
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


delete_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_origination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 204,
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


delete_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
delete_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 204,
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


delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
delete_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 204,
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


delete_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 204,
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


delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
delete_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=delete"],
    SuccessStatusCode = 204,
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


disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input) ->
    disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input, []).
disassociate_phone_numbers_from_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,
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


disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
disassociate_phone_numbers_from_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), "?operation=disassociate-phone-numbers"],
    SuccessStatusCode = 200,
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


get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, #{}, #{}).

get_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_settings(Client, QueryMap, HeadersMap, []).

get_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_phone_number(Client, PhoneNumberId)
  when is_map(Client) ->
    get_phone_number(Client, PhoneNumberId, #{}, #{}).

get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, []).

get_phone_number(Client, PhoneNumberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_phone_number_order(Client, PhoneNumberOrderId)
  when is_map(Client) ->
    get_phone_number_order(Client, PhoneNumberOrderId, #{}, #{}).

get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, []).

get_phone_number_order(Client, PhoneNumberOrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders/", aws_util:encode_uri(PhoneNumberOrderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_phone_number_settings(Client)
  when is_map(Client) ->
    get_phone_number_settings(Client, #{}, #{}).

get_phone_number_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_phone_number_settings(Client, QueryMap, HeadersMap, []).

get_phone_number_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_proxy_session(Client, ProxySessionId, VoiceConnectorId)
  when is_map(Client) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, #{}, #{}).

get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, []).

get_proxy_session(Client, ProxySessionId, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_sip_media_application(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application(Client, SipMediaApplicationId, #{}, #{}).

get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

get_sip_media_application(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, #{}, #{}).

get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

get_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/alexa-skill-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_sip_media_application_logging_configuration(Client, SipMediaApplicationId)
  when is_map(Client) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, #{}, #{}).

get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, []).

get_sip_media_application_logging_configuration(Client, SipMediaApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_sip_rule(Client, SipRuleId)
  when is_map(Client) ->
    get_sip_rule(Client, SipRuleId, #{}, #{}).

get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, []).

get_sip_rule(Client, SipRuleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_group(Client, VoiceConnectorGroupId)
  when is_map(Client) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, #{}, #{}).

get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, []).

get_voice_connector_group(Client, VoiceConnectorGroupId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_logging_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_logging_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_origination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_origination(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_origination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_proxy(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_proxy(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_streaming_configuration(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_streaming_configuration(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_termination(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_termination(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


get_voice_connector_termination_health(Client, VoiceConnectorId)
  when is_map(Client) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, #{}, #{}).

get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

get_voice_connector_termination_health(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/health"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_available_voice_connector_regions(Client)
  when is_map(Client) ->
    list_available_voice_connector_regions(Client, #{}, #{}).

list_available_voice_connector_regions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_available_voice_connector_regions(Client, QueryMap, HeadersMap, []).

list_available_voice_connector_regions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-regions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_phone_number_orders(Client)
  when is_map(Client) ->
    list_phone_number_orders(Client, #{}, #{}).

list_phone_number_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_number_orders(Client, QueryMap, HeadersMap, []).

list_phone_number_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-orders"],
    SuccessStatusCode = 200,
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


list_phone_numbers(Client)
  when is_map(Client) ->
    list_phone_numbers(Client, #{}, #{}).

list_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_phone_numbers(Client, QueryMap, HeadersMap, []).

list_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-numbers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"filter-name">>, maps:get(<<"filter-name">>, QueryMap, undefined)},
        {<<"filter-value">>, maps:get(<<"filter-value">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"product-type">>, maps:get(<<"product-type">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_proxy_sessions(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_proxy_sessions(Client, VoiceConnectorId, #{}, #{}).

list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

list_proxy_sessions(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_sip_media_applications(Client)
  when is_map(Client) ->
    list_sip_media_applications(Client, #{}, #{}).

list_sip_media_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_media_applications(Client, QueryMap, HeadersMap, []).

list_sip_media_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-media-applications"],
    SuccessStatusCode = 200,
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


list_sip_rules(Client)
  when is_map(Client) ->
    list_sip_rules(Client, #{}, #{}).

list_sip_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sip_rules(Client, QueryMap, HeadersMap, []).

list_sip_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sip-rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"sip-media-application">>, maps:get(<<"sip-media-application">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_supported_phone_number_countries(Client, ProductType)
  when is_map(Client) ->
    list_supported_phone_number_countries(Client, ProductType, #{}, #{}).

list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, []).

list_supported_phone_number_countries(Client, ProductType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/phone-number-countries"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"product-type">>, ProductType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_voice_connector_groups(Client)
  when is_map(Client) ->
    list_voice_connector_groups(Client, #{}, #{}).

list_voice_connector_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_groups(Client, QueryMap, HeadersMap, []).

list_voice_connector_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connector-groups"],
    SuccessStatusCode = 200,
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


list_voice_connector_termination_credentials(Client, VoiceConnectorId)
  when is_map(Client) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, #{}, #{}).

list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, []).

list_voice_connector_termination_credentials(Client, VoiceConnectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


list_voice_connectors(Client)
  when is_map(Client) ->
    list_voice_connectors(Client, #{}, #{}).

list_voice_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_voice_connectors(Client, QueryMap, HeadersMap, []).

list_voice_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/voice-connectors"],
    SuccessStatusCode = 200,
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


put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input, []).
put_sip_media_application_alexa_skill_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/alexa-skill-configuration"],
    SuccessStatusCode = 200,
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


put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input) ->
    put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input, []).
put_sip_media_application_logging_configuration(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/logging-configuration"],
    SuccessStatusCode = 200,
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


put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_emergency_calling_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/emergency-calling-configuration"],
    SuccessStatusCode = 200,
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


put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_logging_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/logging-configuration"],
    SuccessStatusCode = 200,
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


put_voice_connector_origination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_origination(Client, VoiceConnectorId, Input, []).
put_voice_connector_origination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/origination"],
    SuccessStatusCode = 200,
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


put_voice_connector_proxy(Client, VoiceConnectorId, Input) ->
    put_voice_connector_proxy(Client, VoiceConnectorId, Input, []).
put_voice_connector_proxy(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/programmable-numbers/proxy"],
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


put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input) ->
    put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input, []).
put_voice_connector_streaming_configuration(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/streaming-configuration"],
    SuccessStatusCode = 200,
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


put_voice_connector_termination(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination"],
    SuccessStatusCode = 200,
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


put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input) ->
    put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input, []).
put_voice_connector_termination_credentials(Client, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/termination/credentials?operation=put"],
    SuccessStatusCode = 204,
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


restore_phone_number(Client, PhoneNumberId, Input) ->
    restore_phone_number(Client, PhoneNumberId, Input, []).
restore_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), "?operation=restore"],
    SuccessStatusCode = 200,
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


search_available_phone_numbers(Client)
  when is_map(Client) ->
    search_available_phone_numbers(Client, #{}, #{}).

search_available_phone_numbers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_available_phone_numbers(Client, QueryMap, HeadersMap, []).

search_available_phone_numbers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/search?type=phone-numbers"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"area-code">>, maps:get(<<"area-code">>, QueryMap, undefined)},
        {<<"city">>, maps:get(<<"city">>, QueryMap, undefined)},
        {<<"country">>, maps:get(<<"country">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"phone-number-type">>, maps:get(<<"phone-number-type">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"toll-free-prefix">>, maps:get(<<"toll-free-prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).
update_global_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings"],
    SuccessStatusCode = 204,
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


update_phone_number(Client, PhoneNumberId, Input) ->
    update_phone_number(Client, PhoneNumberId, Input, []).
update_phone_number(Client, PhoneNumberId, Input0, Options0) ->
    Method = post,
    Path = ["/phone-numbers/", aws_util:encode_uri(PhoneNumberId), ""],
    SuccessStatusCode = 200,
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


update_phone_number_settings(Client, Input) ->
    update_phone_number_settings(Client, Input, []).
update_phone_number_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/settings/phone-number"],
    SuccessStatusCode = 204,
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


update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input) ->
    update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input, []).
update_proxy_session(Client, ProxySessionId, VoiceConnectorId, Input0, Options0) ->
    Method = post,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), "/proxy-sessions/", aws_util:encode_uri(ProxySessionId), ""],
    SuccessStatusCode = 201,
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


update_sip_media_application(Client, SipMediaApplicationId, Input) ->
    update_sip_media_application(Client, SipMediaApplicationId, Input, []).
update_sip_media_application(Client, SipMediaApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), ""],
    SuccessStatusCode = 200,
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


update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input) ->
    update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input, []).
update_sip_media_application_call(Client, SipMediaApplicationId, TransactionId, Input0, Options0) ->
    Method = post,
    Path = ["/sip-media-applications/", aws_util:encode_uri(SipMediaApplicationId), "/calls/", aws_util:encode_uri(TransactionId), ""],
    SuccessStatusCode = 202,
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


update_sip_rule(Client, SipRuleId, Input) ->
    update_sip_rule(Client, SipRuleId, Input, []).
update_sip_rule(Client, SipRuleId, Input0, Options0) ->
    Method = put,
    Path = ["/sip-rules/", aws_util:encode_uri(SipRuleId), ""],
    SuccessStatusCode = 202,
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


update_voice_connector(Client, VoiceConnectorId, Input) ->
    update_voice_connector(Client, VoiceConnectorId, Input, []).
update_voice_connector(Client, VoiceConnectorId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connectors/", aws_util:encode_uri(VoiceConnectorId), ""],
    SuccessStatusCode = 200,
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


update_voice_connector_group(Client, VoiceConnectorGroupId, Input) ->
    update_voice_connector_group(Client, VoiceConnectorGroupId, Input, []).
update_voice_connector_group(Client, VoiceConnectorGroupId, Input0, Options0) ->
    Method = put,
    Path = ["/voice-connector-groups/", aws_util:encode_uri(VoiceConnectorGroupId), ""],
    SuccessStatusCode = 202,
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


validate_e911_address(Client, Input) ->
    validate_e911_address(Client, Input, []).
validate_e911_address(Client, Input0, Options0) ->
    Method = post,
    Path = ["/emergency-calling/address"],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"voice-chime">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
