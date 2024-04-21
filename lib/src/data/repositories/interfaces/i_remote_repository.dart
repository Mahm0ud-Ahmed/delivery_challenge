import 'package:delivery_challenge/src/core/utils/api_info.dart';
import 'package:delivery_challenge/src/core/utils/data_state.dart';
import 'package:delivery_challenge/src/data/models/api_response_model.dart';

abstract class IRemoteRepository<T> {
  Future<DataState<ApiResponseModel<T>>> getSingleData(ApiInfo apiInfo);
}
