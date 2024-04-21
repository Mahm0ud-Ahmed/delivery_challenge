// ignore_for_file: invalid_annotation_target

import 'package:delivery_challenge/src/data/models/bill_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_bills_model.freezed.dart';
part 'delivery_bills_model.g.dart';

@freezed
class DeliveryBillsModel with _$DeliveryBillsModel {
  const factory DeliveryBillsModel({
    @JsonKey(name: 'DeliveryBills') 
    @Default([])
    final List<BillModel>? deliveryBills,
  }) = _DeliveryBillsModel;

  factory DeliveryBillsModel.fromJson(Map<String, dynamic> json) => _$DeliveryBillsModelFromJson(json);
}