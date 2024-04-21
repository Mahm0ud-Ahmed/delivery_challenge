// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class AppError with _$AppError {
  const factory AppError({
    final int? statusCode,
    final String? statusMessage,
  }) = ErrorModel;

  factory AppError.fromJson(Map<String, dynamic> json) => _$AppErrorFromJson(json);
}
