// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:delivery_challenge/src/core/utils/data_state.dart';
import 'package:delivery_challenge/src/data/models/api_response_model.dart';
import 'package:delivery_challenge/src/data/repositories/parsing_power.dart';

import '../../core/error/app_exception.dart';
import '../remote/dio_api_service.dart';
import 'interfaces/i_remote_repository.dart';

class AppRepositoryImp<T> extends IRemoteRepository<T> {
  final DioApiService dioApiService;
  AppRepositoryImp({
    required this.dioApiService,
  });

  @override
  Future<DataState<ApiResponseModel<T>>> getSingleData(apiInfo) async {
    try {
      final response = await dioApiService.action(query: apiInfo);
      final responseModel = parseApiResponse<T>(response.data);

      return DataState<ApiResponseModel<T>>.success(responseModel);
    } on AppException catch (error) {
      return DataState.failure(AppException(error).handleError);
    } catch (error) {
      return DataState.failure(AppException(error).handleError);
    }
  }
}
