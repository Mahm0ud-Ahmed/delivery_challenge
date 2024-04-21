// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, constructor: '_')
class ApiResponseModel<T> {
  @JsonKey(name: 'Result')
  final Map<String, dynamic> result;
  @JsonKey(name: 'Data')
  final T? data;

  const ApiResponseModel._({
    required this.result,
    required this.data,
  });

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    if (json['Data'] == null) {
      return ApiResponseModel._(
        result: json['Result'],
        data: null,
      );
    }
    return _$ApiResponseModelFromJson<T>(json, fromJsonT);
  }

  // Map<String, dynamic> toMap() => _$ArticleModelToJson(this);

  @override
  String toString() => 'ApiResponseModel(status: $result, data: $data)';

  ApiResponseModel<M> copyWithChangeType<M>({
    Map<String, dynamic>? result,
    M? data,
  }) {
    return ApiResponseModel<M>._(
      result: result ?? this.result,
      data: data ?? this.data as M,
    );
  }

  ApiResponseModel<T> copyWith({
    Map<String, dynamic>? Result,
    T? Data,
  }) {
    return ApiResponseModel<T>._(
      result: Result ?? this.result,
      data: Data ?? this.data,
    );
  }
}
