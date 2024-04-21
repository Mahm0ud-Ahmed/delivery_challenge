import '../models/api_response_model.dart';
import 'model_type.dart';

ApiResponseModel<T> parseApiResponse<T>(dynamic response) {
  return ApiResponseModel<T>.fromJson(
    response,
    (json) => parseModel<T>(json),
  );
}

T parseModel<T>(dynamic json) => ModelType.getParseData<T>(json);
