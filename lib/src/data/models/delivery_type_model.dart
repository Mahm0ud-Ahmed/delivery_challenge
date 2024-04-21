// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_type_model.freezed.dart';
part 'delivery_type_model.g.dart';

@freezed
class DeliveryTypeModel with _$DeliveryTypeModel {
  const factory DeliveryTypeModel({
    @JsonKey(name: 'TYP_NM') required final String title,
    @JsonKey(name: 'TYP_NO') required final String typeNo,
  }) = _DeliveryTypeModel;

  factory DeliveryTypeModel.fromJson(Map<String, dynamic> json) => _$DeliveryTypeModelFromJson(json);
}