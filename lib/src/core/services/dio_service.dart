// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:dio/dio.dart';
import 'package:delivery_challenge/src/core/utils/constant.dart';

// Project imports:
import '../utils/app_logger.dart';
import '../utils/interceptors/data_interceptor.dart';
import '../utils/interceptors/log_interceptor.dart' as interceptor;
import 'service_interface.dart';

class DioService implements ServiceInterface {
  late final Dio dio;
  static late BaseOptions baseOptions;

  @override
  String get name => "Dio Service";

  @override
  Future<void> initializeService() async {
    dio = Dio(initBaseOptions());
    dio.interceptors.addAll([
      DataInterceptor(),
      interceptor.LogInterceptor(),
    ]);
    AppLogger.logDebug('$name Success initialization');
  }

  static BaseOptions initBaseOptions() {
    Map<String, dynamic> headers = {
      'accept': 'application/json',
    };
    baseOptions = BaseOptions(
      baseUrl: kBaseUrl,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 30),
      sendTimeout: const Duration(minutes: 15),
      receiveDataWhenStatusError: true,
      contentType: "application/json",
      headers: headers,
    );
    return baseOptions;
  }

  // singleton
  DioService.init();
  static DioService? _instance;
  factory DioService() => _instance ??= DioService.init();
}
