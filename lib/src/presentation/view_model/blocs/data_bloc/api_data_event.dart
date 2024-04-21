// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'api_data_bloc.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/utils/api_info.dart';

part 'api_data_event.freezed.dart';

@freezed
class ApiDataEvent with _$ApiDataEvent {
  /// Used to get data from type Pagination and if data is List but not Pagination
  const factory ApiDataEvent.index({
    required ApiInfo queryParams,
  }) = ApiIndexData;

  /// Used to get data from type Object [Map]
  const factory ApiDataEvent.general({
    required ApiInfo queryParams,
  }) = ApiGeneralData;
}
