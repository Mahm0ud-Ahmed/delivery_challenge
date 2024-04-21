// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../app_logger.dart';

class LogInterceptor extends Interceptor {
  LogInterceptor({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = false,
    this.responseHeader = true,
    this.responseBody = false,
    this.error = true,
    this.logPrint = print,
  });

  /// Print request [Options]
  bool request;

  /// Print request header [Options.headers]
  bool requestHeader;

  /// Print request data [Options.data]
  bool requestBody;

  /// Print [Response.data]
  bool responseBody;

  /// Print [Response.headers]
  bool responseHeader;

  /// Print error message
  bool error;

  void Function(Object object) logPrint;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // CustomLogger.logDebug('*** Request ***');
    String info = '${options.method} | ${options.uri}';
    info += '\nRequest Headers: ${options.headers}\n';
    info += options.data.toString();
    AppLogger.logVerbose(info);

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    AppLogger.logInfo('Api Path: ${response.requestOptions.uri} \nApi Response: $response');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    AppLogger.logError('DioError | ${err.requestOptions.uri}\nError | $err\nErrorResponse | ${err.response}');

    handler.next(err);
  }
}
