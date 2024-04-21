// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(percent) => "${percent} LE";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alert_dialog_apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("choose Language"),
        "app_name": MessageLookupByLibrary.simpleMessage("Delivery Challenge"),
        "bad_certificate_message": MessageLookupByLibrary.simpleMessage(
            "Certificate verification failed. Please make sure you\'re connected to a secure network and try again"),
        "bad_gateway_502_message": MessageLookupByLibrary.simpleMessage(
            "The server acting as a gateway or proxy received an invalid response from the upstream server"),
        "cancel_error_message":
            MessageLookupByLibrary.simpleMessage("Request has been canceled"),
        "check_connection_message": MessageLookupByLibrary.simpleMessage(
            "Check your internet connection"),
        "client_closed_request_499_message": MessageLookupByLibrary.simpleMessage(
            "he client has closed the request before the server could send a response"),
        "conflict_409_message": MessageLookupByLibrary.simpleMessage(
            "The request could not be completed due to a conflict with the current state of the resource"),
        "connect_timeout_message": MessageLookupByLibrary.simpleMessage(
            "Connection timed out. Please check your internet connection and try again"),
        "connection_closed_without_response_444_message":
            MessageLookupByLibrary.simpleMessage(
                "The server has closed the connection without sending any response"),
        "connection_error_message": MessageLookupByLibrary.simpleMessage(
            "Unable to establish a connection. Please check your internet connection and try again"),
        "continue_100_message":
            MessageLookupByLibrary.simpleMessage("Continue with request"),
        "error_occurred_while_processing_the_data_received_from_the_server_message":
            MessageLookupByLibrary.simpleMessage(
                "An error occurred while processing the data received from the server, as expected in the application"),
        "expectation_failed_417_message": MessageLookupByLibrary.simpleMessage(
            "The server cannot meet the requirements of the Expect header field"),
        "failed_dependency_424_message": MessageLookupByLibrary.simpleMessage(
            "The server encountered a failure while attempting to fulfill the request"),
        "forbidden_403_message": MessageLookupByLibrary.simpleMessage(
            "The server refuses to authorize the request"),
        "found_302_message":
            MessageLookupByLibrary.simpleMessage("Resource temporarily moved"),
        "gateway_timeout_504_message": MessageLookupByLibrary.simpleMessage(
            "The server acting as a gateway or proxy timed out waiting for a response from the upstream server"),
        "gone_410_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource is no longer available and has been permanently removed"),
        "home_page_date": MessageLookupByLibrary.simpleMessage("Date"),
        "home_page_details":
            MessageLookupByLibrary.simpleMessage("Order Details"),
        "home_page_status": MessageLookupByLibrary.simpleMessage("Status"),
        "home_page_tab_bar_new": MessageLookupByLibrary.simpleMessage("New"),
        "home_page_tab_bar_others":
            MessageLookupByLibrary.simpleMessage("Others"),
        "home_page_total_price":
            MessageLookupByLibrary.simpleMessage("Total Price"),
        "http_version_not_supported_505_message":
            MessageLookupByLibrary.simpleMessage(
                "The requested HTTP version is not supported by the server"),
        "insufficient_storage_507_message": MessageLookupByLibrary.simpleMessage(
            "The server is unable to store the representation needed to complete the request"),
        "internal_server_error_500_message":
            MessageLookupByLibrary.simpleMessage(
                "The server encountered an error while processing the request"),
        "length_required_411_message": MessageLookupByLibrary.simpleMessage(
            "The request did not specify the length of its content, which is required by the requested resource"),
        "locked_423_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource is locked and may not be modified"),
        "login_page_headline":
            MessageLookupByLibrary.simpleMessage("Welcome back!"),
        "login_page_login_button":
            MessageLookupByLibrary.simpleMessage("Log in"),
        "login_page_password_error":
            MessageLookupByLibrary.simpleMessage("Password is required"),
        "login_page_password_placeholder":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_page_show_more":
            MessageLookupByLibrary.simpleMessage("Show More"),
        "login_page_sub_headline":
            MessageLookupByLibrary.simpleMessage("Log back into your account"),
        "login_page_user_id_error":
            MessageLookupByLibrary.simpleMessage("User ID is required"),
        "login_page_user_id_placeholder":
            MessageLookupByLibrary.simpleMessage("User ID"),
        "loop_detected_508_message": MessageLookupByLibrary.simpleMessage(
            "The server has detected a loop in the request processing chain, which could indicate a misconfiguration"),
        "method_not_allowed_405_message": MessageLookupByLibrary.simpleMessage(
            "The requested method is not allowed for the specified resource"),
        "misdirected_request_421_message": MessageLookupByLibrary.simpleMessage(
            "The server was unable to resolve the provided hostname"),
        "moved_permanently_301_message":
            MessageLookupByLibrary.simpleMessage("Resource permanently moved"),
        "multiple_choices_300_message":
            MessageLookupByLibrary.simpleMessage("Multiple choices available"),
        "network_authentication_required_511_message":
            MessageLookupByLibrary.simpleMessage(
                "The client needs to authenticate to gain network access"),
        "network_connect_timeout_error_599_message":
            MessageLookupByLibrary.simpleMessage(
                "The request has timed out while connecting to the server. Please check your network connection and try again"),
        "no_item_found_subtitle": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any orders in your history."),
        "no_item_found_title":
            MessageLookupByLibrary.simpleMessage("No orders yet"),
        "not_acceptable_406_message": MessageLookupByLibrary.simpleMessage(
            "The server cannot produce a response matching the list of acceptable values defined in the request\'s headers"),
        "not_extended_510_message": MessageLookupByLibrary.simpleMessage(
            "Further extensions to the request are required for the server to fulfill it"),
        "not_found_404_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource could not be found on the server"),
        "not_implemented_error_501_message": MessageLookupByLibrary.simpleMessage(
            "The server does not support the functionality required to fulfill the request"),
        "not_modified_304_message": MessageLookupByLibrary.simpleMessage(
            "The resource has not been modified since the last request"),
        "partial_content_206_message":
            MessageLookupByLibrary.simpleMessage("Partial content provided"),
        "payment_required_402_message": MessageLookupByLibrary.simpleMessage(
            "Payment is required to complete this action. Please make sure your payment information is up to date and try again"),
        "permanent_redirect_308_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource has been permanently moved to a different URI"),
        "precondition_failed_412_message": MessageLookupByLibrary.simpleMessage(
            "The server does not meet one of the preconditions that the requester put on the request"),
        "precondition_required_428_message":
            MessageLookupByLibrary.simpleMessage(
                "The server requires the request to be conditional"),
        "price_order": m0,
        "processing_102_message":
            MessageLookupByLibrary.simpleMessage("Processing request"),
        "proxy_authentication_required_407_message":
            MessageLookupByLibrary.simpleMessage(
                "The client must first authenticate itself with the proxy"),
        "receive_timeout_message": MessageLookupByLibrary.simpleMessage(
            "Receiving response timed out. Please try again"),
        "requestEntity_tooLarge_413_message": MessageLookupByLibrary.simpleMessage(
            "The request is larger than the server is willing or able to process"),
        "requestUri_tooLong_414_message": MessageLookupByLibrary.simpleMessage(
            "The URI provided in the request is too long for the server to process"),
        "request_header_fields_too_large_431_message":
            MessageLookupByLibrary.simpleMessage(
                "The server is unwilling to process the request because its header fields are too large"),
        "request_timeout_408_message": MessageLookupByLibrary.simpleMessage(
            "The server timed out waiting for the request"),
        "requested_range_not_satisfiable_416_message":
            MessageLookupByLibrary.simpleMessage(
                "The requested range cannot be provided by the server"),
        "reset_content_205_message": MessageLookupByLibrary.simpleMessage(
            "Request successful, document reset"),
        "see_other_303_message": MessageLookupByLibrary.simpleMessage(
            "Response found under different URI"),
        "send_timeout_message": MessageLookupByLibrary.simpleMessage(
            " Sending request timed out. Please try again"),
        "service_unavailable_503_message": MessageLookupByLibrary.simpleMessage(
            "The server is currently unavailable"),
        "switching_protocols_101_message":
            MessageLookupByLibrary.simpleMessage("Switching protocols"),
        "temporary_redirect_307_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource is temporarily available at a different URI"),
        "too_many_requests_429_message": MessageLookupByLibrary.simpleMessage(
            "The user has sent too many requests in a given amount of time"),
        "unauthorized_401_message": MessageLookupByLibrary.simpleMessage(
            "The request requires authentication or the user is not authorized to access the resource"),
        "unavailable_for_legal_reasons_451_message":
            MessageLookupByLibrary.simpleMessage(
                "The server is denying access to the resource as a consequence of a legal demand"),
        "unknown_error_message": MessageLookupByLibrary.simpleMessage(
            "An unknown error has occurred. Please try again later"),
        "unprocessable_entity_422_message": MessageLookupByLibrary.simpleMessage(
            "The request was well-formed but was unable to be followed due to semantic errors"),
        "unsupported_media_type_415_message": MessageLookupByLibrary.simpleMessage(
            "The server does not support the media type transmitted in the request"),
        "upgrade_required_426_message": MessageLookupByLibrary.simpleMessage(
            "The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field"),
        "use_proxy_305_message": MessageLookupByLibrary.simpleMessage(
            "The requested resource must be accessed through the proxy specified in the Location header"),
        "variant_also_negotiates_506_message": MessageLookupByLibrary.simpleMessage(
            "The server has detected an infinite loop while processing the request")
      };
}
