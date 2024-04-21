// ignore_for_file: invalid_annotation_target
import 'package:delivery_challenge/src/data/models/delivery_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_status_model.freezed.dart';
part 'delivery_status_model.g.dart';

@freezed
class DeliveryStatusModel with _$DeliveryStatusModel {
  const factory DeliveryStatusModel({
    @JsonKey(name: 'DeliveryStatusTypes') required final List<DeliveryTypeModel> statues,
  }) = _DeliveryStatusModel;

  factory DeliveryStatusModel.fromJson(Map<String, dynamic> json) => _$DeliveryStatusModelFromJson(json);
}