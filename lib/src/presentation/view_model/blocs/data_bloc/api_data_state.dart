// Package imports:
import 'package:delivery_challenge/src/data/models/api_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/error/error.dart';

part 'api_data_state.freezed.dart';

@freezed
class ApiDataState<T> with _$ApiDataState<T> {
  const factory ApiDataState.idle() = ApiDataIdle;

  const factory ApiDataState.loading() = ApiDataLoading;

  const factory ApiDataState.success({T? data, required ApiResponseModel<T?> response}) = ApiDataSuccessModel<T>;

  const factory ApiDataState.error({required AppError? error}) = ApiDataError<T>;
}
