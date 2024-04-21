// Package imports:
import 'package:delivery_challenge/src/core/services/language_manager.dart';
import 'package:dio/dio.dart';

class DataInterceptor extends Interceptor {
  DataInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final personalData = {
      'P_LANG_NO': LanguageManager.getLocal!.languageCode == 'ar' ? '1' : '2',
    };
    options.data.addAll(personalData);
    options.data = {'Value': options.data};
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
