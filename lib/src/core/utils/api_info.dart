
import 'package:delivery_challenge/src/core/utils/enums.dart';

class ApiInfo {
  final String endpoint;
  final Map<String, dynamic>? body;
  final ApiRequestType requestType;

  const ApiInfo({
    required this.endpoint,
    this.body,
    required this.requestType,
  });

  ApiInfo copyWith({
    String? endpoint,
    Map<String, dynamic>? body,
    ApiRequestType? requestType,
  }) {
    return ApiInfo(
      endpoint: endpoint ?? this.endpoint,
      body: body ?? this.body,
      requestType: requestType ?? this.requestType,
    );
  }

  @override
  String toString() => 'ApiInfo(endpoint: $endpoint, body: $body, requestType: $requestType)';
}
